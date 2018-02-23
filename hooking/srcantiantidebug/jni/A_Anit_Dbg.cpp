#include <jni.h>
#include <android/log.h>
#include <stdio.h>
#include <unistd.h>
#include <dlfcn.h>
#include <sys/mman.h>
#include <sys/ptrace.h>
#include <fcntl.h>
#include <sys/inotify.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/select.h>
#include <termios.h>
#include <pthread.h>
#include <sys/epoll.h>
#include <stdlib.h>
#include <assert.h>
#include <signal.h>
#include <sys/time.h>

#define LOG_TAG "LIBHOOK"
#define LOGD(fmt, args...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, fmt, ##args)

enum MethodType {
	METHOD_UNKNOWN  = 0,
	METHOD_DIRECT,      // <init>, private
	METHOD_STATIC,      // static
	METHOD_VIRTUAL,     // virtual, super
	METHOD_INTERFACE    // interface
};

void* h_libstubso = NULL;

typedef void (*_MSHookFunction)(void *symbol, void *replace, void **result);

typedef FILE* (*_fopen)(const char * path,const char * mode);
typedef int (*_ptrace)(int request, int pid, int addr, int data);
typedef int (*_open)(const char *pathname, int oflag, mode_t mode);
typedef int (*_inotify_add_watch)(int fd, const char *pathname, uint32_t mask);
typedef int (*_pipe)(int filedes[2]);
typedef pid_t (*_fork)(void);
typedef int (*_kill)(pid_t pid, int signo);
typedef int (*_raise)(int sig);
typedef void (*__exit)(int status);


typedef void* (*proto_dlopen)(const char* pathname, int mode);


_fopen old_fopen = NULL;
_ptrace old_ptrace = NULL;
_open old_open = NULL;
_inotify_add_watch old_inotify_add_watch = NULL;
_fork old_fork = NULL;
_pipe old_pipe = NULL;
_kill old_kill = NULL;
_raise old_raise = NULL;
__exit old_exit = NULL;
proto_dlopen old_dlopen = NULL;





_MSHookFunction g_MSHookFunction = NULL;
void* g_libstubso = NULL;





void* new_dlopen(const char* filename, int myflags) {
	LOGD("new_dlopen name :%s", filename);
	//test
	if (strstr(filename, "libcompatible.so"))
	{
		sleep(50);
	}
	LOGD("done waiting :%s", filename);

	return old_dlopen(filename, myflags);

}

void new_exit(int status)
{
	LOGD("exit %d",status);
	return old_exit(status);
}
int new_raise(int sig)
{
	LOGD("raise %d",sig);
	return old_raise(sig);
}
int new_kill(pid_t pid, int signo)
{
	LOGD("Kill Pid=%d sig=%d",pid, signo);
	return 0;
	//return old_kill(pid, signo);
}

pid_t new_fork(void)
{
	
	pid_t pid;
	int ret;
	char so_path[256] = {"/data/local/tmp/libhook.so"};
	
	pid = old_fork();
	LOGD("[*] fork pid : %d\n", pid);
	if (pid < 0)
	{
		LOGD("[*] fork pid : error\n");
	}else if (0 == pid)
	{
		LOGD("[*] child fork pid : %d\n", pid);
		/*LOGD("child fork--->setenv ----SO-->%s",so_path);
		setenv("LD_PRELOAD",so_path, 1);//Set environment variables
		ret = strcmp(so_path,so_path);
		LOGD("strcmp----ret-->%d",ret);*/
	}
	return pid;
}



int new_open(char *pathname, int oflag, mode_t mode)
{
	char* anit  = "stat";
	char* tmp = "";
	if (NULL == pathname)
	{
		goto exitret;
	}

	//LOGD("new_open..%s", pathname);
	if(strstr(pathname, anit) != NULL)
	{
		return -1;
	}
exitret:
	return old_open(pathname, oflag, mode);

}

int new_ptrace(int request, int pid, int addr, int data){
	//LOGD("new_ptrace..");
	return 0;
	if(request == PTRACE_TRACEME){
		LOGD("[*] Traced-anti-PTRACE_TRACEME!");
	}else if(request == PTRACE_ATTACH){
		if(pid == getppid()){
			LOGD("[*] Detect Traced-anti-ptrace attach parent! pid=%d ppid=%d",pid, getppid());
		}
	}
	return old_ptrace(request, pid, addr, data);
}


int new_inotify_add_watch(int fd, const char *pathname, uint32_t mask){
	unsigned lr;
	LOGD("[*] Traced-inotify_add_watch Call function: 0x%x\n", lr);
	LOGD("[*] Traced-inotify_add_watch --> %s, 0x%x", pathname, mask);
	return old_inotify_add_watch(fd, pathname, mask);
}



void* get_module_base(pid_t pid, const char* module_name)    
{    
	FILE *fp;    
	long addr = 0;    
	char *pch;    
	char filename[32];    
	char line[1024];    

	if (pid < 0) {    
		/* self process */    
		snprintf(filename, sizeof(filename), "/proc/self/maps", pid);    
	} else {    
		snprintf(filename, sizeof(filename), "/proc/%d/maps", pid);    
	}    

	fp = fopen(filename, "r");    

	if (fp != NULL) {    
		while (fgets(line, sizeof(line), fp)) {    
			if (strstr(line, module_name)) {    
				pch = strtok( line, "-" );    
				addr = strtoul( pch, NULL, 16 );    

				if (addr == 0x8000)    
					addr = 0;    

				break;    
			}    
		}    

		fclose(fp) ;    
	}    

	return (void *)addr;    
} 

