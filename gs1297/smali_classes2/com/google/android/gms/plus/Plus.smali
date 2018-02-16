.class public final Lcom/google/android/gms/plus/Plus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/Plus$zza;,
        Lcom/google/android/gms/plus/Plus$PlusOptions;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/plus/Plus$PlusOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AccountApi:Lcom/google/android/gms/plus/Account;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PeopleApi:Lcom/google/android/gms/plus/People;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

.field public static final zzahc:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/plus/internal/zze;",
            ">;"
        }
    .end annotation
.end field

.field static final zzahd:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/plus/internal/zze;",
            "Lcom/google/android/gms/plus/Plus$PlusOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbzG:Lcom/google/android/gms/plus/zzb;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzbzH:Lcom/google/android/gms/plus/zza;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->zzahc:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/plus/Plus$1;

    invoke-direct {v0}, Lcom/google/android/gms/plus/Plus$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->zzahd:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Plus.API"

    sget-object v2, Lcom/google/android/gms/plus/Plus;->zzahd:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/plus/Plus;->zzahc:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/plus.me"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/internal/zzawj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzawj;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    new-instance v0, Lcom/google/android/gms/internal/zzawg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzawg;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    new-instance v0, Lcom/google/android/gms/internal/zzawi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzawi;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->zzbzG:Lcom/google/android/gms/plus/zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzawh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzawh;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->zzbzH:Lcom/google/android/gms/plus/zza;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzf(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/plus/internal/zze;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "GoogleApiClient parameter is required."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "GoogleApiClient must be connected."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient has an optional Plus.API and is not connected to Plus. Use GoogleApiClient.hasConnectedApi(Plus.API) to guard this call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/plus/Plus;->zzahc:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zze;

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
