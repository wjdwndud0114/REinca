.class public Lcom/igaworks/adpopcorn/IgawAdpopcorn;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadVideoAd(Landroid/content/Context;Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static openDialogTypeOfferWall(Landroid/content/Context;)V
    .locals 4

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->top:I

    :try_start_0
    invoke-static {p0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/d;->b()Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, p0}, Lcom/igaworks/adpopcorn/cores/d;->d(Landroid/content/Context;)V

    const-string v2, "open_offerwall"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "statusbar_height"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "dialogMode"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static openOfferWall(Landroid/content/Context;)V
    .locals 4

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->top:I

    :try_start_0
    invoke-static {p0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/d;->b()Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, p0}, Lcom/igaworks/adpopcorn/cores/d;->d(Landroid/content/Context;)V

    const-string v2, "open_offerwall"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "statusbar_height"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "dialogMode"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setEventListener(Landroid/content/Context;Lcom/igaworks/adpopcorn/interfaces/IAdPOPcornEventListener;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igaworks/adpopcorn/cores/d;->a(Lcom/igaworks/adpopcorn/interfaces/IAdPOPcornEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setSensorLandscapeEnable(Landroid/content/Context;Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    const-string v1, "adpopcorn_sdk_flag"

    const-string v2, "landscape_sensor"

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setSupportAllOrientation(Landroid/content/Context;Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    const-string v1, "adpopcorn_sdk_flag"

    const-string v2, "allScreenOrientation"

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static showVideoAd(Landroid/content/Context;Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
