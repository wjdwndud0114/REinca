.class Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    return-object v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/model/d;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ge p2, v3, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/activity/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/activity/a/a/b;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/a/a/b;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->v(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->w(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->x(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I

    move-result v1

    if-le v0, v1, :cond_4

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$1;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$1;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-lt p2, v3, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->u(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->isLandscapeMode(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/activity/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->t(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/activity/a/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/igaworks/adpopcorn/activity/a/a/b;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-lt p4, v3, :cond_2

    add-int v0, p2, p3

    if-ne v0, p4, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23$2;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$23;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
