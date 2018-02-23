.class public Lcom/igaworks/impl/InternalAction;
.super Ljava/lang/Object;
.source "InternalAction.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_TIME:J = 0x1L

.field private static final MAX_POOL_SIZE:I

.field private static final MAX_QUEUE_SIZE:I = 0x80

.field public static final NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static singleton:Lcom/igaworks/impl/InternalAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/igaworks/impl/InternalAction;->CPU_COUNT:I

    .line 52
    sget v0, Lcom/igaworks/impl/InternalAction;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igaworks/impl/InternalAction;->CORE_POOL_SIZE:I

    .line 53
    sget v0, Lcom/igaworks/impl/InternalAction;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igaworks/impl/InternalAction;->MAX_POOL_SIZE:I

    .line 57
    new-instance v0, Lcom/igaworks/impl/InternalAction$1;

    invoke-direct {v0}, Lcom/igaworks/impl/InternalAction$1;-><init>()V

    sput-object v0, Lcom/igaworks/impl/InternalAction;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 76
    sget v0, Lcom/igaworks/impl/InternalAction;->CORE_POOL_SIZE:I

    sget v1, Lcom/igaworks/impl/InternalAction;->MAX_POOL_SIZE:I

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v6, Lcom/igaworks/impl/InternalAction;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static/range {v0 .. v6}, Lcom/igaworks/impl/InternalAction;->newThreadPoolExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/igaworks/impl/InternalAction;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/igaworks/impl/InternalAction;->singleton:Lcom/igaworks/impl/InternalAction;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/igaworks/impl/InternalAction;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/igaworks/impl/InternalAction;->singleton:Lcom/igaworks/impl/InternalAction;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/igaworks/impl/InternalAction;

    invoke-direct {v0}, Lcom/igaworks/impl/InternalAction;-><init>()V

    sput-object v0, Lcom/igaworks/impl/InternalAction;->singleton:Lcom/igaworks/impl/InternalAction;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/igaworks/impl/InternalAction;->singleton:Lcom/igaworks/impl/InternalAction;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static newThreadPoolExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10
    .param p0, "corePoolSize"    # I
    .param p1, "maxPoolSize"    # I
    .param p2, "keepAliveTime"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")",
            "Ljava/util/concurrent/ThreadPoolExecutor;"
        }
    .end annotation

    .prologue
    .line 68
    .local p5, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 70
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 71
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 73
    :cond_0
    return-object v1
.end method


# virtual methods
.method public referrerCallForAdbrix(Landroid/content/Context;ZLcom/igaworks/core/RequestParameter;Lcom/igaworks/net/CommonHttpManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isTest"    # Z
    .param p3, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p4, "httpManager"    # Lcom/igaworks/net/CommonHttpManager;

    .prologue
    .line 131
    invoke-static {p1}, Lcom/igaworks/util/CommonHelper;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 166
    :goto_0
    return-void

    .line 135
    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->delay(J)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v6

    new-instance v0, Lcom/igaworks/impl/InternalAction$5;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/impl/InternalAction$5;-><init>(Lcom/igaworks/impl/InternalAction;ZLandroid/content/Context;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/net/CommonHttpManager;)V

    sget-object v1, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v6, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    goto :goto_0
.end method

.method public sendOphanActivities(Landroid/content/Context;ZLcom/igaworks/net/CommonHttpManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isTest"    # Z
    .param p3, "httpManager"    # Lcom/igaworks/net/CommonHttpManager;

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {p1}, Lcom/igaworks/util/CommonHelper;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    .line 124
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v3, Lcom/igaworks/util/bolts_task/Capture;

    invoke-direct {v3, v0}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 91
    .local v3, "activityParam":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/impl/InternalAction$4;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/impl/InternalAction$4;-><init>(Lcom/igaworks/impl/InternalAction;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/impl/InternalAction$3;

    invoke-direct {v1, p0, v3, p1}, Lcom/igaworks/impl/InternalAction$3;-><init>(Lcom/igaworks/impl/InternalAction;Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v6

    new-instance v0, Lcom/igaworks/impl/InternalAction$2;

    move-object v1, p0

    move v2, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/impl/InternalAction$2;-><init>(Lcom/igaworks/impl/InternalAction;ZLcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;Lcom/igaworks/net/CommonHttpManager;)V

    sget-object v1, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 104
    invoke-virtual {v6, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    goto :goto_0
.end method

.method public trackingForAdbrixCall(Landroid/content/Context;ZLcom/igaworks/net/CommonHttpManager;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isTest"    # Z
    .param p3, "httpManager"    # Lcom/igaworks/net/CommonHttpManager;
    .param p4, "group"    # Ljava/lang/String;
    .param p5, "act"    # Ljava/lang/String;
    .param p6, "endSessionParam"    # J

    .prologue
    .line 169
    new-instance v8, Lcom/igaworks/util/bolts_task/Capture;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 171
    .local v8, "activityParam":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/impl/InternalAction$8;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/igaworks/impl/InternalAction$8;-><init>(Lcom/igaworks/impl/InternalAction;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/impl/InternalAction$7;

    invoke-direct {v1, p0, v8, p1}, Lcom/igaworks/impl/InternalAction$7;-><init>(Lcom/igaworks/impl/InternalAction;Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;)V

    .line 175
    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v7

    new-instance v0, Lcom/igaworks/impl/InternalAction$6;

    move-object v1, p0

    move v2, p2

    move-object v3, p5

    move-object v4, v8

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/impl/InternalAction$6;-><init>(Lcom/igaworks/impl/InternalAction;ZLjava/lang/String;Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;Lcom/igaworks/net/CommonHttpManager;)V

    sget-object v1, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 180
    invoke-virtual {v7, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 204
    return-void
.end method
