.class final Lcom/google/android/gms/auth/api/signin/internal/zze$3;
.super Lcom/google/android/gms/auth/api/signin/internal/zze$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/signin/internal/zze;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/signin/internal/zze$zza",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zze$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/auth/api/signin/internal/zzd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzd;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zzi;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zze$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zze$3$1;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zze$3;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzd;->zzqU()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/zzi;->zzc(Lcom/google/android/gms/auth/api/signin/internal/zzh;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zzd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zze$3;->zza(Lcom/google/android/gms/auth/api/signin/internal/zzd;)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zze$3;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
