.class abstract Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/PlayersImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LoadPlayersImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzaF(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$LoadPlayersResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;->zzaF(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$LoadPlayersResult;

    move-result-object v0

    return-object v0
.end method
