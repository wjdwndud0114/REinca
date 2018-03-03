.class Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;
.super Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/AchievementsImpl;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbaL:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 1

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;->zzbaL:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;->zzbaL:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzc(Lcom/google/android/gms/internal/zzzv$zzb;Z)V

    return-void
.end method
