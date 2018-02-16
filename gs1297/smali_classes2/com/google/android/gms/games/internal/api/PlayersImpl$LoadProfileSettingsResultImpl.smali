.class abstract Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/PlayersImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LoadProfileSettingsResultImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;",
        ">;"
    }
.end annotation


# virtual methods
.method protected zzaG(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/player/ProfileSettingsEntity;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->zzcD(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/player/ProfileSettingsEntity;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl;->zzaG(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;

    move-result-object v0

    return-object v0
.end method
