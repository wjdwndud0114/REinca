.class Lcom/google/android/gms/internal/zzkh$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic zztF:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkh;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkh$3;->zzLj:Lcom/google/android/gms/internal/zzkh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkh$3;->zztF:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcH()Lcom/google/android/gms/ads/internal/overlay/zzf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkh$3;->zzLj:Lcom/google/android/gms/internal/zzkh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzb(Lcom/google/android/gms/internal/zzkh;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkh$3;->zztF:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzf;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method
