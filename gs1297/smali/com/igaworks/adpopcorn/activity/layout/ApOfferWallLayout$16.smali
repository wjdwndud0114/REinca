.class Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p()V
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

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->s(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/model/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Lcom/igaworks/adpopcorn/cores/model/d;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/model/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->i()I

    move-result v1

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/model/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->o(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/model/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->p(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v1

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->u:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->showProgressDialog(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    const-string v1, "click_campaign"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->b(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;I)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "auth"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->q(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->k(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/c/a;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->r(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$16;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
