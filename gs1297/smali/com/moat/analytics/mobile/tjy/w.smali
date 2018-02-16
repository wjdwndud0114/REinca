.class Lcom/moat/analytics/mobile/tjy/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/ba;


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/moat/analytics/mobile/tjy/ap;

.field final synthetic c:Lcom/moat/analytics/mobile/tjy/v;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/tjy/v;Ljava/lang/ref/WeakReference;Lcom/moat/analytics/mobile/tjy/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/w;->c:Lcom/moat/analytics/mobile/tjy/v;

    iput-object p2, p0, Lcom/moat/analytics/mobile/tjy/w;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/moat/analytics/mobile/tjy/w;->b:Lcom/moat/analytics/mobile/tjy/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/tjy/base/functional/a;
    .locals 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/moat/analytics/mobile/tjy/w;->b:Lcom/moat/analytics/mobile/tjy/ap;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    const-string v0, "MoatFactory"

    const-string v1, "Target ViewGroup is null. Not creating WebAdTracker."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a()Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    const-string v1, "MoatFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating WebAdTracker for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Lcom/moat/analytics/mobile/tjy/bj;

    iget-object v2, p0, Lcom/moat/analytics/mobile/tjy/w;->c:Lcom/moat/analytics/mobile/tjy/v;

    invoke-static {v2}, Lcom/moat/analytics/mobile/tjy/v;->a(Lcom/moat/analytics/mobile/tjy/v;)Lcom/moat/analytics/mobile/tjy/a;

    move-result-object v2

    iget-object v3, p0, Lcom/moat/analytics/mobile/tjy/w;->b:Lcom/moat/analytics/mobile/tjy/ap;

    invoke-direct {v1, v0, v2, v3}, Lcom/moat/analytics/mobile/tjy/bj;-><init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)V

    invoke-static {v1}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v0

    goto :goto_0
.end method
