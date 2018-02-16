.class Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->d(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    const-string v2, "load_mediation_campaign"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v3

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->k(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/c/a;

    move-result-object v0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v3

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I

    move-result v3

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-static {v5}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v5

    invoke-static {v5}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-static {v5}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ZLandroid/content/Context;ILjava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V

    goto :goto_0
.end method
