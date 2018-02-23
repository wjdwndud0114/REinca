.class public Lcom/google/android/gms/auth/api/signin/internal/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->zzahT:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzd;->zzqU()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object v0

    return-object v0
.end method

.method public revokeAccess(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
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

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
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

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public silentSignIn(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/OptionalPendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/OptionalPendingResult",
            "<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/common/api/OptionalPendingResult;

    move-result-object v0

    return-object v0
.end method
