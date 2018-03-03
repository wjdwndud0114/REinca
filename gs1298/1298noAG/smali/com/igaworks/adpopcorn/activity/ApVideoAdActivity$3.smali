.class Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p()V
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

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/activity/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/activity/c/d;->getCurrentPosition()I

    move-result v2

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)I

    move-result v1

    sub-int/2addr v1, v2

    div-int/lit16 v3, v1, 0x3e8

    div-int/lit16 v4, v2, 0x3e8

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)I

    move-result v1

    sub-int/2addr v1, v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v5}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v5}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_0

    if-lez v3, :cond_2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->bringToFront()V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->bringToFront()V

    :goto_0
    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    :cond_0
    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    if-lez v3, :cond_1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/activity/c/d;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v3, v6, v7}, Lcom/igaworks/adpopcorn/activity/c/d;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    if-gtz v1, :cond_7

    :goto_2
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_6

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)I

    move-result v1

    if-lt v4, v1, :cond_5

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;I)V

    :goto_3
    return-void

    :cond_2
    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/activity/c/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/activity/c/d;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v5}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/activity/c/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igaworks/adpopcorn/activity/c/d;->getCurrentPosition()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4
    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    if-lez v3, :cond_1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/activity/c/d;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v3, v6, v7}, Lcom/igaworks/adpopcorn/activity/c/d;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;I)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_2
.end method
