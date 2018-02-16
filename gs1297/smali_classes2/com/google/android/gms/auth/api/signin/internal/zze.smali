.class public final Lcom/google/android/gms/auth/api/signin/internal/zze;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/internal/zze$zza;
    }
.end annotation


# static fields
.field private static zzajs:Lcom/google/android/gms/internal/zzace;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzace;

    const-string v1, "GoogleSignInCommon"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzace;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzajs:Lcom/google/android/gms/internal/zzace;

    return-void
.end method

.method public static getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "googleSignInStatus"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "googleSignInAccount"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "googleSignInAccount"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const-string v1, "googleSignInStatus"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzayh:Lcom/google/android/gms/common/api/Status;

    :cond_2
    new-instance v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 5

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzajs:Lcom/google/android/gms/internal/zzace;

    const-string v1, "GoogleSignInCommon"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getSignInIntent()"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzace;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "config"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v1
.end method

.method static zza(Lcom/google/android/gms/auth/api/signin/internal/zzl;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzajs:Lcom/google/android/gms/internal/zzace;

    const-string v2, "GoogleSignInCommon"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "getEligibleSavedSignInResult()"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzace;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzl;->zzrd()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zza(Landroid/accounts/Account;Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzqL()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzqK()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzqK()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzqN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzqN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzqJ()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzqJ()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzl;->zzrc()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zza()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzayh:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method public static zza(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/common/api/OptionalPendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ")",
            "Lcom/google/android/gms/common/api/OptionalPendingResult",
            "<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzl;->zzaa(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzl;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zza(Lcom/google/android/gms/auth/api/signin/internal/zzl;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzajs:Lcom/google/android/gms/internal/zzace;

    const-string v2, "GoogleSignInCommon"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Eligible saved sign in result found"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzace;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1, p0}, Lcom/google/android/gms/common/api/PendingResults;->zzb(Lcom/google/android/gms/common/api/Result;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/OptionalPendingResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0, p2}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/signin/internal/zzl;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/common/api/OptionalPendingResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/signin/internal/zzl;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/common/api/OptionalPendingResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/auth/api/signin/internal/zzl;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ")",
            "Lcom/google/android/gms/common/api/OptionalPendingResult",
            "<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzajs:Lcom/google/android/gms/internal/zzace;

    const-string v1, "GoogleSignInCommon"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "trySilentSignIn()"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzace;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zze$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/internal/zze$1;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/signin/internal/zzl;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzabc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzabc;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzl;->zzaa(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzl;->zzre()V

    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzuM()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzuN()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zze$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/zze$2;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method private static zza(Landroid/accounts/Account;Landroid/accounts/Account;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzl;->zzaa(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzl;->zzre()V

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzajs:Lcom/google/android/gms/internal/zzace;

    const-string v1, "GoogleSignInCommon"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Revoking access"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzace;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzuM()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzuN()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zze$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/zze$3;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method
