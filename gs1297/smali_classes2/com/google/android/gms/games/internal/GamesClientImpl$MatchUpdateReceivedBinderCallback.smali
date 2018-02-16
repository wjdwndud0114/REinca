.class final Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchUpdateReceivedBinderCallback"
.end annotation


# instance fields
.field private final zzaLP:Lcom/google/android/gms/internal/zzaaz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->zzaLP:Lcom/google/android/gms/internal/zzaaz;

    return-void
.end method


# virtual methods
.method public onTurnBasedMatchRemoved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->zzaLP:Lcom/google/android/gms/internal/zzaaz;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedNotifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz$zzc;)V

    return-void
.end method

.method public zzy(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 3

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->release()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->zzaLP:Lcom/google/android/gms/internal/zzaaz;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedNotifier;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedNotifier;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz$zzc;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->release()V

    throw v0
.end method
