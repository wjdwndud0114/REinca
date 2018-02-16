.class Lcom/unity3d/ads/video/VideoPlayerView$4;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/video/VideoPlayerView;->prepare(Ljava/lang/String;FI)Z
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
    .line 94
    iput-object p1, p0, Lcom/unity3d/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v6, 0x1

    .line 97
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopPrepareTimer()V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    # setter for: Lcom/unity3d/ads/video/VideoPlayerView;->_mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, p1}, Lcom/unity3d/ads/video/VideoPlayerView;->access$102(Lcom/unity3d/ads/video/VideoPlayerView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 103
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->GENERIC_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    # getter for: Lcom/unity3d/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/unity3d/ads/video/VideoPlayerView;->access$000(Lcom/unity3d/ads/video/VideoPlayerView;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    .line 105
    return v6
.end method
