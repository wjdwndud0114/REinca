.class Lcom/tnkfactory/ad/ge;
.super Lcom/tnkfactory/ad/ServiceCallback;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/NativeAdItem;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/NativeAdItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-direct {p0}, Lcom/tnkfactory/ad/ServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/ad/NativeAdItem;)Lcom/tnkfactory/ad/NativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/ad/NativeAdItem;)Lcom/tnkfactory/ad/NativeAdListener;

    move-result-object v0

    const/16 v1, -0x9

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/NativeAdListener;->onFailure(I)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/ad/NativeAdItem;I)I

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x0

    check-cast p2, Lcom/tnkfactory/framework/vo/ValueObject;

    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/ad/NativeAdItem;Z)Z

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/ad/NativeAdItem;I)I

    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/ad/NativeAdItem;)Lcom/tnkfactory/ad/NativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/ad/NativeAdItem;)Lcom/tnkfactory/ad/NativeAdListener;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/NativeAdListener;->onFailure(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-virtual {v0, p2}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/framework/vo/ValueObject;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    iget v0, v0, Lcom/tnkfactory/ad/NativeAdItem;->B:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/ad/NativeAdItem;I)I

    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/ad/NativeAdItem;)Lcom/tnkfactory/ad/NativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/ad/NativeAdItem;)Lcom/tnkfactory/ad/NativeAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    iget v1, v1, Lcom/tnkfactory/ad/NativeAdItem;->B:I

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/NativeAdListener;->onFailure(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/ad/NativeAdItem;I)I

    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/ad/NativeAdItem;)Lcom/tnkfactory/ad/NativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->a(Lcom/tnkfactory/ad/NativeAdItem;)Lcom/tnkfactory/ad/NativeAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/NativeAdListener;->onLoad(Lcom/tnkfactory/ad/NativeAdItem;)V

    :cond_4
    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->b(Lcom/tnkfactory/ad/NativeAdItem;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->b(Lcom/tnkfactory/ad/NativeAdItem;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->c(Lcom/tnkfactory/ad/NativeAdItem;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->e(Lcom/tnkfactory/ad/NativeAdItem;)Lcom/tnkfactory/ad/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/hl;->a:Lcom/tnkfactory/ad/hz;

    iget-object v1, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    iget-wide v2, v1, Lcom/tnkfactory/ad/NativeAdItem;->b:J

    iput-wide v2, v0, Lcom/tnkfactory/ad/hz;->n:J

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tnkfactory/ad/ge;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->d(Lcom/tnkfactory/ad/NativeAdItem;)V

    goto :goto_1
.end method
