.class public Lcom/moat/analytics/mobile/tjy/bd;
.super Lcom/moat/analytics/mobile/tjy/f;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;


# instance fields
.field private j:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/tjy/f;-><init>(Ljava/lang/String;Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .locals 5

    const/4 v1, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/bd;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    const-string v2, "duration"

    iget-object v4, p0, Lcom/moat/analytics/mobile/tjy/bd;->j:Ljava/lang/Integer;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "width"

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "height"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_0
    move-object v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method protected a(Lcom/moat/analytics/mobile/tjy/MoatAdEvent;)Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p1, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->eventType:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    sget-object v1, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->adPlayhead:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/moat/analytics/mobile/tjy/bd;->j:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/moat/analytics/mobile/tjy/bd;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    iput-object v0, p1, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->eventType:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    :cond_0
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/tjy/f;->a(Lcom/moat/analytics/mobile/tjy/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/tjy/f;->a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic changeTargetView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/tjy/f;->changeTargetView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic dispatchEvent(Lcom/moat/analytics/mobile/tjy/MoatAdEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/tjy/f;->dispatchEvent(Lcom/moat/analytics/mobile/tjy/MoatAdEvent;)V

    return-void
.end method

.method public bridge synthetic dispatchEvent(Ljava/util/Map;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/tjy/f;->dispatchEvent(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic setDebug(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/tjy/f;->setDebug(Z)V

    return-void
.end method

.method public trackVideoAd(Ljava/util/Map;Ljava/lang/Integer;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    const-string v1, "Invalid duration = %d. Please make sure duration is in milliseconds."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/moat/analytics/mobile/tjy/bd;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iput-object p2, p0, Lcom/moat/analytics/mobile/tjy/bd;->j:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-super {p0, p1, v0, p3}, Lcom/moat/analytics/mobile/tjy/f;->a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method
