.class public final Lcom/google/android/gms/internal/zzawj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/People;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzawj$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPerson(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/plus/model/people/Person;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/plus/Plus;->zzf(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/plus/internal/zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/zze;->zzNu()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method

.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)Lcom/google/android/gms/common/api/PendingResult;
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
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzawj$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzawj$4;-><init>(Lcom/google/android/gms/internal/zzawj;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public varargs load(Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
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
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzawj$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzawj$5;-><init>(Lcom/google/android/gms/internal/zzawj;Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public loadConnected(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
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
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzawj$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzawj$3;-><init>(Lcom/google/android/gms/internal/zzawj;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
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
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzawj$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzawj$1;-><init>(Lcom/google/android/gms/internal/zzawj;Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
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
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzawj$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzawj$2;-><init>(Lcom/google/android/gms/internal/zzawj;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method
