.class Lcom/unity3d/ads/video/VideoPlayerView$5;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/video/VideoPlayerView;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/video/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/video/VideoPlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/ads/video/VideoPlayerView;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/unity3d/ads/video/VideoPlayerView$5;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView$5;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    # setter for: Lcom/unity3d/ads/video/VideoPlayerView;->_mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, p1}, Lcom/unity3d/ads/video/VideoPlayerView;->access$102(Lcom/unity3d/ads/video/VideoPlayerView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 137
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->COMPLETED:Lcom/unity3d/ads/video/VideoPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/ads/video/VideoPlayerView$5;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    # getter for: Lcom/unity3d/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/unity3d/ads/video/VideoPlayerView;->access$000(Lcom/unity3d/ads/video/VideoPlayerView;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView$5;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    .line 139
    return-void
.end method
