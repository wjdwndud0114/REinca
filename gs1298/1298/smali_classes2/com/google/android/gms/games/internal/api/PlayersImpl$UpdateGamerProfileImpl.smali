.class abstract Lcom/google/android/gms/games/internal/api/PlayersImpl$UpdateGamerProfileImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/PlayersImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "UpdateGamerProfileImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/Players$UpdateGamerProfileResult;",
        ">;"
    }
.end annotation


# virtual methods
.method protected zzaK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$UpdateGamerProfileResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/PlayersImpl$UpdateGamerProfileImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$UpdateGamerProfileImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/PlayersImpl$UpdateGamerProfileImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$UpdateGamerProfileImpl;->zzaK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$UpdateGamerProfileResult;

    move-result-object v0

    return-object v0
.end method
