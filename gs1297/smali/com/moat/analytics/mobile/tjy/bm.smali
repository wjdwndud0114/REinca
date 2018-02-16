.class Lcom/moat/analytics/mobile/tjy/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/bl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/tjy/base/functional/a;
    .locals 8

    const/4 v3, 0x0

    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    move-object v1, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x64

    if-ge v0, v2, :cond_5

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v6, Lcom/moat/analytics/mobile/tjy/bo;

    invoke-direct {v6, v0, v3}, Lcom/moat/analytics/mobile/tjy/bo;-><init>(Landroid/view/ViewGroup;Lcom/moat/analytics/mobile/tjy/bn;)V

    invoke-virtual {v6}, Lcom/moat/analytics/mobile/tjy/bo;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v7, v0, Landroid/webkit/WebView;

    if-eqz v7, :cond_2

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/webkit/WebView;

    :cond_2
    instance-of v7, v0, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v0, "MoatWebViewHound"

    const-string v1, "Ambiguous ad container: multiple WebViews reside within it."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move-object v1, v3

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v0

    goto :goto_0
.end method
