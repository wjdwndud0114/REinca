.class public Lcom/google/android/gms/internal/zzja$zzc;
.super Lcom/google/android/gms/internal/zzqj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzqj",
        "<",
        "Lcom/google/android/gms/internal/zzjb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzJu:Lcom/google/android/gms/internal/zzja$zzd;

.field private zzJv:Z

.field private final zzrN:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzja$zzd;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqj;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzja$zzc;->zzrN:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzja$zzc;->zzJu:Lcom/google/android/gms/internal/zzja$zzd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzja$zzc;)Lcom/google/android/gms/internal/zzja$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$zzc;->zzJu:Lcom/google/android/gms/internal/zzja$zzd;

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzja$zzc;->zzrN:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzja$zzc;->zzJv:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzja$zzc;->zzJv:Z

    new-instance v0, Lcom/google/android/gms/internal/zzja$zzc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzja$zzc$1;-><init>(Lcom/google/android/gms/internal/zzja$zzc;)V

    new-instance v2, Lcom/google/android/gms/internal/zzqi$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzqi$zzb;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzja$zzc;->zza(Lcom/google/android/gms/internal/zzqi$zzc;Lcom/google/android/gms/internal/zzqi$zza;)V

    new-instance v0, Lcom/google/android/gms/internal/zzja$zzc$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzja$zzc$2;-><init>(Lcom/google/android/gms/internal/zzja$zzc;)V

    new-instance v2, Lcom/google/android/gms/internal/zzja$zzc$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzja$zzc$3;-><init>(Lcom/google/android/gms/internal/zzja$zzc;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzja$zzc;->zza(Lcom/google/android/gms/internal/zzqi$zzc;Lcom/google/android/gms/internal/zzqi$zza;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
