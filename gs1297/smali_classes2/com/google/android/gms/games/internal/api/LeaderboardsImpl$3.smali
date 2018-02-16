.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;->loadCurrentPlayerLeaderboardScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbaS:Ljava/lang/String;

.field final synthetic zzbaT:I

.field final synthetic zzbaU:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zzbaS:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zzbaT:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zzbaU:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zzbaS:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zzbaT:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zzbaU:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzzv$zzb;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
