.class public Lcom/google/android/gms/drive/metadata/internal/zzn;
.super Lcom/google/android/gms/drive/metadata/internal/zzk;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzk",
        "<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;",
        "Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField",
        "<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzaNz:Lcom/google/android/gms/drive/metadata/internal/zzf$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzn$1;

    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/zzn$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/zzn;->zzaNz:Lcom/google/android/gms/drive/metadata/internal/zzf$zza;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const-string v0, "parents"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "parentsExtra"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "dbInstanceId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "parentsExtraHolder"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/drive/metadata/internal/zzk;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method

.method private zzc(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 14

    const/4 v1, 0x0

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzwy()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "parentsExtraHolder"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    if-nez v0, :cond_0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/data/DataHolder;->zzcC(I)I

    move-result v6

    new-instance v7, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;

    invoke-direct {v7}, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;-><init>()V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "sqlId"

    invoke-virtual {p1, v8, v2, v6}, Lcom/google/android/gms/common/data/DataHolder;->zzb(Ljava/lang/String;II)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->zzwy()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "childSqlIdColumn"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "parentSqlIdColumn"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "parentResIdColumn"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v8

    move v2, v1

    :goto_2
    if-ge v2, v8, :cond_2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/DataHolder;->zzcC(I)I

    move-result v9

    invoke-virtual {v0, v3, v2, v9}, Lcom/google/android/gms/common/data/DataHolder;->zzb(Ljava/lang/String;II)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;

    new-instance v10, Lcom/google/android/gms/drive/metadata/internal/zzo;

    invoke-virtual {v0, v7, v2, v9}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v6, v2, v9}, Lcom/google/android/gms/common/data/DataHolder;->zzb(Ljava/lang/String;II)J

    move-result-wide v12

    const/4 v9, 0x1

    invoke-direct {v10, v11, v12, v13, v9}, Lcom/google/android/gms/drive/metadata/internal/zzo;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;->zza(Lcom/google/android/gms/drive/metadata/internal/zzo;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzwy()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "parentsExtra"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzwy()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "parentsExtraHolder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    monitor-exit p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzwy()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "parentsExtraHolder"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private static zzd(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zzwy()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v0, "parentsExtraHolder"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    const-string v0, "parentsExtraHolder"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/drive/metadata/internal/zzn;->zzd(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/zzn;->zzd(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected zzd(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "II)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzwy()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "parentsExtra"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "parentsExtraHolder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzn;->zzc(Lcom/google/android/gms/common/data/DataHolder;)V

    const-string v0, "parentsExtra"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v2, "dbInstanceId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;->zzK(J)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic zzt(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzn;->zzy(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected zzy(Landroid/os/Bundle;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzy(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
