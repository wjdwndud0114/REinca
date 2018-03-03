.class public final Lcom/google/android/gms/games/snapshot/SnapshotEntity;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshot;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/snapshot/SnapshotEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzbeF:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

.field private final zzbeG:Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->mVersionCode:I

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-direct {v0, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->zzbeF:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    iput-object p3, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->zzbeG:Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(ILcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    return-void
.end method

.method private isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->zzbeG:Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->isClosed()Z

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/snapshot/Snapshot;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/snapshot/Snapshot;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static zzb(Lcom/google/android/gms/games/snapshot/Snapshot;)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zzc(Lcom/google/android/gms/games/snapshot/Snapshot;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Metadata"

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v1

    const-string v2, "HasContents"

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->zza(Lcom/google/android/gms/games/snapshot/Snapshot;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/snapshot/Snapshot;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->freeze()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->zzbeF:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    return-object v0
.end method

.method public getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->zzbeG:Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->zzb(Lcom/google/android/gms/games/snapshot/Snapshot;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->zzc(Lcom/google/android/gms/games/snapshot/Snapshot;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;->zza(Lcom/google/android/gms/games/snapshot/SnapshotEntity;Landroid/os/Parcel;I)V

    return-void
.end method
