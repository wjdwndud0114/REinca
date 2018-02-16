.class abstract Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGameInstancesImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LoadGameInstancesImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/GamesMetadata$LoadGameInstancesResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public zzat(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/GamesMetadata$LoadGameInstancesResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGameInstancesImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGameInstancesImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGameInstancesImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGameInstancesImpl;->zzat(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/GamesMetadata$LoadGameInstancesResult;

    move-result-object v0

    return-object v0
.end method
