.class Lcom/google/android/gms/internal/zzuw$1;
.super Lcom/google/android/gms/internal/zzux;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzuw;->request(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzux",
        "<",
        "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaiI:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzuw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzuw$1;->zzaiI:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzux;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzvf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzuw$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzuw$1$1;-><init>(Lcom/google/android/gms/internal/zzuw$1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuw$1;->zzaiI:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zzvf;->zza(Lcom/google/android/gms/internal/zzve;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuw$1;->zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzuv;->zzi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/zzuv;

    move-result-object v0

    return-object v0
.end method
