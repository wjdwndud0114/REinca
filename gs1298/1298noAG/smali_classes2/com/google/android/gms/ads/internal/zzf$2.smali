.class Lcom/google/android/gms/ads/internal/zzf$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqq$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzf;->zza(Lcom/google/android/gms/internal/zzov;Lcom/google/android/gms/internal/zzov;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsU:Lcom/google/android/gms/internal/zzov;

.field final synthetic zzsV:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzov;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzsU:Lcom/google/android/gms/internal/zzov;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzsV:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzcc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzsU:Lcom/google/android/gms/internal/zzov;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzov;->zzVq:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcJ()Lcom/google/android/gms/internal/zzpi;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf$2;->zzsV:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpi;->zzb(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
