.class public final Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LoadMatchImpl;,
        Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LoadMatchesImpl;,
        Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$CancelMatchImpl;,
        Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LeaveMatchImpl;,
        Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$UpdateMatchImpl;,
        Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$InitiateMatchImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$3;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public cancelMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$8;

    invoke-direct {v0, p0, p2, p1, p2}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$8;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public createMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public declineInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzq(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public dismissInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzp(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public dismissMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzeq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;->finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;"
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;->finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    goto :goto_0
.end method

.method public varargs finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[B[",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$5;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public getInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzEg()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMaxMatchDataSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzEp()I

    move-result v0

    return v0
.end method

.method public getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;II)Landroid/content/Intent;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(IIZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;IIZ)Landroid/content/Intent;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(IIZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public leaveMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$6;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public leaveMatchDuringTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$7;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public loadMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$10;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public loadMatchesByStatus(Lcom/google/android/gms/common/api/GoogleApiClient;I[I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I[I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public loadMatchesByStatus(Lcom/google/android/gms/common/api/GoogleApiClient;[I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "[I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;->loadMatchesByStatus(Lcom/google/android/gms/common/api/GoogleApiClient;I[I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public registerMatchUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaaz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzaaz;)V

    :cond_0
    return-void
.end method

.method public rematch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$2;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;->takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;"
        }
    .end annotation

    if-nez p5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;->takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    invoke-interface {p5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-object v5, v0

    goto :goto_0
.end method

.method public varargs takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public unregisterMatchUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzEj()V

    :cond_0
    return-void
.end method
