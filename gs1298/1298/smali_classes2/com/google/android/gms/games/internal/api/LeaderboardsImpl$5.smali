.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;->loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbaL:Z

.field final synthetic zzbaS:Ljava/lang/String;

.field final synthetic zzbaT:I

.field final synthetic zzbaU:I

.field final synthetic zzbaV:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzbaS:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzbaT:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzbaU:I

    iput p6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzbaV:I

    iput-boolean p7, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzbaL:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzbaS:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzbaT:I

    iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzbaU:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzbaV:I

    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzbaL:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzzv$zzb;Ljava/lang/String;IIIZ)V

    return-void
.end method
