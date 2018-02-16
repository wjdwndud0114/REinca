.class public interface abstract Lcom/moat/analytics/mobile/tjy/NativeVideoTracker;
.super Ljava/lang/Object;


# virtual methods
.method public abstract changeTargetView(Landroid/view/View;)V
.end method

.method public abstract dispatchEvent(Lcom/moat/analytics/mobile/tjy/MoatAdEvent;)V
.end method

.method public abstract dispatchEvent(Ljava/util/Map;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setDebug(Z)V
.end method

.method public abstract trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z
.end method
