.class public Lcom/tnkfactory/ad/fu;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/media/MediaPlayer$OnCompletionListener;

.field private c:Lcom/tnkfactory/ad/fv;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/fu;->b:Landroid/media/MediaPlayer$OnCompletionListener;

    iput-object v0, p0, Lcom/tnkfactory/ad/fu;->c:Lcom/tnkfactory/ad/fv;

    iput-boolean v2, p0, Lcom/tnkfactory/ad/fu;->d:Z

    iput-object v0, p0, Lcom/tnkfactory/ad/fu;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tnkfactory/ad/fu;->h:Z

    iput-boolean v1, p0, Lcom/tnkfactory/ad/fu;->i:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/tnkfactory/ad/fu;->j:F

    invoke-direct {p0, p1, v2}, Lcom/tnkfactory/ad/fu;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/tnkfactory/ad/fu;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/fu;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    iput-boolean p2, p0, Lcom/tnkfactory/ad/fu;->d:Z

    return-void
.end method

.method private d()V
    .locals 2

    invoke-direct {p0}, Lcom/tnkfactory/ad/fu;->g()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Lcom/tnkfactory/ad/fu;->f()V

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/tnkfactory/ad/fu;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->b:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tnkfactory/ad/fu;->b:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/tnkfactory/ad/fu;->getCurrentVolumn()F

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/fu;->j:F

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tnkfactory/ad/fu;->i:Z

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->e:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->e:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tnkfactory/ad/fu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->c:Lcom/tnkfactory/ad/fv;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->c:Lcom/tnkfactory/ad/fv;

    invoke-interface {v0}, Lcom/tnkfactory/ad/fv;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->e:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v2, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    :try_start_5
    const-string v2, "tnkad"

    const-string v3, "MVPV"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/fu;->f:I

    iput v0, p0, Lcom/tnkfactory/ad/fu;->g:I

    iput-boolean v0, p0, Lcom/tnkfactory/ad/fu;->i:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/fu;->h:Z

    return-void
.end method

.method private getCurrentVolumn()F
    .locals 3

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/tnkfactory/ad/fu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method private h()V
    .locals 3

    invoke-virtual {p0}, Lcom/tnkfactory/ad/fu;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/tnkfactory/ad/fu;->f:I

    iget v2, p0, Lcom/tnkfactory/ad/fu;->g:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-boolean v0, p0, Lcom/tnkfactory/ad/fu;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->c:Lcom/tnkfactory/ad/fv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->c:Lcom/tnkfactory/ad/fv;

    iget-object v1, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/fv;->a_(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/tnkfactory/ad/fu;->j:F

    iget v2, p0, Lcom/tnkfactory/ad/fu;->j:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tnkfactory/ad/fu;->getCurrentVolumn()F

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/fu;->j:F

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/fu;->d:Z

    iget-boolean v0, p0, Lcom/tnkfactory/ad/fu;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tnkfactory/ad/fu;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tnkfactory/ad/fu;->h()V

    :cond_0
    return-void
.end method

.method public getPlayTimeLeft()I
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/tnkfactory/ad/fu;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/fu;->i:Z

    iget-boolean v0, p0, Lcom/tnkfactory/ad/fu;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tnkfactory/ad/fu;->h()V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OVSC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/fu;->h:Z

    iput p2, p0, Lcom/tnkfactory/ad/fu;->f:I

    iput p3, p0, Lcom/tnkfactory/ad/fu;->g:I

    iget-boolean v0, p0, Lcom/tnkfactory/ad/fu;->i:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tnkfactory/ad/fu;->h()V

    goto :goto_0
.end method

.method public setMedieViewListener(Lcom/tnkfactory/ad/fv;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/fu;->c:Lcom/tnkfactory/ad/fv;

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/fu;->b:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/fu;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tnkfactory/ad/fu;->f()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/fu;->d()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/fu;->e()V

    return-void
.end method
