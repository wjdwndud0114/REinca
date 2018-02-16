.class Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/cores/c/a;

    move-result-object v0

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/activity/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/activity/c/d;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/activity/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/c/d;->start()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
