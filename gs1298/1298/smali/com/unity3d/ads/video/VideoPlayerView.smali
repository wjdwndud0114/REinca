.class public Lcom/unity3d/ads/video/VideoPlayerView;
.super Landroid/widget/VideoView;
.source "VideoPlayerView.java"


# instance fields
.field private _infoListenerEnabled:Z

.field private _mediaPlayer:Landroid/media/MediaPlayer;

.field private _prepareTimer:Ljava/util/Timer;

.field private _progressEventInterval:I

.field private _videoTimer:Ljava/util/Timer;

.field private _videoUrl:Ljava/lang/String;

.field private _volume:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 18
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_progressEventInterval:I

    .line 19
    iput-object v1, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_mediaPlayer:Landroid/media/MediaPlayer;

    .line 20
    iput-object v1, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_volume:Ljava/lang/Float;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_infoListenerEnabled:Z

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/ads/video/VideoPlayerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/video/VideoPlayerView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/unity3d/ads/video/VideoPlayerView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/video/VideoPlayerView;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private startPrepareTimer(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 55
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_prepareTimer:Ljava/util/Timer;

    .line 56
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_prepareTimer:Ljava/util/Timer;

    new-instance v1, Lcom/unity3d/ads/video/VideoPlayerView$2;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/video/VideoPlayerView$2;-><init>(Lcom/unity3d/ads/video/VideoPlayerView;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 65
    return-void
.end method

.method private startVideoProgressTimer()V
    .locals 6

    .prologue
    .line 28
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    .line 29
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    new-instance v1, Lcom/unity3d/ads/video/VideoPlayerView$1;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/video/VideoPlayerView$1;-><init>(Lcom/unity3d/ads/video/VideoPlayerView;)V

    iget v2, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_progressEventInterval:I

    int-to-long v2, v2

    iget v4, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_progressEventInterval:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 44
    return-void
.end method


# virtual methods
.method public getProgressEventInterval()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_progressEventInterval:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_volume:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 168
    :try_start_0
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    invoke-virtual {p0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    .line 177
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/video/VideoPlayerEvent;->PAUSE:Lcom/unity3d/ads/video/VideoPlayerEvent;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 178
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/video/VideoPlayerEvent;->PAUSE_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 172
    const-string v1, "Error pausing video"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public play()V
    .locals 6

    .prologue
    .line 128
    invoke-static {}, Lcom/unity3d/ads/log/DeviceLog;->entered()V

    .line 130
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerView$5;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/video/VideoPlayerView$5;-><init>(Lcom/unity3d/ads/video/VideoPlayerView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/video/VideoPlayerView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/unity3d/ads/video/VideoPlayerView;->start()V

    .line 143
    invoke-virtual {p0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    .line 144
    invoke-direct {p0}, Lcom/unity3d/ads/video/VideoPlayerView;->startVideoProgressTimer()V

    .line 146
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->PLAY:Lcom/unity3d/ads/video/VideoPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public prepare(Ljava/lang/String;FI)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "initialVolume"    # F
    .param p3, "timeout"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-static {}, Lcom/unity3d/ads/log/DeviceLog;->entered()V

    .line 78
    iput-object p1, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    .line 80
    new-instance v3, Lcom/unity3d/ads/video/VideoPlayerView$3;

    invoke-direct {v3, p0, p2}, Lcom/unity3d/ads/video/VideoPlayerView$3;-><init>(Lcom/unity3d/ads/video/VideoPlayerView;F)V

    invoke-virtual {p0, v3}, Lcom/unity3d/ads/video/VideoPlayerView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 94
    new-instance v3, Lcom/unity3d/ads/video/VideoPlayerView$4;

    invoke-direct {v3, p0}, Lcom/unity3d/ads/video/VideoPlayerView$4;-><init>(Lcom/unity3d/ads/video/VideoPlayerView;)V

    invoke-virtual {p0, v3}, Lcom/unity3d/ads/video/VideoPlayerView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 109
    iget-boolean v3, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_infoListenerEnabled:Z

    invoke-virtual {p0, v3}, Lcom/unity3d/ads/video/VideoPlayerView;->setInfoListenerEnabled(Z)V

    .line 111
    if-lez p3, :cond_0

    .line 112
    int-to-long v4, p3

    invoke-direct {p0, v4, v5}, Lcom/unity3d/ads/video/VideoPlayerView;->startPrepareTimer(J)V

    .line 116
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/unity3d/ads/video/VideoPlayerView;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/ads/video/VideoPlayerEvent;->PREPARE_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v6, v1, v2

    invoke-virtual {v3, v4, v5, v1}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error preparing video: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v1, v2

    .line 121
    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 7
    .param p1, "msec"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 183
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/VideoView;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/video/VideoPlayerEvent;->SEEKTO:Lcom/unity3d/ads/video/VideoPlayerEvent;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 192
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/video/VideoPlayerEvent;->SEEKTO_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 187
    const-string v1, "Error seeking video"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setInfoListenerEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_infoListenerEnabled:Z

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 152
    iget-boolean v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_infoListenerEnabled:Z

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerView$6;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/video/VideoPlayerView$6;-><init>(Lcom/unity3d/ads/video/VideoPlayerView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/video/VideoPlayerView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/video/VideoPlayerView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    goto :goto_0
.end method

.method public setProgressEventInterval(I)V
    .locals 1
    .param p1, "ms"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_progressEventInterval:I

    .line 217
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    .line 219
    invoke-direct {p0}, Lcom/unity3d/ads/video/VideoPlayerView;->startVideoProgressTimer()V

    .line 221
    :cond_0
    return-void
.end method

.method public setVolume(Ljava/lang/Float;)V
    .locals 4
    .param p1, "volume"    # Ljava/lang/Float;

    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 207
    iput-object p1, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_volume:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaPlayer generic error"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopPlayback()V

    .line 196
    invoke-virtual {p0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    .line 197
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->STOP:Lcom/unity3d/ads/video/VideoPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method public stopPrepareTimer()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_prepareTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_prepareTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 70
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_prepareTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_prepareTimer:Ljava/util/Timer;

    .line 73
    :cond_0
    return-void
.end method

.method public stopVideoProgressTimer()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 49
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    .line 52
    :cond_0
    return-void
.end method
