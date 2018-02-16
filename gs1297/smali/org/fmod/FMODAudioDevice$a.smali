.class final Lorg/fmod/FMODAudioDevice$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fmod/FMODAudioDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/fmod/FMODAudioDevice;

.field private b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/fmod/FMODAudioDevice;)V
    .locals 1

    iput-object p1, p0, Lorg/fmod/FMODAudioDevice$a;->a:Lorg/fmod/FMODAudioDevice;

    const-string v0, "FMODStreamBlocker"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v1, p0, Lorg/fmod/FMODAudioDevice$a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice$a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lorg/fmod/FMODAudioDevice$a;)V
    .locals 0

    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice$a;->a()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice$a;->a:Lorg/fmod/FMODAudioDevice;

    # invokes: Lorg/fmod/FMODAudioDevice;->fmodBlockStreaming()I
    invoke-static {v0}, Lorg/fmod/FMODAudioDevice;->access$100(Lorg/fmod/FMODAudioDevice;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to block fmod streaming thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/fmod/FMODAudioDevice$a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice$a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice$a;->a:Lorg/fmod/FMODAudioDevice;

    # invokes: Lorg/fmod/FMODAudioDevice;->fmodUnblockStreaming()I
    invoke-static {v0}, Lorg/fmod/FMODAudioDevice;->access$200(Lorg/fmod/FMODAudioDevice;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to unblock fmod streaming thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
