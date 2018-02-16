.class public final Lcom/google/android/gms/games/internal/api/EventsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/event/Events;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;,
        Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingRemoteException"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzo(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/games/internal/api/EventsImpl$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/games/internal/api/EventsImpl$3;-><init>(Lcom/google/android/gms/games/internal/api/EventsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    goto :goto_0
.end method

.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/EventsImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/games/internal/api/EventsImpl$2;-><init>(Lcom/google/android/gms/games/internal/api/EventsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public varargs loadByIds(Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/EventsImpl$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/games/internal/api/EventsImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/EventsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method
