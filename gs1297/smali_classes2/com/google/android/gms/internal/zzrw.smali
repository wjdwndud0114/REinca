.class public Lcom/google/android/gms/internal/zzrw;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzacQ:Lcom/google/android/gms/internal/zzrw;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzacR:Landroid/content/Context;

.field private final zzacS:Lcom/google/android/gms/internal/zzsj;

.field private final zzacT:Lcom/google/android/gms/internal/zzsx;

.field private final zzacU:Lcom/google/android/gms/analytics/zzh;

.field private final zzacV:Lcom/google/android/gms/internal/zzrs;

.field private final zzacW:Lcom/google/android/gms/internal/zzsn;

.field private final zzacX:Lcom/google/android/gms/internal/zzth;

.field private final zzacY:Lcom/google/android/gms/internal/zzta;

.field private final zzacZ:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final zzada:Lcom/google/android/gms/internal/zzse;

.field private final zzadb:Lcom/google/android/gms/internal/zzrr;

.field private final zzadc:Lcom/google/android/gms/internal/zzsb;

.field private final zzadd:Lcom/google/android/gms/internal/zzsm;

.field private final zzuI:Lcom/google/android/gms/common/util/zze;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzrx;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrx;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrx;->zznC()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrw;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrw;->zzacR:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrx;->zzh(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrw;->zzuI:Lcom/google/android/gms/common/util/zze;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrx;->zzg(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrw;->zzacS:Lcom/google/android/gms/internal/zzsj;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrx;->zzf(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsx;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrw;->zzacT:Lcom/google/android/gms/internal/zzsx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzrv;->VERSION:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x86

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Google Analytics "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzsx;->zzbQ(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrx;->zzq(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzta;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrw;->zzacY:Lcom/google/android/gms/internal/zzta;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrx;->zze(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzth;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrw;->zzacX:Lcom/google/android/gms/internal/zzth;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrx;->zzl(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzrs;

    move-result-object v1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrx;->zzd(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;

    move-result-object v2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrx;->zzc(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzrr;

    move-result-object v3

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrx;->zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsb;

    move-result-object v4

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrx;->zza(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsm;

    move-result-object v5

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrx;->zzX(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zznB()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/analytics/zzh;->zza(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacU:Lcom/google/android/gms/analytics/zzh;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrx;->zzi(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzse;->initialize()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrw;->zzada:Lcom/google/android/gms/internal/zzse;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzrr;->initialize()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzrw;->zzadb:Lcom/google/android/gms/internal/zzrr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzsb;->initialize()V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzrw;->zzadc:Lcom/google/android/gms/internal/zzsb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzsm;->initialize()V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzrw;->zzadd:Lcom/google/android/gms/internal/zzsm;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrx;->zzp(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsn;->initialize()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrw;->zzacW:Lcom/google/android/gms/internal/zzsn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrs;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrw;->zzacV:Lcom/google/android/gms/internal/zzrs;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacZ:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrs;->start()V

    return-void
.end method

.method public static zzW(Landroid/content/Context;)Lcom/google/android/gms/internal/zzrw;
    .locals 8

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzrw;->zzacQ:Lcom/google/android/gms/internal/zzrw;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzrw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzrw;->zzacQ:Lcom/google/android/gms/internal/zzrw;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzyv()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/zzrx;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzrx;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/gms/internal/zzrw;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzrw;-><init>(Lcom/google/android/gms/internal/zzrx;)V

    sput-object v5, Lcom/google/android/gms/internal/zzrw;->zzacQ:Lcom/google/android/gms/internal/zzrw;

    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzlW()V

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v0, Lcom/google/android/gms/internal/zzsq;->zzaeY:Lcom/google/android/gms/internal/zzsq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsq$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v4, "Slow initialization (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/zzsx;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzrw;->zzacQ:Lcom/google/android/gms/internal/zzrw;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzru;)V
    .locals 2

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzru;->isInitialized()Z

    move-result v0

    const-string v1, "Analytics service not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public zzlZ()Lcom/google/android/gms/internal/zzrs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacV:Lcom/google/android/gms/internal/zzrs;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzru;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacV:Lcom/google/android/gms/internal/zzrs;

    return-object v0
.end method

.method public zzma()Lcom/google/android/gms/internal/zzth;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacX:Lcom/google/android/gms/internal/zzth;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzru;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacX:Lcom/google/android/gms/internal/zzth;

    return-object v0
.end method

.method public zzmq()V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/analytics/zzh;->zzmq()V

    return-void
.end method

.method protected zznB()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzrw$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzrw$1;-><init>(Lcom/google/android/gms/internal/zzrw;)V

    return-object v0
.end method

.method public zznC()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacR:Landroid/content/Context;

    return-object v0
.end method

.method public zznD()Lcom/google/android/gms/internal/zzsx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacT:Lcom/google/android/gms/internal/zzsx;

    return-object v0
.end method

.method public zznE()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacZ:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacZ:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isInitialized()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacZ:Lcom/google/android/gms/analytics/GoogleAnalytics;

    return-object v0
.end method

.method public zznF()Lcom/google/android/gms/internal/zzta;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacY:Lcom/google/android/gms/internal/zzta;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacY:Lcom/google/android/gms/internal/zzta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacY:Lcom/google/android/gms/internal/zzta;

    goto :goto_0
.end method

.method public zznG()Lcom/google/android/gms/internal/zzrr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzadb:Lcom/google/android/gms/internal/zzrr;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzru;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzadb:Lcom/google/android/gms/internal/zzrr;

    return-object v0
.end method

.method public zznH()Lcom/google/android/gms/internal/zzse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzada:Lcom/google/android/gms/internal/zzse;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzru;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzada:Lcom/google/android/gms/internal/zzse;

    return-object v0
.end method

.method public zznq()Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzuI:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method public zznr()Lcom/google/android/gms/internal/zzsx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacT:Lcom/google/android/gms/internal/zzsx;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzru;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacT:Lcom/google/android/gms/internal/zzsx;

    return-object v0
.end method

.method public zzns()Lcom/google/android/gms/internal/zzsj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacS:Lcom/google/android/gms/internal/zzsj;

    return-object v0
.end method

.method public zznt()Lcom/google/android/gms/analytics/zzh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacU:Lcom/google/android/gms/analytics/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacU:Lcom/google/android/gms/analytics/zzh;

    return-object v0
.end method

.method public zznu()Lcom/google/android/gms/internal/zzsn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacW:Lcom/google/android/gms/internal/zzsn;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzru;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacW:Lcom/google/android/gms/internal/zzsn;

    return-object v0
.end method

.method public zznv()Lcom/google/android/gms/internal/zzta;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacY:Lcom/google/android/gms/internal/zzta;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzru;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzacY:Lcom/google/android/gms/internal/zzta;

    return-object v0
.end method

.method public zzny()Lcom/google/android/gms/internal/zzsb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzadc:Lcom/google/android/gms/internal/zzsb;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzru;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzadc:Lcom/google/android/gms/internal/zzsb;

    return-object v0
.end method

.method public zznz()Lcom/google/android/gms/internal/zzsm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->zzadd:Lcom/google/android/gms/internal/zzsm;

    return-object v0
.end method
