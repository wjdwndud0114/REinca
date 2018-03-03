.class public final Lcom/google/android/gms/games/internal/api/SnapshotsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/api/SnapshotsImpl$DeleteImpl;,
        Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl;,
        Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;,
        Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commitAndClose(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;-><init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$4;-><init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public discardAndClose(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/games/snapshot/Snapshot;)V

    return-void
.end method

.method public getMaxCoverImageSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzEu()I

    move-result v0

    return v0
.end method

.method public getMaxDataSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzEt()I

    move-result v0

    return v0
.end method

.method public getSelectSnapshotIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZZI)Landroid/content/Intent;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshotFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "com.google.android.gms.games.SNAPSHOT_METADATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "com.google.android.gms.games.SNAPSHOT_METADATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    goto :goto_0
.end method

.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZI)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZI)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZI)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$2;-><init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZI)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;"
        }
    .end annotation

    invoke-interface {p3}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->fromMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl;->resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            "Lcom/google/android/gms/games/snapshot/SnapshotContents;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;-><init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method
