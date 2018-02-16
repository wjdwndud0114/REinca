.class public final Lcom/google/android/gms/ads/InterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final zzrL:Lcom/google/android/gms/internal/zzfa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzfa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzfa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfa;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfa;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfa;->getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfa;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfa;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfa;->isLoading()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzbq()Lcom/google/android/gms/internal/zzey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfa;->zza(Lcom/google/android/gms/internal/zzey;)V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfa;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    check-cast p1, Lcom/google/android/gms/internal/zzdt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfa;->zza(Lcom/google/android/gms/internal/zzdt;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfa;->zza(Lcom/google/android/gms/internal/zzdt;)V

    goto :goto_0
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfa;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfa;->setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    return-void
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfa;->setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V

    return-void
.end method

.method public setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfa;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfa;->show()V

    return-void
.end method

.method public zzd(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrL:Lcom/google/android/gms/internal/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfa;->zzd(Z)V

    return-void
.end method
