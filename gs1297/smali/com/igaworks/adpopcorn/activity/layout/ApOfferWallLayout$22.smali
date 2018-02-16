.class Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iput p2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->b:I

    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v1

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->showProgressDialog(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->k(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/c/a;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I

    move-result v3

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v5}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ZLandroid/content/Context;ILjava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/activity/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/activity/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/a/a/a;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v1

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$22;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v2

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
