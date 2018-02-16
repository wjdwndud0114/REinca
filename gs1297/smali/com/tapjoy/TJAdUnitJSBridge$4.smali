.class final Lcom/tapjoy/TJAdUnitJSBridge$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->triggerMoatVideoEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/tjy/MoatAdEvent;

.field final synthetic b:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Lcom/moat/analytics/mobile/tjy/MoatAdEvent;)V
    .locals 0

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->a:Lcom/moat/analytics/mobile/tjy/MoatAdEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->i(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->i(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->a:Lcom/moat/analytics/mobile/tjy/MoatAdEvent;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/tjy/MoatAdEvent;)V

    .line 1430
    :cond_0
    return-void
.end method
