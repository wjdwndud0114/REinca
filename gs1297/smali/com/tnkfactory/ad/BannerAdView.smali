.class public Lcom/tnkfactory/ad/BannerAdView;
.super Lcom/tnkfactory/ad/BannerBaseAdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/BannerBaseAdView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tnkfactory/ad/BannerBaseAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tnkfactory/ad/BannerAdListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tnkfactory/ad/BannerBaseAdView;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/BannerAdListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic hasBannerAd()Z
    .locals 1

    invoke-super {p0}, Lcom/tnkfactory/ad/BannerBaseAdView;->hasBannerAd()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic loadAd(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/BannerBaseAdView;->loadAd(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tnkfactory/ad/BannerBaseAdView;->onPause()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tnkfactory/ad/BannerBaseAdView;->onResume()V

    return-void
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/BannerBaseAdView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public bridge synthetic setBannerAdListener(Lcom/tnkfactory/ad/BannerAdListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/BannerBaseAdView;->setBannerAdListener(Lcom/tnkfactory/ad/BannerAdListener;)V

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/BannerBaseAdView;->setVisibility(I)V

    return-void
.end method
