.class Lcom/tnkfactory/ad/fq;
.super Lcom/tnkfactory/ad/p;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tnkfactory/ad/hl;Lcom/tnkfactory/ad/hz;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tnkfactory/ad/p;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/hl;Lcom/tnkfactory/ad/hz;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/tnkfactory/ad/q;Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v6, -0x2

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 v0, -0x5

    invoke-interface {p3, v0}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    iput-object p3, p2, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    :cond_2
    iget-object v1, p2, Lcom/tnkfactory/ad/q;->a:Lcom/tnkfactory/ad/InterstitialAdItem;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/tnkfactory/ad/q;->a:Lcom/tnkfactory/ad/InterstitialAdItem;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/InterstitialAdItem;->getAppId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    :cond_3
    const-string v0, "showInterstitialAd() : no ad from server."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p2, Lcom/tnkfactory/ad/q;->a:Lcom/tnkfactory/ad/InterstitialAdItem;

    iget-object v1, v1, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    const-string v0, "showInterstitialAd() : no ad image."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-interface {v0, v6}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-boolean v1, v1, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->useWindowMode:Z

    invoke-static {p1, v1}, Lcom/tnkfactory/ad/in;->a(Landroid/app/Activity;Z)[I

    move-result-object v1

    aget v1, v1, v0

    iget-object v2, p2, Lcom/tnkfactory/ad/q;->a:Lcom/tnkfactory/ad/InterstitialAdItem;

    iget-object v2, v2, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p2, Lcom/tnkfactory/ad/q;->a:Lcom/tnkfactory/ad/InterstitialAdItem;

    iget-object v3, v3, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_6

    :goto_1
    if-eq v1, v0, :cond_7

    const-string v0, "showInterstitialAd() : no ad image."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-interface {v0, v6}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const-string v0, "showInterstitialAd() : show-up now."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/tnkfactory/ad/q;->a:Lcom/tnkfactory/ad/InterstitialAdItem;

    iget-object v1, p2, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tnkfactory/ad/fq;->a(Landroid/app/Activity;Lcom/tnkfactory/ad/InterstitialAdItem;Lcom/tnkfactory/ad/TnkAdListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Lcom/tnkfactory/ad/InterstitialAdItem;Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 8

    const/16 v7, 0x200

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-boolean v0, v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->useWindowMode:Z

    invoke-static {p1, v0}, Lcom/tnkfactory/ad/in;->a(Landroid/app/Activity;Z)[I

    move-result-object v0

    aget v1, v0, v4

    aget v0, v0, v5

    invoke-virtual {p2}, Lcom/tnkfactory/ad/InterstitialAdItem;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "extra_aditem"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "extra_ivideo"

    const-string v4, "Y"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_video_rect"

    iget-object v4, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->W:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-le v1, v0, :cond_1

    const-string v0, "extra_orientation"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget v0, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    if-lez v0, :cond_0

    iget v0, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    if-ge v0, v7, :cond_0

    const-string v0, "extra_2button"

    const-string v1, "Y"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    new-instance v0, Lcom/tnkfactory/ad/fr;

    invoke-direct {v0, p3}, Lcom/tnkfactory/ad/fr;-><init>(Lcom/tnkfactory/ad/TnkAdListener;)V

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->a(Lcom/tnkfactory/ad/VideoAdListener;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "extra_orientation"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget v2, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->O:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    iput v4, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    :cond_3
    iget v3, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->j:I

    if-ne v3, v5, :cond_8

    const-string v3, "popupIntestitialAd for PPI"

    invoke-static {v3}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    const/16 v3, 0x64

    if-ne v2, v3, :cond_5

    :cond_4
    invoke-static {p1, v1, v0}, Lcom/tnkfactory/ad/gs;->a(Landroid/content/Context;II)Lcom/tnkfactory/ad/gs;

    move-result-object v0

    iget-object v1, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/gs;->setAdImage(Landroid/graphics/Bitmap;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/tnkfactory/ad/InterstitialAdItem;->getActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tnkfactory/ad/InterstitialAdItem;->getPointAmount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tnkfactory/ad/InterstitialAdItem;->getPointUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/gs;->a(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->U:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/gs;->a(Landroid/graphics/Bitmap;)V

    :goto_2
    iget-object v1, p0, Lcom/tnkfactory/ad/fq;->b:Lcom/tnkfactory/ad/hz;

    invoke-virtual {p2}, Lcom/tnkfactory/ad/InterstitialAdItem;->getAppId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tnkfactory/ad/hz;->n:J

    invoke-virtual {v0, p2}, Lcom/tnkfactory/ad/j;->setAdItem(Lcom/tnkfactory/ad/InterstitialAdItem;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/j;->d()V

    invoke-virtual {v0, p3}, Lcom/tnkfactory/ad/j;->setListener(Lcom/tnkfactory/ad/TnkAdListener;)V

    iget v1, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->R:I

    iget v2, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->S:I

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/j;->setAnimationType(II)V

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/j;->show(Landroid/app/Activity;)V

    goto :goto_1

    :cond_5
    iget v2, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_7

    invoke-static {p1, v1, v0}, Lcom/tnkfactory/ad/gx;->a(Landroid/content/Context;II)Lcom/tnkfactory/ad/gx;

    move-result-object v1

    iget-object v0, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/gx;->setAdImage(Landroid/graphics/Bitmap;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/tnkfactory/ad/InterstitialAdItem;->getActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tnkfactory/ad/InterstitialAdItem;->getPointAmount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tnkfactory/ad/InterstitialAdItem;->getPointUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/gx;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->aB:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tnkfactory/ad/InterstitialAdItem;->getActionType()I

    move-result v2

    if-ne v2, v6, :cond_6

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->aD:Ljava/lang/String;

    :cond_6
    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/gx;->b(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->U:Landroid/graphics/Bitmap;

    iget-object v2, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->V:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lcom/tnkfactory/ad/gx;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    goto :goto_2

    :cond_7
    iget v2, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    invoke-static {p1, v1, v0, v2}, Lcom/tnkfactory/ad/gv;->b(Landroid/content/Context;III)Lcom/tnkfactory/ad/gv;

    move-result-object v0

    iget-object v1, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/gv;->setAdImage(Landroid/graphics/Bitmap;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/tnkfactory/ad/InterstitialAdItem;->getActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tnkfactory/ad/InterstitialAdItem;->getPointAmount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tnkfactory/ad/InterstitialAdItem;->getPointUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/gv;->a(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->U:Landroid/graphics/Bitmap;

    iget-object v2, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->V:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/gv;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :cond_8
    const-string v2, "popupIntestitialAd for CPC"

    invoke-static {v2}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget v2, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    if-lez v2, :cond_9

    iget v2, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    if-ge v2, v7, :cond_9

    iget v2, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    invoke-static {p1, v1, v0, v2}, Lcom/tnkfactory/ad/fg;->a(Landroid/content/Context;III)Lcom/tnkfactory/ad/fg;

    move-result-object v0

    iget-object v1, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fg;->setAdImage(Landroid/graphics/Bitmap;)V

    iget-object v1, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->U:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fg;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :cond_9
    iget v2, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    invoke-static {p1, v1, v0, v2}, Lcom/tnkfactory/ad/fe;->b(Landroid/content/Context;III)Lcom/tnkfactory/ad/fe;

    move-result-object v0

    iget-object v1, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fe;->setAdImage(Landroid/graphics/Bitmap;)V

    iget-object v1, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->U:Landroid/graphics/Bitmap;

    iget-object v2, p2, Lcom/tnkfactory/ad/InterstitialAdItem;->V:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/fe;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_2
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 4

    const/4 v1, -0x4

    invoke-static {p1, p2}, Lcom/tnkfactory/ad/ia;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "prepareInterstitialAd() : interval check and canceled."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, v1}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/fq;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p2}, Lcom/tnkfactory/ad/cz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "prepareInterstitialAd() : previous ad-fetching not completed."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, v1}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    goto :goto_0

    :cond_2
    const-string v0, "prepareInterstitialAd() : ad-fetching from server."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/tnkfactory/ad/q;

    invoke-direct {v0, p0, p2}, Lcom/tnkfactory/ad/q;-><init>(Lcom/tnkfactory/ad/p;Ljava/lang/String;)V

    iput-object p3, v0, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    iget-object v1, p0, Lcom/tnkfactory/ad/fq;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/cz;->a(Lcom/tnkfactory/ad/cy;)V

    invoke-static {p1}, Lcom/tnkfactory/ad/in;->m(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/tnkfactory/ad/fq;->a:Lcom/tnkfactory/ad/hl;

    new-instance v3, Lcom/tnkfactory/ad/s;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/q;->a()I

    move-result v0

    invoke-direct {v3, p0, v0}, Lcom/tnkfactory/ad/s;-><init>(Lcom/tnkfactory/ad/p;I)V

    invoke-virtual {v2, p1, v1, p2, v3}, Lcom/tnkfactory/ad/hl;->a(Landroid/content/Context;ILjava/lang/String;Lcom/tnkfactory/ad/ServiceCallback;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;J)V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/fq;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p2}, Lcom/tnkfactory/ad/cz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/fq;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p2}, Lcom/tnkfactory/ad/cz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/4 v0, -0x5

    invoke-interface {p3, v0}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/fq;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p2}, Lcom/tnkfactory/ad/cz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/fq;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p2}, Lcom/tnkfactory/ad/cz;->c(Ljava/lang/String;)Lcom/tnkfactory/ad/cy;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/q;

    invoke-direct {p0, p1, v0, p3}, Lcom/tnkfactory/ad/fq;->a(Landroid/app/Activity;Lcom/tnkfactory/ad/q;Lcom/tnkfactory/ad/TnkAdListener;)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/tnkfactory/ad/fq;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/tnkfactory/ad/fq;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p2, p3}, Lcom/tnkfactory/ad/cz;->a(Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)Lcom/tnkfactory/ad/cy;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/q;

    if-eqz v0, :cond_3

    const-string v1, "showInterstitialAd() : wait until ads arrives."

    invoke-static {v1}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/fq;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string v0, "showInterstitialAd() : retry..."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/fq;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p2}, Lcom/tnkfactory/ad/cz;->c(Ljava/lang/String;)Lcom/tnkfactory/ad/cy;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/q;

    invoke-direct {p0, p1, v0, p3}, Lcom/tnkfactory/ad/fq;->a(Landroid/app/Activity;Lcom/tnkfactory/ad/q;Lcom/tnkfactory/ad/TnkAdListener;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/fq;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fq;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/cz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
