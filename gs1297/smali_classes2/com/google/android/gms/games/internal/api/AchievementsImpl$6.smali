.class Lcom/google/android/gms/games/internal/api/AchievementsImpl$6;
.super Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/AchievementsImpl;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;

.field final synthetic zzbaM:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$6;->val$id:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$6;->zzbaM:I

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$6;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$6;->val$id:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$6;->zzbaM:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzzv$zzb;Ljava/lang/String;I)V

    return-void
.end method
