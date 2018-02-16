.class Lcom/google/android/gms/internal/zzkh$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkh;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzfE()V
    .locals 1

    const-string v0, "Hinting CustomTabsService for the load of the new url."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpy;->zzbc(Ljava/lang/String;)V

    return-void
.end method

.method public zzfF()V
    .locals 1

    const-string v0, "Disconnecting from CustomTabs service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpy;->zzbc(Ljava/lang/String;)V

    return-void
.end method
