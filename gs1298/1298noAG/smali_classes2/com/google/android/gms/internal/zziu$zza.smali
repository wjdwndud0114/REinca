.class Lcom/google/android/gms/internal/zziu$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zziu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field zzIG:Lcom/google/android/gms/ads/internal/zzl;

.field zzIH:Lcom/google/android/gms/internal/zzdy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzII:Lcom/google/android/gms/internal/zziq;

.field zzIJ:J

.field zzIK:Z

.field zzIL:Z

.field final synthetic zzIM:Lcom/google/android/gms/internal/zziu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziu;Lcom/google/android/gms/internal/zzip;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zziu$zza;->zzIM:Lcom/google/android/gms/internal/zziu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zziu;->zza(Lcom/google/android/gms/internal/zziu;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzip;->zzah(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zziu$zza;->zzIG:Lcom/google/android/gms/ads/internal/zzl;

    new-instance v0, Lcom/google/android/gms/internal/zziq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zziq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zziu$zza;->zzII:Lcom/google/android/gms/internal/zziq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zziu$zza;->zzII:Lcom/google/android/gms/internal/zziq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziu$zza;->zzIG:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziq;->zzc(Lcom/google/android/gms/ads/internal/zzl;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zziu;Lcom/google/android/gms/internal/zzip;Lcom/google/android/gms/internal/zzdy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zziu$zza;-><init>(Lcom/google/android/gms/internal/zziu;Lcom/google/android/gms/internal/zzip;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zziu$zza;->zzIH:Lcom/google/android/gms/internal/zzdy;

    return-void
.end method


# virtual methods
.method zzgq()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zziu$zza;->zzIK:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziu$zza;->zzIH:Lcom/google/android/gms/internal/zzdy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziu$zza;->zzIH:Lcom/google/android/gms/internal/zzdy;

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzis;->zzl(Lcom/google/android/gms/internal/zzdy;)Lcom/google/android/gms/internal/zzdy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zziu$zza;->zzIG:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Lcom/google/android/gms/internal/zzdy;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zziu$zza;->zzIL:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zziu$zza;->zzIK:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcP()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zziu$zza;->zzIJ:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zziu$zza;->zzIM:Lcom/google/android/gms/internal/zziu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zziu;->zzb(Lcom/google/android/gms/internal/zziu;)Lcom/google/android/gms/internal/zzdy;

    move-result-object v0

    goto :goto_1
.end method
