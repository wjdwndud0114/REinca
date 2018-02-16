.class Lcom/google/android/gms/ads/internal/zzf$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzf;->zza(Lcom/google/android/gms/internal/zzov;Lcom/google/android/gms/internal/zzov;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsT:Lcom/google/android/gms/ads/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzsT:Lcom/google/android/gms/ads/internal/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzsT:Lcom/google/android/gms/ads/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf$1;->zzsT:Lcom/google/android/gms/ads/internal/zzf;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzf;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzf;->zzf(Lcom/google/android/gms/internal/zzov;)V

    return-void
.end method
