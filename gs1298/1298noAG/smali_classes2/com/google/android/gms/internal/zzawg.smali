.class public final Lcom/google/android/gms/internal/zzawg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/Account;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzawg$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/plus/Plus;->zzf(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/plus/internal/zze;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/zze;->zzNs()V

    :cond_0
    return-void
.end method

.method public getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/plus/Plus;->zzf(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/plus/internal/zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/zze;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public revokeAccessAndDisconnect(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingRemoteException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzawg$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzawg$1;-><init>(Lcom/google/android/gms/internal/zzawg;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method
