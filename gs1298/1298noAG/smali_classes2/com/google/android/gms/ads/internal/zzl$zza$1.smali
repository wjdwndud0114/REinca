.class Lcom/google/android/gms/ads/internal/zzl$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzl$zza;->zzcm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zztF:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field final synthetic zztG:Lcom/google/android/gms/ads/internal/zzl$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzl$zza;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl$zza$1;->zztG:Lcom/google/android/gms/ads/internal/zzl$zza;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzl$zza$1;->zztF:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcH()Lcom/google/android/gms/ads/internal/overlay/zzf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl$zza$1;->zztG:Lcom/google/android/gms/ads/internal/zzl$zza;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzl$zza;->zztD:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl$zza$1;->zztF:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzf;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method
