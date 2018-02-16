.class public Lcom/google/android/gms/tagmanager/TagManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/TagManager$zza;
    }
.end annotation


# static fields
.field private static zzbGy:Lcom/google/android/gms/tagmanager/TagManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbCT:Lcom/google/android/gms/tagmanager/DataLayer;

.field private final zzbFs:Lcom/google/android/gms/tagmanager/zzt;

.field private final zzbGv:Lcom/google/android/gms/tagmanager/TagManager$zza;

.field private final zzbGw:Lcom/google/android/gms/tagmanager/zzdb;

.field private final zzbGx:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$zza;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzdb;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGw:Lcom/google/android/gms/tagmanager/zzdb;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGv:Lcom/google/android/gms/tagmanager/TagManager$zza;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGx:Ljava/util/concurrent/ConcurrentMap;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbCT:Lcom/google/android/gms/tagmanager/DataLayer;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbCT:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance v1, Lcom/google/android/gms/tagmanager/TagManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/TagManager$1;-><init>(Lcom/google/android/gms/tagmanager/TagManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Lcom/google/android/gms/tagmanager/DataLayer$zzb;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbCT:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzd;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/tagmanager/zzd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Lcom/google/android/gms/tagmanager/DataLayer$zzb;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbFs:Lcom/google/android/gms/tagmanager/zzt;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/TagManager;->zzPZ()V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/TagManager;->zzQa()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;
    .locals 5
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    const-class v1, Lcom/google/android/gms/tagmanager/TagManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGy:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "TagManager.getInstance requires non-null context."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/tagmanager/TagManager$2;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/TagManager$2;-><init>()V

    new-instance v2, Lcom/google/android/gms/tagmanager/zzx;

    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/zzx;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/gms/tagmanager/TagManager;

    new-instance v4, Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-direct {v4, v2}, Lcom/google/android/gms/tagmanager/DataLayer;-><init>(Lcom/google/android/gms/tagmanager/DataLayer$zzc;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdc;->zzPT()Lcom/google/android/gms/tagmanager/zzdc;

    move-result-object v2

    invoke-direct {v3, p0, v0, v4, v2}, Lcom/google/android/gms/tagmanager/TagManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$zza;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzdb;)V

    sput-object v3, Lcom/google/android/gms/tagmanager/TagManager;->zzbGy:Lcom/google/android/gms/tagmanager/TagManager;

    :cond_1
    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGy:Lcom/google/android/gms/tagmanager/TagManager;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private zzPZ()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/tagmanager/TagManager$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/TagManager$3;-><init>(Lcom/google/android/gms/tagmanager/TagManager;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method

.method private zzQa()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zza;->zzbA(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/TagManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/TagManager;->zzhv(Ljava/lang/String;)V

    return-void
.end method

.method private zzhv(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGx:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzo;->zzgX(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGw:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdb;->dispatch()V

    return-void
.end method

.method public getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbCT:Lcom/google/android/gms/tagmanager/DataLayer;

    return-object v0
.end method

.method public loadContainerDefaultOnly(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGv:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbFs:Lcom/google/android/gms/tagmanager/zzt;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzOF()V

    return-object v0
.end method

.method public loadContainerDefaultOnly(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGv:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbFs:Lcom/google/android/gms/tagmanager/zzt;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzOF()V

    return-object v0
.end method

.method public loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGv:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbFs:Lcom/google/android/gms/tagmanager/zzt;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzOH()V

    return-object v0
.end method

.method public loadContainerPreferFresh(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGv:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbFs:Lcom/google/android/gms/tagmanager/zzt;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzOH()V

    return-object v0
.end method

.method public loadContainerPreferNonDefault(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGv:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbFs:Lcom/google/android/gms/tagmanager/zzt;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzOG()V

    return-object v0
.end method

.method public loadContainerPreferNonDefault(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGv:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbFs:Lcom/google/android/gms/tagmanager/zzt;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzOG()V

    return-object v0
.end method

.method public setVerboseLoggingEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->setLogLevel(I)V

    return-void

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/tagmanager/zzo;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGx:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzo;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGx:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public zzb(Lcom/google/android/gms/tagmanager/zzo;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGx:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzo;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized zzv(Landroid/net/Uri;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcj;->zzPz()Lcom/google/android/gms/tagmanager/zzcj;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/tagmanager/zzcj;->zzv(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzcj;->getContainerId()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager$4;->zzbGA:[I

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzcj;->zzPA()Lcom/google/android/gms/tagmanager/zzcj$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzcj$zza;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGx:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzo;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzo;->zzgZ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->refresh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGx:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbGx:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzcj;->zzPB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzo;->zzgZ(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzo;->refresh()V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzo;->zzOC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzo;->zzgZ(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzo;->refresh()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
