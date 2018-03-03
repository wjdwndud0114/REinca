.class final Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpenSnapshotResultImpl"
.end annotation


# instance fields
.field private final zzaZS:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final zzaZT:Ljava/lang/String;

.field private final zzaZU:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final zzaZV:Lcom/google/android/gms/drive/zzc;

.field private final zzaZW:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/zzc;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/zzc;Lcom/google/android/gms/drive/zzc;Lcom/google/android/gms/drive/zzc;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/zzc;Lcom/google/android/gms/drive/zzc;Lcom/google/android/gms/drive/zzc;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v2, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->zzaZS:Lcom/google/android/gms/games/snapshot/Snapshot;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->zzaZU:Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->release()V

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->zzaZT:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->zzaZV:Lcom/google/android/gms/drive/zzc;

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v0, p5}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->zzaZW:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    move-result v3

    if-ne v3, v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v3

    const/16 v4, 0xfa4

    if-eq v3, v4, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzc;->zzar(Z)V

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v3, p3}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/zzc;)V

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->zzaZS:Lcom/google/android/gms/games/snapshot/Snapshot;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->zzaZU:Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->release()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :try_start_2
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v3, p3}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/zzc;)V

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->zzaZS:Lcom/google/android/gms/games/snapshot/Snapshot;

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v3, p4}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/zzc;)V

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->zzaZU:Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getConflictId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->zzaZT:Ljava/lang/String;

    return-object v0
.end method

.method public getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->zzaZU:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-object v0
.end method

.method public getResolutionSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->zzaZW:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-object v0
.end method

.method public getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->zzaZS:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-object v0
.end method
