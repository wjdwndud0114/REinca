.class final Lcom/unity3d/ads/api/VideoPlayer$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/VideoPlayer;->setProgressEventInterval(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$milliseconds:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/unity3d/ads/api/VideoPlayer$1;->val$milliseconds:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/api/VideoPlayer$1;->val$milliseconds:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/video/VideoPlayerView;->setProgressEventInterval(I)V

    .line 33
    :cond_0
    return-void
.end method
