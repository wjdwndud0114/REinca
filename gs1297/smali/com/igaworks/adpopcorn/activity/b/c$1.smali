.class Lcom/igaworks/adpopcorn/activity/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/b/c;->c()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/b/c;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->d(Lcom/igaworks/adpopcorn/activity/b/c;)I

    move-result v0

    const v1, 0x1030011

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Lcom/igaworks/adpopcorn/activity/b/c;Z)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->e(Lcom/igaworks/adpopcorn/activity/b/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/b/e;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/c;->f(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/b/c;->d(Lcom/igaworks/adpopcorn/activity/b/c;)I

    move-result v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/b/c;->g(Lcom/igaworks/adpopcorn/activity/b/c;)Z

    move-result v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v5}, Lcom/igaworks/adpopcorn/activity/b/c;->h(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v5

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v6}, Lcom/igaworks/adpopcorn/activity/b/c;->b(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v6

    iget-object v8, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v8}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v8

    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v10}, Lcom/igaworks/adpopcorn/activity/b/c;->i(Lcom/igaworks/adpopcorn/activity/b/c;)Z

    move-result v10

    iget-object v11, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v11}, Lcom/igaworks/adpopcorn/activity/b/c;->j(Lcom/igaworks/adpopcorn/activity/b/c;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Lcom/igaworks/adpopcorn/activity/b/e;-><init>(Landroid/content/Context;IZLcom/igaworks/adpopcorn/cores/common/f;DDZLjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Lcom/igaworks/adpopcorn/activity/b/c;Lcom/igaworks/adpopcorn/activity/b/e;)V

    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->k(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/activity/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/e;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/b/e;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/c;->f(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/b/c;->d(Lcom/igaworks/adpopcorn/activity/b/c;)I

    move-result v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/b/c;->g(Lcom/igaworks/adpopcorn/activity/b/c;)Z

    move-result v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v5}, Lcom/igaworks/adpopcorn/activity/b/c;->h(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v5

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v6}, Lcom/igaworks/adpopcorn/activity/b/c;->b(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v6

    iget-object v8, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v8}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Lcom/igaworks/adpopcorn/activity/b/c;)D

    move-result-wide v8

    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/b/c$1;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v10}, Lcom/igaworks/adpopcorn/activity/b/c;->i(Lcom/igaworks/adpopcorn/activity/b/c;)Z

    move-result v10

    invoke-direct/range {v1 .. v10}, Lcom/igaworks/adpopcorn/activity/b/e;-><init>(Landroid/content/Context;IZLcom/igaworks/adpopcorn/cores/common/f;DDZ)V

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Lcom/igaworks/adpopcorn/activity/b/c;Lcom/igaworks/adpopcorn/activity/b/e;)V

    goto :goto_0
.end method
