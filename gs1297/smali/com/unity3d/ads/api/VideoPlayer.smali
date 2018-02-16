.class public Lcom/unity3d/ads/api/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# static fields
.field private static _videoPlayerView:Lcom/unity3d/ads/video/VideoPlayerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentPosition(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/video/VideoPlayerView;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getProgressEventInterval(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/video/VideoPlayerView;->getProgressEventInterval()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/unity3d/ads/api/VideoPlayer;->_videoPlayerView:Lcom/unity3d/ads/video/VideoPlayerView;

    return-object v0
.end method

.method public static getVolume(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/video/VideoPlayerView;->getVolume()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static pause(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 103
    const-string v0, "Pausing current video"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/unity3d/ads/api/VideoPlayer$4;

    invoke-direct {v0}, Lcom/unity3d/ads/api/VideoPlayer$4;-><init>()V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static play(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v0, "Starting playback of prepared video"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/unity3d/ads/api/VideoPlayer$3;

    invoke-direct {v0}, Lcom/unity3d/ads/api/VideoPlayer$3;-><init>()V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static prepare(Ljava/lang/String;Ljava/lang/Double;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "initialVolume"    # Ljava/lang/Double;
    .param p2, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/unity3d/ads/api/VideoPlayer;->prepare(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 57
    return-void
.end method

.method public static prepare(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "initialVolume"    # Ljava/lang/Double;
    .param p2, "timeout"    # Ljava/lang/Integer;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preparing video for playback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/unity3d/ads/api/VideoPlayer$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/ads/api/VideoPlayer$2;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 72
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p3, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static seekTo(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "time"    # Ljava/lang/Integer;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Seeking video to time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/unity3d/ads/api/VideoPlayer$6;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/VideoPlayer$6;-><init>(Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setInfoListenerEnabled(ZLcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 5
    .param p0, "enabled"    # Z
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    .line 199
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/video/VideoPlayerView;->setInfoListenerEnabled(Z)V

    .line 201
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/video/VideoPlayerEvent;->INFO:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v1, v0, v4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 210
    :goto_0
    return-void

    .line 204
    :cond_0
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 208
    :cond_1
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->API_LEVEL_ERROR:Lcom/unity3d/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setProgressEventInterval(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "milliseconds"    # Ljava/lang/Integer;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 27
    new-instance v0, Lcom/unity3d/ads/api/VideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/VideoPlayer$1;-><init>(Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setVideoPlayerView(Lcom/unity3d/ads/video/VideoPlayerView;)V
    .locals 0
    .param p0, "videoPlayerView"    # Lcom/unity3d/ads/video/VideoPlayerView;

    .prologue
    .line 18
    sput-object p0, Lcom/unity3d/ads/api/VideoPlayer;->_videoPlayerView:Lcom/unity3d/ads/video/VideoPlayerView;

    .line 19
    return-void
.end method

.method public static setVolume(Ljava/lang/Double;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "volume"    # Ljava/lang/Double;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting video volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/video/VideoPlayerView;->setVolume(Ljava/lang/Float;)V

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static stop(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 124
    const-string v0, "Stopping current video"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/unity3d/ads/api/VideoPlayer$5;

    invoke-direct {v0}, Lcom/unity3d/ads/api/VideoPlayer$5;-><init>()V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method
