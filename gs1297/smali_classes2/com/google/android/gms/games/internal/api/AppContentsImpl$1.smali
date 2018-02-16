.class Lcom/google/android/gms/games/internal/api/AppContentsImpl$1;
.super Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/AppContentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AppContentsImpl$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzzv$zzb;ILjava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method
