.class public Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;
.super Landroid/app/Activity;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/igaworks/adpopcorn/cores/d;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "ApOfferWallActivity_NT"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->c:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v0, p0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->e:Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->b:Landroid/content/Context;

    const-string v1, "ApOfferWallActivity_NT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConfigurationChanged landscapeMode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->e:Z

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->setApOfferWallOrientation(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {v0, p1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->onCustomConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/high16 v6, 0x1000000

    const/16 v5, 0x400

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->d:Z

    iput-object p0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->b:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string v0, "app_restart"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->d:Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->b:Landroid/content/Context;

    const-string v1, "ApOfferWallActivity_NT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "savedInstanceState >> app_restart : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "statusbar_height"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "dialogMode"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->c:Lcom/igaworks/adpopcorn/cores/d;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->c:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v0, p0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->e:Z

    new-instance v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->e:Z

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->setApOfferWallOrientation(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->f:Z

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->setDialogMode(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {v0, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->setOfferwallActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {v0, v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->setCustomViewMode(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {v0, v4, v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->initOfferwallLayout(ZZ)V

    :cond_3
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->b:Landroid/content/Context;

    const-string v2, "adpopcorn_sdk_flag"

    const-string v3, "use_flag_show_When_locked_sp"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->c:Lcom/igaworks/adpopcorn/cores/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->c:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->a()V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->c:Lcom/igaworks/adpopcorn/cores/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/d;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->c:Lcom/igaworks/adpopcorn/cores/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/d;->a(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->g:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->resume(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "app_restart"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
