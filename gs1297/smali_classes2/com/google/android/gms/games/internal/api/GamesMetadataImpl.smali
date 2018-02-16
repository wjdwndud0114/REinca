.class public final Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/GamesMetadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGameSearchSuggestionsImpl;,
        Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGameInstancesImpl;,
        Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentGame(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Game;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzEd()Lcom/google/android/gms/games/Game;

    move-result-object v0

    return-object v0
.end method

.method public loadGame(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method
