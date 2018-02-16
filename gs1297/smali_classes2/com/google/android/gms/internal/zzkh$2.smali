.class Lcom/google/android/gms/internal/zzkh$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkh;->showInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzLj:Lcom/google/android/gms/internal/zzkh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkh$2;->zzLj:Lcom/google/android/gms/internal/zzkh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpy;->zzbc(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpy;->zzbc(Ljava/lang/String;)V

    return-void
.end method

.method public zzbN()V
    .locals 2

    const-string v0, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpy;->zzbc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkh$2;->zzLj:Lcom/google/android/gms/internal/zzkh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zza(Lcom/google/android/gms/internal/zzkh;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkh$2;->zzLj:Lcom/google/android/gms/internal/zzkh;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkh$2;->zzLj:Lcom/google/android/gms/internal/zzkh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzc(Lcom/google/android/gms/internal/zzkh;)Lcom/google/android/gms/internal/zzgl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkh$2;->zzLj:Lcom/google/android/gms/internal/zzkh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzb(Lcom/google/android/gms/internal/zzkh;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgl;->zzd(Landroid/app/Activity;)V

    return-void
.end method

.method public zzbO()V
    .locals 2

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpy;->zzbc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkh$2;->zzLj:Lcom/google/android/gms/internal/zzkh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zza(Lcom/google/android/gms/internal/zzkh;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkh$2;->zzLj:Lcom/google/android/gms/internal/zzkh;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
