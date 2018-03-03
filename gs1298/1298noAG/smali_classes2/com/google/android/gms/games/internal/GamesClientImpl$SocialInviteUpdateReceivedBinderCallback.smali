.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SocialInviteUpdateReceivedBinderCallback"
.end annotation


# virtual methods
.method public zzab(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 3

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/games/social/SocialInviteBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/social/SocialInvite;

    invoke-interface {v0}, Lcom/google/android/gms/games/social/SocialInvite;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/social/SocialInvite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;-><init>(Lcom/google/android/gms/games/social/SocialInvite;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz$zzc;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public zzac(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 3

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/games/social/SocialInviteBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/social/SocialInvite;

    invoke-interface {v0}, Lcom/google/android/gms/games/social/SocialInvite;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/social/SocialInvite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteRemovedNotifier;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteRemovedNotifier;-><init>(Lcom/google/android/gms/games/social/SocialInvite;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz$zzc;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
