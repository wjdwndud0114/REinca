.class public interface abstract Lcom/google/android/gms/games/stats/Stats;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;
    }
.end annotation


# virtual methods
.method public abstract loadPlayerStats(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;",
            ">;"
        }
    .end annotation
.end method
