.class Lcom/tnkfactory/ad/ej;
.super Lcom/tnkfactory/ad/ServiceCallback;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ei;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ei;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-direct {p0}, Lcom/tnkfactory/ad/ServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/ei;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/ei;I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v2}, Lcom/tnkfactory/ad/ei;->b(Lcom/tnkfactory/ad/ei;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v2}, Lcom/tnkfactory/ad/ei;->c(Lcom/tnkfactory/ad/ei;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->d(Lcom/tnkfactory/ad/ei;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->d(Lcom/tnkfactory/ad/ei;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->d(Lcom/tnkfactory/ad/ei;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->d(Lcom/tnkfactory/ad/ei;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_3
    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->e(Lcom/tnkfactory/ad/ei;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->e(Lcom/tnkfactory/ad/ei;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->f(Lcom/tnkfactory/ad/ei;)Lcom/tnkfactory/ad/ex;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->f(Lcom/tnkfactory/ad/ei;)Lcom/tnkfactory/ad/ex;

    move-result-object v0

    const/16 v1, -0x9

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/ex;->a(I)V

    goto :goto_1
.end method

.method public onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 10

    const-wide/32 v0, 0x1b7740

    const/4 v9, 0x2

    const/4 v8, 0x0

    check-cast p2, Lcom/tnkfactory/framework/vo/ValueObject;

    iget-object v2, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v2}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/ei;)I

    move-result v2

    if-ne v2, v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v2, v8}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/ei;I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v4}, Lcom/tnkfactory/ad/ei;->b(Lcom/tnkfactory/ad/ei;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v4}, Lcom/tnkfactory/ad/ei;->c(Lcom/tnkfactory/ad/ei;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v2}, Lcom/tnkfactory/ad/ei;->d(Lcom/tnkfactory/ad/ei;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v2}, Lcom/tnkfactory/ad/ei;->d(Lcom/tnkfactory/ad/ei;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v2}, Lcom/tnkfactory/ad/ei;->d(Lcom/tnkfactory/ad/ei;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v2}, Lcom/tnkfactory/ad/ei;->d(Lcom/tnkfactory/ad/ei;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    :cond_3
    iget-object v2, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v2}, Lcom/tnkfactory/ad/ei;->e(Lcom/tnkfactory/ad/ei;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v2}, Lcom/tnkfactory/ad/ei;->e(Lcom/tnkfactory/ad/ei;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->f(Lcom/tnkfactory/ad/ei;)Lcom/tnkfactory/ad/ex;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->f(Lcom/tnkfactory/ad/ei;)Lcom/tnkfactory/ad/ex;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/ex;->a(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/ei;J)J

    iget-object v2, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v2, p2}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/ei;Lcom/tnkfactory/framework/vo/ValueObject;)Lcom/tnkfactory/framework/vo/ValueObject;

    iget-object v2, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v2, v8}, Lcom/tnkfactory/ad/ei;->b(Lcom/tnkfactory/ad/ei;I)Lcom/tnkfactory/ad/BannerAdItem;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/BannerAdItem;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    invoke-virtual {v2}, Lcom/tnkfactory/ad/BannerAdItem;->e()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    :cond_6
    invoke-static {v3, v0, v1}, Lcom/tnkfactory/ad/ei;->b(Lcom/tnkfactory/ad/ei;J)J

    :cond_7
    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0, v9}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/ei;I)I

    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->e(Lcom/tnkfactory/ad/ei;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->e(Lcom/tnkfactory/ad/ei;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->f(Lcom/tnkfactory/ad/ei;)Lcom/tnkfactory/ad/ex;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ej;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->f(Lcom/tnkfactory/ad/ei;)Lcom/tnkfactory/ad/ex;

    move-result-object v0

    invoke-interface {v0}, Lcom/tnkfactory/ad/ex;->a()V

    goto/16 :goto_0
.end method
