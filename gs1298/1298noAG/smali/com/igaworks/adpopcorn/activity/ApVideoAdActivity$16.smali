.class Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->j(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ApVideoAdActivity"

    const-string v2, "onCompletion Already participated"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/activity/c/d;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/d;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCompletion video ad type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->l(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->l(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->showProgressDialog(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    goto :goto_1
.end method
