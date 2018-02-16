.class Lcom/google/android/gms/internal/zzsc;
.super Lcom/google/android/gms/internal/zzru;


# instance fields
.field private mStarted:Z

.field private final zzadA:Lcom/google/android/gms/internal/zzsz;

.field private final zzadB:Lcom/google/android/gms/internal/zzsy;

.field private final zzadC:Lcom/google/android/gms/internal/zzrz;

.field private zzadD:J

.field private final zzadE:Lcom/google/android/gms/internal/zzsl;

.field private final zzadF:Lcom/google/android/gms/internal/zzsl;

.field private final zzadG:Lcom/google/android/gms/internal/zztd;

.field private zzadH:J

.field private zzadI:Z

.field private final zzadz:Lcom/google/android/gms/internal/zzsa;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzrw;Lcom/google/android/gms/internal/zzrx;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzru;-><init>(Lcom/google/android/gms/internal/zzrw;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadD:J

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzrx;->zzk(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadB:Lcom/google/android/gms/internal/zzsy;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzrx;->zzm(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzrx;->zzn(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadA:Lcom/google/android/gms/internal/zzsz;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzrx;->zzo(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzrz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadC:Lcom/google/android/gms/internal/zzrz;

    new-instance v0, Lcom/google/android/gms/internal/zztd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zztd;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadG:Lcom/google/android/gms/internal/zztd;

    new-instance v0, Lcom/google/android/gms/internal/zzsc$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzsc$1;-><init>(Lcom/google/android/gms/internal/zzsc;Lcom/google/android/gms/internal/zzrw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadE:Lcom/google/android/gms/internal/zzsl;

    new-instance v0, Lcom/google/android/gms/internal/zzsc$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzsc$2;-><init>(Lcom/google/android/gms/internal/zzsc;Lcom/google/android/gms/internal/zzrw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadF:Lcom/google/android/gms/internal/zzsl;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzry;Lcom/google/android/gms/internal/zzrf;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznp()Lcom/google/android/gms/internal/zzrw;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/internal/zzrw;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzry;->zznJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->zzbn(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzry;->zznK()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->enableAdvertisingIdCollection(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zza;->zzlN()Lcom/google/android/gms/analytics/zze;

    move-result-object v5

    const-class v0, Lcom/google/android/gms/internal/zzrn;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/analytics/zze;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrn;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrn;->zzbD(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrn;->zzS(Z)V

    invoke-virtual {v5, p2}, Lcom/google/android/gms/analytics/zze;->zza(Lcom/google/android/gms/analytics/zzf;)V

    const-class v1, Lcom/google/android/gms/internal/zzri;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/analytics/zze;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzri;

    const-class v2, Lcom/google/android/gms/internal/zzre;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/analytics/zze;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzre;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzry;->zzfz()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "an"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzre;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v7, "av"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzre;->setAppVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "aid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzre;->setAppId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "aiid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzre;->setAppInstallerId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v7, "uid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzrn;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/zzri;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "Sending installation campaign to"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzry;->zznJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/zzsc;->zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznv()Lcom/google/android/gms/internal/zzta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta;->zzpE()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/analytics/zze;->zzp(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/zze;->zzmf()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzsc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzoa()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzsc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzob()V

    return-void
.end method

.method private zzbV(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzacx;->zzaQ(Landroid/content/Context;)Lcom/google/android/gms/internal/zzacw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzacw;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zznY()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznp()Lcom/google/android/gms/internal/zzrw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zztb;->zzT(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzsc;->zzbR(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzT(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbR(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zztc;->zzU(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzsc;->zzbS(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingService;->zzU(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbR(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private zzoa()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzsc$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzsc$4;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzb(Lcom/google/android/gms/internal/zzso;)V

    return-void
.end method

.method private zzob()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->zznS()I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzog()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadF:Lcom/google/android/gms/internal/zzsl;

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzsl;->zzx(J)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete stale hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private zzoh()Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsc;->zzadI:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzon()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zzoi()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznu()Lcom/google/android/gms/internal/zzsn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsn;->zzpd()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsn;->zzcv()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznT()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzoF()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzoE()J

    move-result-wide v2

    const-string v1, "Dispatch alarm scheduled (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzsc;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsn;->schedule()V

    goto :goto_0
.end method

.method private zzoj()V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzoi()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzon()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznv()Lcom/google/android/gms/internal/zzta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta;->zzpG()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    :goto_0
    const-string v2, "Dispatch scheduled (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/zzsc;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsc;->zzadE:Lcom/google/android/gms/internal/zzsl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsl;->zzcv()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsc;->zzadE:Lcom/google/android/gms/internal/zzsl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzsl;->zzpa()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsc;->zzadE:Lcom/google/android/gms/internal/zzsl;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzsl;->zzy(J)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoC()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoC()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsc;->zzadE:Lcom/google/android/gms/internal/zzsl;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzsl;->zzx(J)V

    goto :goto_1
.end method

.method private zzok()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzol()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzom()V

    return-void
.end method

.method private zzol()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadE:Lcom/google/android/gms/internal/zzsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsl;->zzcv()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbO(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadE:Lcom/google/android/gms/internal/zzsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsl;->cancel()V

    return-void
.end method

.method private zzom()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznu()Lcom/google/android/gms/internal/zzsn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsn;->zzcv()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsn;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onServiceConnected()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzod()V

    return-void
.end method

.method start()V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsc;->mStarted:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Analytics backend already started"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzsc;->mStarted:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznt()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsc$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsc$3;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzV(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzog()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzry;Z)J
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzmq()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->beginTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzry;->zznI()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzry;->zzlX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzsa;->zza(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzry;->zznI()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzry;->zzlX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzry;->zznJ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/zzsa;->zza(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzry;->zzr(J)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzsa;->zzb(Lcom/google/android/gms/internal/zzry;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-wide v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    :try_start_2
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzry;->zzr(J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Failed to update Analytics property"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    const-wide/16 v0, -0x1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Failed to end transaction"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "Failed to end transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "Failed to end transaction"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public zza(Lcom/google/android/gms/internal/zzso;J)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/analytics/zzh;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznv()Lcom/google/android/gms/internal/zzta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzta;->zzpG()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_0
    const-string v2, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzsc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzoc()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzoe()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznv()Lcom/google/android/gms/internal/zzta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta;->zzpH()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzog()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzso;->zzf(Ljava/lang/Throwable;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadH:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadB:Lcom/google/android/gms/internal/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsy;->zzpz()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznv()Lcom/google/android/gms/internal/zzta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzta;->zzpH()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzog()V

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzso;->zzf(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzst;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzh;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadI:Z

    if-eqz v0, :cond_0

    const-string v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbP(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsc;->zzf(Lcom/google/android/gms/internal/zzst;)Lcom/google/android/gms/internal/zzst;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzoc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadC:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrz;->zzb(Lcom/google/android/gms/internal/zzst;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Hit sent to the device AnalyticsService for delivery"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbP(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "Delivering hit"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzsc;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->zzc(Lcom/google/android/gms/internal/zzst;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzog()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Delivery failed to save hit to a database"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v2, "deliver: failed to insert hit to database"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzsx;->zza(Lcom/google/android/gms/internal/zzst;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public zzb(Lcom/google/android/gms/internal/zzso;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadH:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzso;J)V

    return-void
.end method

.method public zzbW(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zztg;->zza(Lcom/google/android/gms/internal/zzsx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzrf;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Parsing failed. Ignoring invalid campaign data"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzsc;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznv()Lcom/google/android/gms/internal/zzta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta;->zzpI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Ignoring duplicate install campaign"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbR(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "Ignoring multiple install campaigns. original, new"

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/zzsc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznv()Lcom/google/android/gms/internal/zzta;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzta;->zzca(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznv()Lcom/google/android/gms/internal/zzta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta;->zzpF()Lcom/google/android/gms/internal/zztd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsj;->zzoY()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzz(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Campaign received too late, ignoring"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzsc;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "Received installation campaign"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzsc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzsa;->zzv(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzry;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzry;Lcom/google/android/gms/internal/zzrf;)V

    goto :goto_1
.end method

.method protected zzc(Lcom/google/android/gms/internal/zzry;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzmq()V

    const-string v0, "Sending first hit to property"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzry;->zznJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzsc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznv()Lcom/google/android/gms/internal/zzta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta;->zzpF()Lcom/google/android/gms/internal/zztd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzoY()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzz(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznv()Lcom/google/android/gms/internal/zzta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta;->zzpI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zztg;->zza(Lcom/google/android/gms/internal/zzsx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzrf;

    move-result-object v0

    const-string v1, "Found relevant installation campaign"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzry;Lcom/google/android/gms/internal/zzrf;)V

    goto :goto_0
.end method

.method zzf(Lcom/google/android/gms/internal/zzst;)Lcom/google/android/gms/internal/zzst;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzst;->zzpu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznv()Lcom/google/android/gms/internal/zzta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta;->zzpJ()Lcom/google/android/gms/internal/zzta$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta$zza;->zzpM()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzst;->zzfz()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "_m"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/internal/zzst;->zza(Lcom/google/android/gms/internal/zzrt;Lcom/google/android/gms/internal/zzst;Ljava/util/Map;)Lcom/google/android/gms/internal/zzst;

    move-result-object p1

    goto :goto_0
.end method

.method protected zzmr()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->initialize()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadA:Lcom/google/android/gms/internal/zzsz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsz;->initialize()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadC:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrz;->initialize()V

    return-void
.end method

.method public zznT()J
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzh;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->zznT()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected zznZ()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zznY()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznv()Lcom/google/android/gms/internal/zzta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta;->zzpE()J

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbV(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbS(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzoo()V

    :cond_0
    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbV(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbS(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzoo()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zztc;->zzU(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AnalyticsService registered in the app manifest and enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbO(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadI:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzoc()V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzog()V

    return-void

    :cond_3
    const-string v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbR(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zznj()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzh;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    const-string v0, "Delete all hits from local store"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbO(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->zznQ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->zznR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzog()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzoc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadC:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrz;->zznM()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Device service unavailable. Can\'t clear hits stored on the device service."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbO(Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zznm()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzh;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    const-string v0, "Service disconnected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbO(Ljava/lang/String;)V

    return-void
.end method

.method zzno()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadH:J

    return-void
.end method

.method protected zzoc()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadI:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadC:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrz;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoS()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsc;->zzadG:Lcom/google/android/gms/internal/zztd;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzz(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadG:Lcom/google/android/gms/internal/zztd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztd;->start()V

    const-string v0, "Connecting to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbO(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadC:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrz;->connect()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connected to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbO(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadG:Lcom/google/android/gms/internal/zztd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztd;->clear()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->onServiceConnected()V

    goto :goto_0
.end method

.method public zzod()V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/analytics/zzh;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzox()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbR(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadC:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrz;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Service not connected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbO(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbO(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzoG()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzsa;->zzt(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzog()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V

    goto :goto_0

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzst;->zzpp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzsa;->zzu(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzst;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsc;->zzadC:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzrz;->zzb(Lcom/google/android/gms/internal/zzst;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzog()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V

    goto :goto_0
.end method

.method protected zzoe()Z
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/zzh;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    const-string v0, "Dispatching a batch of local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbO(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadC:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrz;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsc;->zzadA:Lcom/google/android/gms/internal/zzsz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzsz;->zzpA()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v0, "No network or service available. Will retry later"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbO(Ljava/lang/String;)V

    :goto_2
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoG()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzoH()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v6, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->beginTransaction()V

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/zzsa;->zzt(J)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Store is empty, nothing to dispatch"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbO(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V

    goto :goto_2

    :cond_3
    :try_start_3
    const-string v0, "Hits loaded from store. count"

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzsc;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzst;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzst;->zzpp()J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-nez v0, :cond_4

    const-string v0, "Database contains successfully uploaded hit"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/internal/zzsc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "Failed to read hits from persisted store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->endTransaction()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V

    goto/16 :goto_2

    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadC:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrz;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Service connected, sending hits to the service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbO(Ljava/lang/String;)V

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzst;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsc;->zzadC:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrz;->zzb(Lcom/google/android/gms/internal/zzst;)Z

    move-result v1

    if-nez v1, :cond_6

    move-wide v0, v4

    :goto_5
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsc;->zzadA:Lcom/google/android/gms/internal/zzsz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzsz;->zzpA()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsc;->zzadA:Lcom/google/android/gms/internal/zzsz;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/zzsz;->zzt(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v4, v0

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzst;->zzpp()J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzst;->zzpp()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/internal/zzsa;->zzu(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzst;->zzpp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_a
    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->endTransaction()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V

    goto/16 :goto_2

    :cond_7
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzsa;->zzr(Ljava/util/List;)V

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-wide v0, v4

    :cond_8
    :try_start_d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v4

    if-eqz v4, :cond_9

    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->endTransaction()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V

    goto/16 :goto_2

    :catch_7
    move-exception v0

    :try_start_f
    const-string v1, "Failed to remove successfully uploaded hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->endTransaction()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_2

    :catch_8
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V

    goto/16 :goto_2

    :cond_9
    :try_start_11
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzsa;->setTransactionSuccessful()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzsa;->endTransaction()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_9

    move-wide v4, v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_12
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->setTransactionSuccessful()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->endTransaction()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_a

    throw v0

    :catch_a
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V

    goto/16 :goto_2

    :cond_a
    move-wide v0, v4

    goto/16 :goto_5
.end method

.method public zzof()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/analytics/zzh;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    const-string v0, "Sync dispatching local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zzbP(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadH:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzoc()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzoe()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznv()Lcom/google/android/gms/internal/zzta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzta;->zzpH()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzog()V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsc;->zzadH:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadB:Lcom/google/android/gms/internal/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsy;->zzpz()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Sync local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsc;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzog()V

    goto :goto_0
.end method

.method public zzog()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznp()Lcom/google/android/gms/internal/zzrw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzoh()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadB:Lcom/google/android/gms/internal/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsy;->unregister()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadz:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadB:Lcom/google/android/gms/internal/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsy;->unregister()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzsq;->zzaeR:Lcom/google/android/gms/internal/zzsq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsq$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadB:Lcom/google/android/gms/internal/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsy;->zzpx()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadB:Lcom/google/android/gms/internal/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsy;->isConnected()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzoj()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzok()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsc;->zzoi()V

    goto :goto_0
.end method

.method public zzon()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadD:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadD:J

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoD()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzma()Lcom/google/android/gms/internal/zzth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzth;->zzpk()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzma()Lcom/google/android/gms/internal/zzth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzth;->zzqb()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public zzoo()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzmq()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadI:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadC:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrz;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzog()V

    return-void
.end method

.method public zzw(J)V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/zzh;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznA()V

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzsc;->zzadD:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzog()V

    return-void
.end method
