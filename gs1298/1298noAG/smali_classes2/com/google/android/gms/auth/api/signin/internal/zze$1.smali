.class final Lcom/google/android/gms/auth/api/signin/internal/zze$1;
.super Lcom/google/android/gms/auth/api/signin/internal/zze$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/signin/internal/zze;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/signin/internal/zzl;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/common/api/OptionalPendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/signin/internal/zze$zza",
        "<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzajt:Lcom/google/android/gms/auth/api/signin/internal/zzl;

.field final synthetic zzaju:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/signin/internal/zzl;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zze$1;->zzajt:Lcom/google/android/gms/auth/api/signin/internal/zzl;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/zze$1;->zzaju:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

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

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zze$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zze$1$1;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zze$1;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/internal/zze$1;->zzaju:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/zzi;->zza(Lcom/google/android/gms/auth/api/signin/internal/zzh;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zze$1;->zza(Lcom/google/android/gms/auth/api/signin/internal/zzd;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zze$1;->zzn(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzn(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
