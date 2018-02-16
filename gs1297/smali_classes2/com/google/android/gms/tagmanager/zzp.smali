.class public Lcom/google/android/gms/tagmanager/zzp;
.super Lcom/google/android/gms/internal/zzzx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzp$zzd;,
        Lcom/google/android/gms/tagmanager/zzp$zzc;,
        Lcom/google/android/gms/tagmanager/zzp$zzb;,
        Lcom/google/android/gms/tagmanager/zzp$zza;,
        Lcom/google/android/gms/tagmanager/zzp$zze;,
        Lcom/google/android/gms/tagmanager/zzp$zzf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzzx",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbCS:Ljava/lang/String;

.field private zzbCX:J

.field private final zzbDe:Lcom/google/android/gms/tagmanager/TagManager;

.field private final zzbDh:Lcom/google/android/gms/tagmanager/zzp$zzd;

.field private final zzbDi:Lcom/google/android/gms/tagmanager/zzcl;

.field private final zzbDj:I

.field private final zzbDk:Lcom/google/android/gms/tagmanager/zzq;

.field private zzbDl:Lcom/google/android/gms/tagmanager/zzp$zzf;

.field private zzbDm:Lcom/google/android/gms/internal/zzbgh;

.field private volatile zzbDn:Lcom/google/android/gms/tagmanager/zzo;

.field private volatile zzbDo:Z

.field private zzbDp:Lcom/google/android/gms/internal/zzai$zzj;

.field private zzbDq:Ljava/lang/String;

.field private zzbDr:Lcom/google/android/gms/tagmanager/zzp$zze;

.field private zzbDs:Lcom/google/android/gms/tagmanager/zzp$zza;

.field private final zzrx:Landroid/os/Looper;

.field private final zzuI:Lcom/google/android/gms/common/util/zze;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzp$zzf;Lcom/google/android/gms/tagmanager/zzp$zze;Lcom/google/android/gms/internal/zzbgh;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/tagmanager/zzcl;Lcom/google/android/gms/tagmanager/zzq;)V
    .locals 2

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzzx;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDe:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzrx:Landroid/os/Looper;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbCS:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDj:I

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDl:Lcom/google/android/gms/tagmanager/zzp$zzf;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDr:Lcom/google/android/gms/tagmanager/zzp$zze;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDm:Lcom/google/android/gms/internal/zzbgh;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzp$zzd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzd;-><init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDh:Lcom/google/android/gms/tagmanager/zzp$zzd;

    new-instance v0, Lcom/google/android/gms/internal/zzai$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzai$zzj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDp:Lcom/google/android/gms/internal/zzai$zzj;

    iput-object p9, p0, Lcom/google/android/gms/tagmanager/zzp;->zzuI:Lcom/google/android/gms/common/util/zze;

    iput-object p10, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDi:Lcom/google/android/gms/tagmanager/zzcl;

    iput-object p11, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDk:Lcom/google/android/gms/tagmanager/zzq;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp;->zzOI()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcj;->zzPz()Lcom/google/android/gms/tagmanager/zzcj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcj;->zzPB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzgZ(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move-object v0, p3

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)V
    .locals 18

    new-instance v4, Lcom/google/android/gms/tagmanager/zzcv;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/tagmanager/zzcv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v16, Lcom/google/android/gms/tagmanager/zzcu;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzcu;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzt;)V

    new-instance v14, Lcom/google/android/gms/internal/zzbgh;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/google/android/gms/internal/zzbgh;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzyv()Lcom/google/android/gms/common/util/zze;

    move-result-object v15

    new-instance v5, Lcom/google/android/gms/tagmanager/zzbm;

    const/4 v6, 0x1

    const/4 v7, 0x5

    const-wide/32 v8, 0xdbba0

    const-wide/16 v10, 0x1388

    const-string v12, "refreshing"

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzyv()Lcom/google/android/gms/common/util/zze;

    move-result-object v13

    invoke-direct/range {v5 .. v13}, Lcom/google/android/gms/tagmanager/zzbm;-><init>(IIJJLjava/lang/String;Lcom/google/android/gms/common/util/zze;)V

    new-instance v17, Lcom/google/android/gms/tagmanager/zzq;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object v12, v4

    move-object/from16 v13, v16

    move-object/from16 v16, v5

    invoke-direct/range {v6 .. v17}, Lcom/google/android/gms/tagmanager/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzp$zzf;Lcom/google/android/gms/tagmanager/zzp$zze;Lcom/google/android/gms/internal/zzbgh;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/tagmanager/zzcl;Lcom/google/android/gms/tagmanager/zzq;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/tagmanager/zzp;->zzbDm:Lcom/google/android/gms/internal/zzbgh;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/tagmanager/zzt;->zzOQ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzbgh;->zzij(Ljava/lang/String;)V

    return-void
.end method

.method private zzOI()Z
    .locals 3

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcj;->zzPz()Lcom/google/android/gms/tagmanager/zzcj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcj;->zzPA()Lcom/google/android/gms/tagmanager/zzcj$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbFg:Lcom/google/android/gms/tagmanager/zzcj$zza;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcj;->zzPA()Lcom/google/android/gms/tagmanager/zzcj$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbFh:Lcom/google/android/gms/tagmanager/zzcj$zza;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbCS:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcj;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzcl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDi:Lcom/google/android/gms/tagmanager/zzcl;

    return-object v0
.end method

