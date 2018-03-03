.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
.super Lcom/google/android/gms/common/data/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/zzf",
        "<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboard;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/zzf;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzn(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->zzp(II)Lcom/google/android/gms/games/leaderboard/Leaderboard;

    move-result-object v0

    return-object v0
.end method

.method protected zzp(II)Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;

    iget-object v1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->zzazI:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0
.end method

.method protected zzwG()Ljava/lang/String;
    .locals 1

    const-string v0, "external_leaderboard_id"

    return-object v0
.end method