void *libmgp_module_base = NULL;


//Used to get the address
void* get_remote_addr(int target_pid, const char* module_name, void* local_addr)
{
	void* local_handle, *remote_handle;

	local_handle = get_module_base(-1, module_name);
	remote_handle = get_module_base(target_pid, module_name);

	LOGD("[+] get_remote_addr: local[%x], remote[%x]\n", local_handle, remote_handle);

	void * ret_addr = (void *)((uint32_t)local_addr + (uint32_t)remote_handle - (uint32_t)local_handle);

	return ret_addr;
}



bool hookSoFunc()
{
	static bool hook_Tag = false;
	bool ret;
	pid_t pid;
	_fopen		func_fopen = 0;
	_open		func_open = 0;
	_ptrace		func_ptrace = 0;
	_fork		func_fork =  0;
	_pipe		func_pipe = 0;
	_kill		func_kill = 0;
	_raise		func_raise = 0;
	__exit		func_exit = 0;
	proto_dlopen func_dlopen = 0;


	_MSHookFunction MSHookFunction = NULL;

	//
	void *handle_substrate = dlopen("/data/local/tmp/libsubstrate.so", RTLD_NOW);
	if (NULL == handle_substrate)
	{
		LOGD("%s\n", "dlopen libsubstrate_x86.so error!");
		return false;
	}
	MSHookFunction = (_MSHookFunction)dlsym(handle_substrate, "MSHookFunction");
	if (NULL == MSHookFunction)
	{
		LOGD("%s\n", "dlsym MSHookFunction error!");
		return false;
	}
	g_MSHookFunction = MSHookFunction;

	//hook dlopen
	func_dlopen = (proto_dlopen)get_remote_addr(getpid(), "/system/bin/linker", (void *)dlopen);
	if (NULL == func_dlopen)
	{
		LOGD("%s\n", "get_remote_addr func_dlopen error!");
	}


	//
	void* handle_libc = dlopen("libc.so", RTLD_NOW);
	if (handle_libc == NULL)
	{
		LOGD("%s\n", "dlopen libc.so error!");
		//return false;
	}
	func_fork = (_fork)dlsym(handle_libc, "fork");
	if (NULL == func_fork)
	{
		LOGD("%s\n", "dlsym func_fork error!");
		//return false;
	}

	func_kill = (_kill)dlsym(handle_libc, "kill");
	if (NULL == func_kill)
	{
		LOGD("%s\n", "dlsym func_kill error!");
		//return false;
	}


	func_open = (_open)dlsym(handle_libc, "open");
	if (NULL == func_open)
	{
		LOGD("%s\n", "dlsym func_open error!");
		//return false;
	}
	func_ptrace = (_ptrace)dlsym(handle_libc, "ptrace");
	if (NULL == func_ptrace)
	{
		LOGD("%s\n", "dlsym func_ptrace error!");
		//return false;
	}

	
	old_kill = func_kill;
	old_fork = func_fork;
	old_ptrace = func_ptrace;
	old_dlopen = func_dlopen;

	old_open = func_open;



	LOGD("MSHookFunction ! START..............");
	if (NULL != func_dlopen)
	{
		LOGD("hook....new_dlopen");
		MSHookFunction((void*)func_dlopen, (void*)&new_dlopen, (void**)&old_dlopen);//
	}

	if (NULL != func_fork)
	{
		LOGD("hook....func_fork");
		MSHookFunction((void*)func_fork, (void*)&new_fork, (void**)&old_fork);
	}
	if (NULL != func_ptrace)
	{
		LOGD("hook....func_ptrace");
		MSHookFunction((void*)func_ptrace, (void*)&new_ptrace, (void**)&old_ptrace);
	}
	if (NULL != func_kill)
	{
		LOGD("hook....func_kill");
		MSHookFunction((void*)func_kill, (void*)&new_kill, (void**)&old_kill);
	}

	if (NULL != func_open)
	{
		LOGD("hook....func_open");
		MSHookFunction((void*)func_open, (void*)&new_open,(void**) &old_open);//Ìæ»»Ãû°ü
	}

	return true;

}


extern "C"  jint JNI_OnLoad(JavaVM* vm, void* reserved) {
	JNIEnv* env = NULL;
	jint result = JNI_VERSION_1_4;
	int ret;
	pthread_t thread;
	
	LOGD("JNI_OnLoad.....start");

	if (vm->GetEnv((void**) &env, JNI_VERSION_1_4) != JNI_OK) {
		LOGD("ERROR: GetEnv failed\n");
		goto bail;
	}
	assert(env != NULL);

	// HOOK º¯Êý
	if ( !hookSoFunc() )
	{
		LOGD("JNI_OnLoad error........");
		return JNI_VERSION_1_4;
	}
	result = JNI_VERSION_1_4;

bail:
	LOGD("JNI_OnLoad end....");
	return result;
}