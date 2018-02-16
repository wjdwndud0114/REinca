.class Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A()V
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

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->d(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "participateFlag"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/activity/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->f(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/activity/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/a/a/a;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->g(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    const-string v1, "confirm_mediation_campaign"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->e(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "auth"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->h(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->i(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel_code"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->j(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->k(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Lcom/igaworks/adpopcorn/cores/c/a;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->l(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->m(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->m(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Landroid/app/Dialog;)V

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$32;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
