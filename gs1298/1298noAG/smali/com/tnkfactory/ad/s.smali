.class public Lcom/tnkfactory/ad/s;
.super Lcom/tnkfactory/ad/ServiceCallback;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/p;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/p;I)V
    .locals 1

    iput-object p1, p0, Lcom/tnkfactory/ad/s;->a:Lcom/tnkfactory/ad/p;

    invoke-direct {p0}, Lcom/tnkfactory/ad/ServiceCallback;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tnkfactory/ad/s;->b:I

    iput p2, p0, Lcom/tnkfactory/ad/s;->b:I

    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareInterstitial() error from server : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/s;->a:Lcom/tnkfactory/ad/p;

    iget-object v0, v0, Lcom/tnkfactory/ad/p;->b:Lcom/tnkfactory/ad/hz;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/tnkfactory/ad/hz;->n:J

    iget-object v0, p0, Lcom/tnkfactory/ad/s;->a:Lcom/tnkfactory/ad/p;

    iget-object v0, v0, Lcom/tnkfactory/ad/p;->d:Lcom/tnkfactory/ad/cz;

    iget v1, p0, Lcom/tnkfactory/ad/s;->b:I

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/cz;->a(I)Lcom/tnkfactory/ad/cy;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/q;

    if-nez v0, :cond_1

    const-string v0, "showInterstitial() canceled by timeout"

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tnkfactory/ad/s;->a:Lcom/tnkfactory/ad/p;

    iget-object v1, v1, Lcom/tnkfactory/ad/p;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    const/16 v1, -0x9

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    goto :goto_0
.end method

.method public onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/s;->a:Lcom/tnkfactory/ad/p;

    iget-object v0, v0, Lcom/tnkfactory/ad/p;->d:Lcom/tnkfactory/ad/cz;

    iget v1, p0, Lcom/tnkfactory/ad/s;->b:I

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/cz;->a(I)Lcom/tnkfactory/ad/cy;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/q;

    if-nez v0, :cond_1

    const-string v0, "showInterstitial() canceled by timeout"

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tnkfactory/ad/s;->a:Lcom/tnkfactory/ad/p;

    iget-object v1, v1, Lcom/tnkfactory/ad/p;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v1, "prepareInterstitialAd() : ad-fetching completed."

    invoke-static {v1}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v1, Lcom/tnkfactory/ad/InterstitialAdItem;

    check-cast p2, Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-direct {v1, p2}, Lcom/tnkfactory/ad/InterstitialAdItem;-><init>(Lcom/tnkfactory/framework/vo/ValueObject;)V

    iput-object v1, v0, Lcom/tnkfactory/ad/q;->a:Lcom/tnkfactory/ad/InterstitialAdItem;

    iget-object v1, v0, Lcom/tnkfactory/ad/q;->a:Lcom/tnkfactory/ad/InterstitialAdItem;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/InterstitialAdItem;->getAppId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    iget-object v1, v0, Lcom/tnkfactory/ad/q;->a:Lcom/tnkfactory/ad/InterstitialAdItem;

    iget-object v1, v1, Lcom/tnkfactory/ad/InterstitialAdItem;->J:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/tnkfactory/ad/q;->a:Lcom/tnkfactory/ad/InterstitialAdItem;

    iget-wide v2, v2, Lcom/tnkfactory/ad/InterstitialAdItem;->Q:J

    invoke-static {p1, v1, v2, v3}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {p1, v1}, Lcom/tnkfactory/ad/ia;->j(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/tnkfactory/ad/q;->a:Lcom/tnkfactory/ad/InterstitialAdItem;

    iget-object v1, v1, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    const-string v1, "prepareInterstitialAd() : no ad image."

    invoke-static {v1}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/s;->a:Lcom/tnkfactory/ad/p;

    iget-object v1, v1, Lcom/tnkfactory/ad/p;->b:Lcom/tnkfactory/ad/hz;

    iput-wide v4, v1, Lcom/tnkfactory/ad/hz;->n:J

    iget-object v1, v0, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    goto :goto_0

    :cond_3
    iget-boolean v1, v0, Lcom/tnkfactory/ad/q;->d:Z

    if-eqz v1, :cond_5

    const-string v1, "prepareInterstitialAd() : show immediately."

    invoke-static {v1}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/tnkfactory/ad/s;->a:Lcom/tnkfactory/ad/p;

    iget-object v2, p0, Lcom/tnkfactory/ad/s;->a:Lcom/tnkfactory/ad/p;

    iget-object v2, v2, Lcom/tnkfactory/ad/p;->c:Landroid/app/Activity;

    iget-object v3, v0, Lcom/tnkfactory/ad/q;->a:Lcom/tnkfactory/ad/InterstitialAdItem;

    iget-object v0, v0, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-virtual {v1, v2, v3, v0}, Lcom/tnkfactory/ad/p;->a(Landroid/app/Activity;Lcom/tnkfactory/ad/InterstitialAdItem;Lcom/tnkfactory/ad/TnkAdListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popupInterstitialAd() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/tnkfactory/ad/s;->a:Lcom/tnkfactory/ad/p;

    iget-object v1, v1, Lcom/tnkfactory/ad/p;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/cz;->b(Lcom/tnkfactory/ad/cy;)V

    const-string v1, "prepareInterstitialAd() : add to return request.."

    invoke-static {v1}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-interface {v0}, Lcom/tnkfactory/ad/TnkAdListener;->onLoad()V

    goto/16 :goto_0

    :cond_6
    const-string v1, "prepareInterstitialAd() : no ads from server."

    invoke-static {v1}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/s;->a:Lcom/tnkfactory/ad/p;

    iget-object v1, v1, Lcom/tnkfactory/ad/p;->b:Lcom/tnkfactory/ad/hz;

    iput-wide v4, v1, Lcom/tnkfactory/ad/hz;->n:J

    iget-object v1, v0, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    goto/16 :goto_0
.end method