.method private declared-synchronized zza(Lcom/google/android/gms/internal/zzai$zzj;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDl:Lcom/google/android/gms/tagmanager/zzp$zzf;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbgg$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbgg$zza;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbCX:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLh:J

    new-instance v1, Lcom/google/android/gms/internal/zzai$zzf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzai$zzf;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDl:Lcom/google/android/gms/tagmanager/zzp$zzf;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zzb(Lcom/google/android/gms/internal/zzbgg$zza;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized zza(Lcom/google/android/gms/internal/zzai$zzj;JZ)V
    .locals 8

    monitor-enter p0

    if-eqz p4, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDo:Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzp;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDn:Lcom/google/android/gms/tagmanager/zzo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDp:Lcom/google/android/gms/internal/zzai$zzj;

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbCX:J

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDk:Lcom/google/android/gms/tagmanager/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzq;->zzOL()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbCX:J

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/zzp;->zzuI:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzav(J)V

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDe:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbCS:Ljava/lang/String;

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/zzai$zzj;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDn:Lcom/google/android/gms/tagmanager/zzo;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/gms/tagmanager/zzo;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDe:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzrx:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDh:Lcom/google/android/gms/tagmanager/zzp$zzd;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDn:Lcom/google/android/gms/tagmanager/zzo;

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzp;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDs:Lcom/google/android/gms/tagmanager/zzp$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzp$zza;->zzb(Lcom/google/android/gms/tagmanager/Container;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDn:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDn:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzo;->zza(Lcom/google/android/gms/tagmanager/Container;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzp;->zzav(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzai$zzj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/internal/zzai$zzj;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzai$zzj;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/internal/zzai$zzj;JZ)V

    return-void
.end method

.method private zzaL(Z)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDl:Lcom/google/android/gms/tagmanager/zzp$zzf;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzp$zzb;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzp$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zza(Lcom/google/android/gms/tagmanager/zzbn;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDr:Lcom/google/android/gms/tagmanager/zzp$zze;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzp$zzc;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzp$zzc;-><init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zza(Lcom/google/android/gms/tagmanager/zzbn;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDl:Lcom/google/android/gms/tagmanager/zzp$zzf;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDj:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zzmO(I)Lcom/google/android/gms/internal/zzbgi$zzc;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Lcom/google/android/gms/tagmanager/zzo;

    iget-object v8, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDe:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v9, p0, Lcom/google/android/gms/tagmanager/zzp;->zzrx:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDe:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbCS:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/zzbgi$zzc;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDh:Lcom/google/android/gms/tagmanager/zzp$zzd;

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V

    iput-object v7, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDn:Lcom/google/android/gms/tagmanager/zzo;

    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzp$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzp$3;-><init>(Lcom/google/android/gms/tagmanager/zzp;Z)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDs:Lcom/google/android/gms/tagmanager/zzp$zza;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp;->zzOI()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDr:Lcom/google/android/gms/tagmanager/zzp$zze;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zzf(JLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDl:Lcom/google/android/gms/tagmanager/zzp$zzf;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zzOK()V

    goto :goto_0
.end method

.method private declared-synchronized zzav(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDr:Lcom/google/android/gms/tagmanager/zzp$zze;

    if-nez v0, :cond_0

    const-string v0, "Refresh requested, but no network load scheduler."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbe(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDr:Lcom/google/android/gms/tagmanager/zzp$zze;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDp:Lcom/google/android/gms/internal/zzai$zzj;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zzf(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDn:Lcom/google/android/gms/tagmanager/zzo;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDk:Lcom/google/android/gms/tagmanager/zzq;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzuI:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/tagmanager/zzp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDo:Z

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zzai$zzj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDp:Lcom/google/android/gms/internal/zzai$zzj;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/tagmanager/zzp;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbCX:J

    return-wide v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/tagmanager/zzp;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp;->zzOI()Z

    move-result v0

    return v0
.end method


# virtual methods
.method declared-synchronized zzOC()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDq:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zzOF()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDl:Lcom/google/android/gms/tagmanager/zzp$zzf;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDj:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zzmO(I)Lcom/google/android/gms/internal/zzbgi$zzc;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDe:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbCS:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/zzbgi$zzc;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/zzo;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDe:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzrx:Landroid/os/Looper;

    new-instance v4, Lcom/google/android/gms/tagmanager/zzp$2;

    invoke-direct {v4, p0}, Lcom/google/android/gms/tagmanager/zzp$2;-><init>(Lcom/google/android/gms/tagmanager/zzp;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    iput-object v7, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDr:Lcom/google/android/gms/tagmanager/zzp$zze;

    iput-object v7, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDl:Lcom/google/android/gms/tagmanager/zzp$zzf;

    return-void

    :cond_0
    const-string v0, "Default was requested, but no default container was found"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzbK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method

.method public zzOG()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzaL(Z)V

    return-void
.end method

.method public zzOH()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzaL(Z)V

    return-void
.end method

.method protected zzbK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDn:Lcom/google/android/gms/tagmanager/zzo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDn:Lcom/google/android/gms/tagmanager/zzo;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzayk:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_1

    const-string v0, "timer expired: setting result to failure"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zzbK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized zzgZ(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDq:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDr:Lcom/google/android/gms/tagmanager/zzp$zze;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbDr:Lcom/google/android/gms/tagmanager/zzp$zze;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zzhc(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
