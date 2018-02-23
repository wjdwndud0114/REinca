.class Lcom/tnkfactory/ad/gk;
.super Lcom/tnkfactory/ad/ServiceCallback;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/NativeAdManager;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/NativeAdManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/gk;->a:Lcom/tnkfactory/ad/NativeAdManager;

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

    iget-object v0, p0, Lcom/tnkfactory/ad/gk;->a:Lcom/tnkfactory/ad/NativeAdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/NativeAdManager;->a(Lcom/tnkfactory/ad/NativeAdManager;I)I

    iget-object v0, p0, Lcom/tnkfactory/ad/gk;->a:Lcom/tnkfactory/ad/NativeAdManager;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdManager;->a(Lcom/tnkfactory/ad/NativeAdManager;)Lcom/tnkfactory/ad/NativeAdManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/gk;->a:Lcom/tnkfactory/ad/NativeAdManager;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdManager;->a(Lcom/tnkfactory/ad/NativeAdManager;)Lcom/tnkfactory/ad/NativeAdManagerListener;

    move-result-object v0

    const/16 v1, -0x9

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/NativeAdManagerListener;->onFailure(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lcom/tnkfactory/framework/vo/ValueObject;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/gk;->a:Lcom/tnkfactory/ad/NativeAdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/NativeAdManager;->a(Lcom/tnkfactory/ad/NativeAdManager;I)I

    iget-object v0, p0, Lcom/tnkfactory/ad/gk;->a:Lcom/tnkfactory/ad/NativeAdManager;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdManager;->a(Lcom/tnkfactory/ad/NativeAdManager;)Lcom/tnkfactory/ad/NativeAdManagerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/gk;->a:Lcom/tnkfactory/ad/NativeAdManager;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdManager;->a(Lcom/tnkfactory/ad/NativeAdManager;)Lcom/tnkfactory/ad/NativeAdManagerListener;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/NativeAdManagerListener;->onFailure(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/gk;->a:Lcom/tnkfactory/ad/NativeAdManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/NativeAdManager;->a(Lcom/tnkfactory/ad/NativeAdManager;J)J

    iget-object v0, p0, Lcom/tnkfactory/ad/gk;->a:Lcom/tnkfactory/ad/NativeAdManager;

    invoke-static {v0, p2}, Lcom/tnkfactory/ad/NativeAdManager;->a(Lcom/tnkfactory/ad/NativeAdManager;Lcom/tnkfactory/framework/vo/ValueObject;)Lcom/tnkfactory/framework/vo/ValueObject;

    iget-object v0, p0, Lcom/tnkfactory/ad/gk;->a:Lcom/tnkfactory/ad/NativeAdManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/NativeAdManager;->a(Lcom/tnkfactory/ad/NativeAdManager;I)I

    iget-object v0, p0, Lcom/tnkfactory/ad/gk;->a:Lcom/tnkfactory/ad/NativeAdManager;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdManager;->a(Lcom/tnkfactory/ad/NativeAdManager;)Lcom/tnkfactory/ad/NativeAdManagerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/gk;->a:Lcom/tnkfactory/ad/NativeAdManager;

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdManager;->a(Lcom/tnkfactory/ad/NativeAdManager;)Lcom/tnkfactory/ad/NativeAdManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tnkfactory/ad/NativeAdManagerListener;->onLoad()V

    goto :goto_0
.end method
