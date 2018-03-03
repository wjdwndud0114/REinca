.class abstract Lcom/google/android/gms/internal/zzavk$zzb;
.super Lcom/google/android/gms/internal/zzavk$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzavk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzavk$zza",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzavk$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzavk$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzavk$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzbx(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzavk$zzb$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzavk$zzb$1;-><init>(Lcom/google/android/gms/internal/zzavk$zzb;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzavk$zzb;->zzbx(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;

    move-result-object v0

    return-object v0
.end method
