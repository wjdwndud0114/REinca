.class public Lorg/fmod/FMODAudioDevice;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fmod/FMODAudioDevice$a;
    }
.end annotation


# static fields
.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I


# instance fields
.field private volatile a:Ljava/lang/Thread;

.field private volatile b:Z

.field private volatile c:Lorg/fmod/FMODAudioDevice$a;

.field private d:Landroid/media/AudioTrack;

.field private e:Z

.field private f:Ljava/nio/ByteBuffer;

.field private g:[B

.field private volatile h:Lorg/fmod/a;

.field private i:Ljava/lang/Object;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/fmod/FMODAudioDevice;->k:I

    const/4 v0, 0x1

    sput v0, Lorg/fmod/FMODAudioDevice;->l:I

    const/4 v0, 0x2

    sput v0, Lorg/fmod/FMODAudioDevice;->m:I

    const/4 v0, 0x3

    sput v0, Lorg/fmod/FMODAudioDevice;->n:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    iput-boolean v1, p0, Lorg/fmod/FMODAudioDevice;->b:Z

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->c:Lorg/fmod/FMODAudioDevice$a;

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->d:Landroid/media/AudioTrack;

    iput-boolean v1, p0, Lorg/fmod/FMODAudioDevice;->e:Z

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->f:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->g:[B

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->i:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/fmod/FMODAudioDevice;->j:Z

    return-void
.end method

.method static synthetic access$100(Lorg/fmod/FMODAudioDevice;)I
    .locals 1

    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->fmodBlockStreaming()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/fmod/FMODAudioDevice;)I
    .locals 1

    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->fmodUnblockStreaming()I

    move-result v0

    return v0
.end method

.method private declared-synchronized blockStreaming()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fmod/FMODAudioDevice;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->c:Lorg/fmod/FMODAudioDevice$a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/fmod/FMODAudioDevice$a;

    invoke-direct {v0, p0}, Lorg/fmod/FMODAudioDevice$a;-><init>(Lorg/fmod/FMODAudioDevice;)V

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->c:Lorg/fmod/FMODAudioDevice$a;

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->c:Lorg/fmod/FMODAudioDevice$a;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice$a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native fmodBlockStreaming()I
.end method

.method private native fmodGetInfo(I)I
.end method

.method private native fmodInitJni()I
.end method

.method private native fmodProcess(Ljava/nio/ByteBuffer;)I
.end method

.method private native fmodUnblockStreaming()I
.end method

.method private releaseAudioTrack()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v2, p0, Lorg/fmod/FMODAudioDevice;->d:Landroid/media/AudioTrack;

    :cond_1
    iput-object v2, p0, Lorg/fmod/FMODAudioDevice;->f:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lorg/fmod/FMODAudioDevice;->g:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->e:Z

    return-void
.end method

.method private declared-synchronized unblockStreaming()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->c:Lorg/fmod/FMODAudioDevice$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->c:Lorg/fmod/FMODAudioDevice$a;

    invoke-static {v0}, Lorg/fmod/FMODAudioDevice$a;->a(Lorg/fmod/FMODAudioDevice$a;)V

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->c:Lorg/fmod/FMODAudioDevice$a;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Lorg/fmod/FMODAudioDevice$a;->join(J)V

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->c:Lorg/fmod/FMODAudioDevice$a;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice$a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->c:Lorg/fmod/FMODAudioDevice$a;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public audioTrackInitialized()V
    .locals 2

    iget-object v1, p0, Lorg/fmod/FMODAudioDevice;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->j:Z

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->i:Ljava/lang/Object;

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

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fmod/FMODAudioDevice;->stop()V

    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->unblockStreaming()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native fmodProcessMicData(Ljava/nio/ByteBuffer;I)I
.end method

.method public isInitialized()Z
    .locals 1

    sget v0, Lorg/fmod/FMODAudioDevice;->k:I

    invoke-direct {p0, v0}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 10

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x3

    move v7, v1

    :goto_0
    iget-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->b:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/fmod/FMODAudioDevice;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/fmod/FMODAudioDevice;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->e:Z

    if-nez v0, :cond_8

    if-lez v7, :cond_8

    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->releaseAudioTrack()V

    sget v0, Lorg/fmod/FMODAudioDevice;->k:I

    invoke-direct {p0, v0}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v2

    invoke-static {v2, v1, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    and-int/lit8 v5, v0, -0x4

    sget v0, Lorg/fmod/FMODAudioDevice;->l:I

    invoke-direct {p0, v0}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v9

    sget v0, Lorg/fmod/FMODAudioDevice;->m:I

    invoke-direct {p0, v0}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v0

    mul-int v3, v9, v0

    mul-int/lit8 v3, v3, 0x4

    if-le v3, v5, :cond_2

    mul-int/2addr v0, v9

    mul-int/lit8 v5, v0, 0x4

    :cond_2
    new-instance v0, Landroid/media/AudioTrack;

    move v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->d:Landroid/media/AudioTrack;

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v6, :cond_3

    move v0, v6

    :goto_2
    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->e:Z

    iget-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->e:Z

    if-eqz v0, :cond_4

    mul-int/lit8 v0, v9, 0x2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->f:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->g:[B

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    move v0, v1

    :goto_3
    iget-boolean v2, p0, Lorg/fmod/FMODAudioDevice;->e:Z

    if-eqz v2, :cond_7

    sget v2, Lorg/fmod/FMODAudioDevice;->n:I

    invoke-direct {p0, v2}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v2

    if-ne v2, v6, :cond_5

    iget-object v2, p0, Lorg/fmod/FMODAudioDevice;->f:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lorg/fmod/FMODAudioDevice;->fmodProcess(Ljava/nio/ByteBuffer;)I

    iget-object v2, p0, Lorg/fmod/FMODAudioDevice;->f:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/fmod/FMODAudioDevice;->g:[B

    iget-object v5, p0, Lorg/fmod/FMODAudioDevice;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v3, v8, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/fmod/FMODAudioDevice;->d:Landroid/media/AudioTrack;

    iget-object v3, p0, Lorg/fmod/FMODAudioDevice;->g:[B

    iget-object v5, p0, Lorg/fmod/FMODAudioDevice;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v3, v8, v5}, Landroid/media/AudioTrack;->write([BII)I

    iget-object v2, p0, Lorg/fmod/FMODAudioDevice;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v7, v0

    goto/16 :goto_0

    :cond_3
    move v0, v8

    goto :goto_2

    :cond_4
    const-string v0, "FMOD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AudioTrack failed to initialize (status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/fmod/FMODAudioDevice;->d:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->releaseAudioTrack()V

    add-int/lit8 v7, v7, -0x1

    move v0, v7

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->releaseAudioTrack()V

    move v7, v0

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->releaseAudioTrack()V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_7
    move v7, v0

    goto/16 :goto_0

    :cond_8
    move v0, v7

    goto :goto_3
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fmod/FMODAudioDevice;->stop()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "FMODAudioDevice"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->b:Z

    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->fmodInitJni()I

    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->unblockStreaming()V

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->h:Lorg/fmod/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->h:Lorg/fmod/a;

    invoke-virtual {v0}, Lorg/fmod/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startAudioRecord(III)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->h:Lorg/fmod/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/fmod/a;

    invoke-direct {v0, p0, p1, p2}, Lorg/fmod/a;-><init>(Lorg/fmod/FMODAudioDevice;II)V

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->h:Lorg/fmod/a;

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->h:Lorg/fmod/a;

    invoke-virtual {v0}, Lorg/fmod/a;->b()V

    :cond_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->h:Lorg/fmod/a;

    invoke-virtual {v0}, Lorg/fmod/a;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lorg/fmod/FMODAudioDevice;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->blockStreaming()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_6
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->h:Lorg/fmod/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->h:Lorg/fmod/a;

    invoke-virtual {v0}, Lorg/fmod/a;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopAudioRecord()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->h:Lorg/fmod/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->h:Lorg/fmod/a;

    invoke-virtual {v0}, Lorg/fmod/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->h:Lorg/fmod/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
