.class final Lcom/tapjoy/TJAdUnitJSBridge$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->startMoatVideoTracker(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->b:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1381
    .line 1382
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->i(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->i(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->b:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v4}, Lcom/tapjoy/TJAdUnitJSBridge;->e(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;->trackVideoAd(Ljava/util/Map;Ljava/lang/Integer;Landroid/view/View;)Z

    move-result v0

    .line 1387
    :goto_0
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->c:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1388
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
