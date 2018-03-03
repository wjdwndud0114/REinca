.class public Lcom/google/android/gms/internal/zzali;
.super Lcom/google/android/gms/drive/metadata/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzl",
        "<",
        "Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzaOr:Lcom/google/android/gms/drive/metadata/internal/zzf$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzali$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzali$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzali;->zzaOr:Lcom/google/android/gms/drive/metadata/internal/zzf$zza;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "customProperties"

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "hasCustomProperties"

    aput-object v2, v1, v4

    const-string v2, "sqlId"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "customPropertiesExtra"

    aput-object v3, v2, v4

    const-string v3, "customPropertiesExtraHolder"

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/drive/metadata/internal/zzl;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zzwy()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "customPropertiesExtraHolder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    if-nez v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzali;->zzf(Lcom/google/android/gms/common/data/DataHolder;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v3

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_2

    const-string v1, "sqlId"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/data/DataHolder;->zzcC(I)I

    move-result v5

    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/common/data/DataHolder;->zzb(Ljava/lang/String;II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zzAE()Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zzwy()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "customPropertiesExtra"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zzwy()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "customPropertiesExtraHolder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zzwy()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "customPropertiesExtraHolder"

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
    const-string v0, "customPropertiesExtraHolder"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    const-string v0, "customPropertiesExtraHolder"

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

    invoke-static {p0}, Lcom/google/android/gms/internal/zzali;->zzd(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method private static zzf(Lcom/google/android/gms/common/data/DataHolder;)Landroid/support/v4/util/LongSparseArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zzwy()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "entryIdColumn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "keyColumn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "visibilityColumn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "valueColumn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v6}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/data/DataHolder;->zzcC(I)I

    move-result v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/common/data/DataHolder;->zzb(Ljava/lang/String;II)J

    move-result-wide v8

    invoke-virtual {p0, v3, v1, v0}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/common/data/DataHolder;->zzc(Ljava/lang/String;II)I

    move-result v10

    invoke-virtual {p0, v5, v1, v0}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lcom/google/android/gms/drive/metadata/internal/zzc;

    new-instance v12, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    invoke-direct {v12, v7, v10}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;-><init>(Ljava/lang/String;I)V

    invoke-direct {v11, v12, v0}, Lcom/google/android/gms/drive/metadata/internal/zzc;-><init>(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;-><init>()V

    invoke-virtual {v6, v8, v9, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, v11}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zza(Lcom/google/android/gms/drive/metadata/internal/zzc;)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v6
.end method


# virtual methods
.method protected synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzali;->zzl(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    move-result-object v0

    return-object v0
.end method

.method protected zzl(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzwy()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "customPropertiesExtra"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "customPropertiesExtraHolder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzali;->zzc(Lcom/google/android/gms/common/data/DataHolder;)V

    const-string v0, "customPropertiesExtra"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;->zzaNq:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;->zzaNq:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    goto :goto_0
.end method
