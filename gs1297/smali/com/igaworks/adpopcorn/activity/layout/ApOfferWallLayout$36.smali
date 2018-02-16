.class Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Lcom/igaworks/adpopcorn/cores/model/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

.field private final synthetic b:Lcom/igaworks/adpopcorn/cores/model/c;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->b:Lcom/igaworks/adpopcorn/cores/model/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    const-string v3, ""

    invoke-static {v0, v3, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->Q(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->R(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-static {v0, v3}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/app/Activity;I)V

    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->S(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v1

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bU:Ljava/lang/String;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v3

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v1

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bU:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->e()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->b:Lcom/igaworks/adpopcorn/cores/model/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->b:Lcom/igaworks/adpopcorn/cores/model/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I

    move-result v0

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v3

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->af:Ljava/lang/String;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v4

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    invoke-static {v0, v3, v4, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->T(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->T(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->T(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v3

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->af:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;Z)V

    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I

    move-result v0

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v1

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->af:Ljava/lang/String;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v3

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->T(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->T(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->T(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v1

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->af:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;Z)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->X(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v3

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v4

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->g:Ljava/lang/String;

    invoke-static {v0, v3, v4, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->T(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->T(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->T(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_8
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v3

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->af:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;Z)V

    move v0, v1

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->b:Lcom/igaworks/adpopcorn/cores/model/c;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->b:Lcom/igaworks/adpopcorn/cores/model/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->b:Lcom/igaworks/adpopcorn/cores/model/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->b:Lcom/igaworks/adpopcorn/cores/model/c;

    invoke-virtual {v4}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/igaworks/adpopcorn/cores/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/util/List;I)V

    sget v0, Lcom/igaworks/adpopcorn/cores/b/c;->c:I

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    sget v4, Lcom/igaworks/adpopcorn/cores/b/c;->a:I

    invoke-static {v3, v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;I)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    sget-object v4, Lcom/igaworks/adpopcorn/cores/b/c;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "callbackGetCampaignList: resultCode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->z(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I

    move-result v4

    if-lt v3, v4, :cond_a

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->d(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V

    :cond_a
    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->U(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->V(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v5}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->W(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v3, 0x1f4

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V

    :goto_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->y(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->d(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->X(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    move v0, v1

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto/16 :goto_2

    :cond_c
    move v0, v2

    goto/16 :goto_2

    :cond_d
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36$1;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36$1;-><init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$36;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_e
    move v0, v1

    goto/16 :goto_2
.end method
