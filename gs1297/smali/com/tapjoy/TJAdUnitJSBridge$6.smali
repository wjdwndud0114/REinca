.class final Lcom/tapjoy/TJAdUnitJSBridge$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->displayRichMedia(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/16 v5, 0x64

    const/4 v1, 0x0

    .line 438
    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->a:Lorg/json/JSONObject;

    const-string v2, "html"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->c(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->c(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->c(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v3}, Lcom/tapjoy/TJAdUnitJSBridge;->c(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 458
    :cond_0
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v3}, Lcom/tapjoy/TJAdUnitJSBridge;->d(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/tapjoy/mraid/view/MraidView;-><init>(Landroid/content/Context;)V

    .line 459
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v3}, Lcom/tapjoy/TJAdUnitJSBridge;->e(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 460
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 461
    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {v0, v3}, Lcom/tapjoy/mraid/view/MraidView;->setPlacementType(Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;)V

    .line 464
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v4, 0x280

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 465
    invoke-virtual {v0, v3}, Lcom/tapjoy/mraid/view/MraidView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    invoke-virtual {v0, v5}, Lcom/tapjoy/mraid/view/MraidView;->setInitialScale(I)V

    .line 471
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tapjoy/mraid/view/MraidView;->setBackgroundColor(I)V

    .line 472
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v1}, Lcom/tapjoy/TJAdUnitJSBridge;->d(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 476
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 477
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyUtil;->scaleDisplayAd(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/view/View;)Landroid/view/View;

    .line 479
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->d(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnitJSBridge;->c(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    int-to-double v6, v1

    const-wide/high16 v8, 0x4084000000000000L    # 640.0

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v3, v1, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    return-void

    .line 446
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    goto/16 :goto_0
.end method
