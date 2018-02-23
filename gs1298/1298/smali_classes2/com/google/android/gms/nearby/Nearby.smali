.class public final Lcom/google/android/gms/nearby/Nearby;
.super Ljava/lang/Object;


# static fields
.field public static final CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final Connections:Lcom/google/android/gms/nearby/connection/Connections;

.field public static final MESSAGES_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessagesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final Messages:Lcom/google/android/gms/nearby/messages/Messages;

.field public static final zzbwG:Lcom/google/android/gms/nearby/messages/zzc;

.field public static final zzbwH:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbwI:Lcom/google/android/gms/internal/zzaui;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Nearby.CONNECTIONS_API"

    sget-object v2, Lcom/google/android/gms/internal/zzavk;->zzahd:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzavk;->zzahc:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzavk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzavk;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->Connections:Lcom/google/android/gms/nearby/connection/Connections;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Nearby.MESSAGES_API"

    sget-object v2, Lcom/google/android/gms/nearby/messages/internal/zzy;->zzahd:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/nearby/messages/internal/zzy;->zzahc:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->MESSAGES_API:Lcom/google/android/gms/common/api/Api;

    sget-object v0, Lcom/google/android/gms/nearby/messages/internal/zzy;->zzbyO:Lcom/google/android/gms/nearby/messages/internal/zzy;

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->Messages:Lcom/google/android/gms/nearby/messages/Messages;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzz;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzbwG:Lcom/google/android/gms/nearby/messages/zzc;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Nearby.BOOTSTRAP_API"

    sget-object v2, Lcom/google/android/gms/internal/zzaum;->zzahd:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzaum;->zzahc:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzbwH:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzaum;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaum;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/Nearby;->zzbwI:Lcom/google/android/gms/internal/zzaui;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
