.class public Lcom/tapjoy/mraid/controller/Display;
.super Lcom/tapjoy/mraid/controller/Abstract;
.source "SourceFile"


# instance fields
.field private c:Landroid/view/WindowManager;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

.field private h:F

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 2
    .param p1, "adView"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/controller/Abstract;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/mraid/controller/Display;->d:Z

    .line 34
    iput v1, p0, Lcom/tapjoy/mraid/controller/Display;->e:I

    .line 35
    iput v1, p0, Lcom/tapjoy/mraid/controller/Display;->f:I

    .line 51
    iput-object p2, p0, Lcom/tapjoy/mraid/controller/Display;->i:Landroid/content/Context;

    .line 52
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 53
    const-string v0, "window"

    .line 54
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->c:Landroid/view/WindowManager;

    .line 55
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/tapjoy/mraid/controller/Display;->h:F

    .line 58
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 276
    const-string v0, "MRAID Display"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->close()V

    .line 278
    return-void
.end method

.method public dimensions()Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ \"top\" :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/controller/Display;->h:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"left\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    .line 305
    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/controller/Display;->h:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"bottom\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    .line 306
    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/controller/Display;->h:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"right\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    .line 308
    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/controller/Display;->h:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/tapjoy/mraid/controller/Display;->d:Z

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tapjoy/mraid/controller/Display;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/mraid/controller/Display;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/controller/Display;->getScreenSize()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    .line 318
    const/4 v0, -0x1

    .line 319
    packed-switch v1, :pswitch_data_0

    .line 336
    :goto_0
    const-string v1, "MRAID Display"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOrientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return v0

    .line 321
    :pswitch_0
    const/4 v0, 0x0

    .line 322
    goto :goto_0

    .line 325
    :pswitch_1
    const/16 v0, 0x5a

    .line 326
    goto :goto_0

    .line 329
    :pswitch_2
    const/16 v0, 0xb4

    .line 330
    goto :goto_0

    .line 333
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 4

    .prologue
    .line 346
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->c:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{ width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    float-to-double v2, v0

    .line 351
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->getSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logHTML(Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 411
    const-string v0, "MRAID Display"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireChangeEvent({ orientation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    const-string v1, "MRAID Display"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "back"    # Z
    .param p3, "forward"    # Z
    .param p4, "refresh"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 75
    const-string v0, "MRAID Display"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " back: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forward: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    const-string v0, "MRAID Display"

    const-string v1, "invalid URL"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 88
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 94
    const-string v1, "Select"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 95
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    const-string v1, "Invalid url"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/mraid/view/MraidView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/mraid/view/MraidView;->open(Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fullscreen"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 126
    const-string v0, "MRAID Display"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openMap: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->openMap(Ljava/lang/String;Z)V

    .line 128
    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "autoPlay"    # Z
    .param p3, "controls"    # Z
    .param p4, "loop"    # Z
    .param p5, "position"    # Z
    .param p6, "startStyle"    # Ljava/lang/String;
    .param p7, "stopStyle"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 166
    const-string v0, "MRAID Display"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playAudio: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " autoPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " controls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stopStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    const-string v1, "Invalid url"

    const-string v2, "playAudio"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/mraid/view/MraidView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/mraid/view/MraidView;->playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;ZZZZ[ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "audioMuted"    # Z
    .param p3, "autoPlay"    # Z
    .param p4, "controls"    # Z
    .param p5, "loop"    # Z
    .param p6, "position"    # [I
    .param p7, "startStyle"    # Ljava/lang/String;
    .param p8, "stopStyle"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 205
    const-string v2, "MRAID Display"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "playVideo: url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " audioMuted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " autoPlay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " controls: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, p6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, p6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, p6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget v4, p6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startStyle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stopStyle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v8, 0x0

    .line 212
    const/4 v2, 0x0

    aget v2, p6, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 213
    new-instance v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    invoke-direct {v8}, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;-><init>()V

    .line 214
    const/4 v2, 0x0

    aget v2, p6, v2

    iput v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    .line 215
    const/4 v2, 0x1

    aget v2, p6, v2

    iput v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    .line 216
    const/4 v2, 0x2

    aget v2, p6, v2

    iput v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    .line 217
    const/4 v2, 0x3

    aget v2, p6, v2

    iput v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    .line 1252
    iget v2, p0, Lcom/tapjoy/mraid/controller/Display;->h:F

    iget v3, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    .line 1253
    iget v2, p0, Lcom/tapjoy/mraid/controller/Display;->h:F

    iget v3, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    .line 1254
    iget v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tapjoy/mraid/controller/Display;->h:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    .line 1255
    iget v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tapjoy/mraid/controller/Display;->h:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    .line 1256
    iget v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    if-gez v2, :cond_0

    .line 1257
    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v2

    iput v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    .line 1258
    :cond_0
    iget v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    if-gez v2, :cond_1

    .line 1259
    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v2

    iput v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    .line 1260
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1261
    iget-object v3, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v3, v2}, Lcom/tapjoy/mraid/view/MraidView;->getLocationInWindow([I)V

    .line 1262
    iget v3, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    if-gez v3, :cond_2

    .line 1263
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    .line 1264
    :cond_2
    iget v3, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    if-gez v3, :cond_3

    .line 1266
    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x0

    iput v2, v8, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    .line 222
    :cond_3
    const/4 v2, 0x0

    .line 224
    const-string v3, "android.resource"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 226
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 227
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 228
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 230
    :try_start_0
    const-class v4, Landroid/R$raw;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 235
    :goto_0
    iget-object v3, p0, Lcom/tapjoy/mraid/controller/Display;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "android.resource://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 240
    :cond_4
    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v9, "fullscreen"

    const-string v10, "exit"

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/tapjoy/mraid/view/MraidView;->playVideo(Ljava/lang/String;ZZZZLcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void

    .line 233
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMaxSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 385
    const-string v0, "MRAID Display"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMaxSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/controller/Display;->d:Z

    .line 387
    iput p1, p0, Lcom/tapjoy/mraid/controller/Display;->e:I

    .line 388
    iput p2, p0, Lcom/tapjoy/mraid/controller/Display;->f:I

    .line 389
    return-void
.end method

.method public setOrientationProperties(ZLjava/lang/String;)V
    .locals 3
    .param p1, "allowOrientationChange"    # Z
    .param p2, "forceOrientation"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 140
    const-string v0, "MRAID Display"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setOrientationProperties: allowOrientationChange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forceOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->setOrientationProperties(ZLjava/lang/String;)V

    .line 142
    return-void
.end method

.method public show()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 285
    const-string v0, "MRAID Display"

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->show()V

    .line 287
    return-void
.end method

.method public startConfigurationListener()V
    .locals 4

    .prologue
    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->g:Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;-><init>(Lcom/tapjoy/mraid/controller/Display;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->g:Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->g:Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/tapjoy/mraid/controller/Display;->stopConfigurationListener()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->g:Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

    .line 423
    return-void
.end method

.method public stopConfigurationListener()V
    .locals 2

    .prologue
    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->g:Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public useCustomClose(Z)V
    .locals 1
    .param p1, "input"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 112
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->removeCloseImageButton()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->showCloseImageButton()V

    goto :goto_0
.end method
