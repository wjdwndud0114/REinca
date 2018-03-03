.class Lcom/google/android/gms/games/internal/api/PlayersImpl$6;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/PlayersImpl;->loadRecentlyPlayedWithPlayers(Lcom/google/android/gms/common/api/GoogleApiClient;IZ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbaL:Z

.field final synthetic zzbbd:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/PlayersImpl;Lcom/google/android/gms/common/api/GoogleApiClient;IZ)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$6;->zzbbd:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$6;->zzbaL:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$6;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "played_with"

    iget v3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$6;->zzbbd:I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$6;->zzbaL:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzzv$zzb;Ljava/lang/String;IZZ)V

    return-void
.end method
