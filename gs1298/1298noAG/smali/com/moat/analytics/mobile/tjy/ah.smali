.class Lcom/moat/analytics/mobile/tjy/ah;
.super Lcom/moat/analytics/mobile/tjy/i;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/NativeVideoTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/tjy/i;-><init>(Ljava/lang/String;Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .locals 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ah;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "width"

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "height"

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duration"

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public synthetic a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z
    .locals 1

    check-cast p2, Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/tjy/ah;->trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public changeTargetView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/tjy/i;->changeTargetView(Landroid/view/View;)V

    return-void
.end method

.method protected f()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ah;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected g()Z
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ah;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected h()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ah;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z
    .locals 1

    if-nez p2, :cond_0

    const-string v0, "Null player instance. Not tracking."

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/tjy/ah;->a(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/tjy/i;->a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "Playback has already completed. Not tracking."

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/tjy/ah;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
