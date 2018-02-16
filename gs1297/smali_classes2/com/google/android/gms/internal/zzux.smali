.class abstract Lcom/google/android/gms/internal/zzux;
.super Lcom/google/android/gms/internal/zzzv$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/zzzv$zza",
        "<TR;",
        "Lcom/google/android/gms/internal/zzuz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzzv$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzvf;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzuz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzux;->zza(Lcom/google/android/gms/internal/zzuz;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzuz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzuz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzuz;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzvf;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzux;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzvf;)V

    return-void
.end method
