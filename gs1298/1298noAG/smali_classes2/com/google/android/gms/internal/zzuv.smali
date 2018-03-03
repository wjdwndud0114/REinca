.class public final Lcom/google/android/gms/internal/zzuv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;


# instance fields
.field private final zzahq:Lcom/google/android/gms/common/api/Status;

.field private final zzaiH:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuv;->zzahq:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzuv;->zzaiH:Lcom/google/android/gms/auth/api/credentials/Credential;

    return-void
.end method

.method public static zzi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/zzuv;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzuv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzuv;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    return-object v0
.end method


# virtual methods
.method public getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuv;->zzaiH:Lcom/google/android/gms/auth/api/credentials/Credential;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuv;->zzahq:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
