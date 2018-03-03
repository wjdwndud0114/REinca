.class public Lcom/google/android/gms/internal/zzrs;
.super Lcom/google/android/gms/internal/zzru;


# instance fields
.field private final zzacF:Lcom/google/android/gms/internal/zzsc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrw;Lcom/google/android/gms/internal/zzrx;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzru;-><init>(Lcom/google/android/gms/internal/zzrw;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzrx;->zzj(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrs;->zzacF:Lcom/google/android/gms/internal/zzsc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzrs;)Lcom/google/android/gms/internal/zzsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs;->zzacF:Lcom/google/android/gms/internal/zzsc;

    return-object v0
.end method


# virtual methods
.method onServiceConnected()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zzmq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs;->zzacF:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->onServiceConnected()V

    return-void
.end method

.method public setLocalDispatchPeriod(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznA()V

    const-string v0, "setLocalDispatchPeriod (sec)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzrs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznt()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzrs$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzrs$1;-><init>(Lcom/google/android/gms/internal/zzrs;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs;->zzacF:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->start()V

    return-void
.end method

.method public zzV(Z)V
    .locals 2

    const-string v0, "Network connectivity status changed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzrs;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznt()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzrs$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzrs$2;-><init>(Lcom/google/android/gms/internal/zzrs;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzry;)J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznA()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zzmq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs;->zzacF:Lcom/google/android/gms/internal/zzsc;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzry;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrs;->zzacF:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzsc;->zzc(Lcom/google/android/gms/internal/zzry;)V

    :cond_0
    return-wide v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzso;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznA()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznt()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzrs$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzrs$6;-><init>(Lcom/google/android/gms/internal/zzrs;Lcom/google/android/gms/internal/zzso;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzst;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznA()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzrs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznt()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzrs$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzrs$4;-><init>(Lcom/google/android/gms/internal/zzrs;Lcom/google/android/gms/internal/zzst;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznt()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzrs$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzrs$3;-><init>(Lcom/google/android/gms/internal/zzrs;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzmr()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs;->zzacF:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->initialize()V

    return-void
.end method

.method public zznj()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznA()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznt()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzrs$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzrs$5;-><init>(Lcom/google/android/gms/internal/zzrs;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zznk()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznA()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zztb;->zzT(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zztc;->zzU(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrs;->zza(Lcom/google/android/gms/internal/zzso;)V

    goto :goto_0
.end method

.method public zznl()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznA()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznt()Lcom/google/android/gms/analytics/zzh;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzrs$7;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzrs$7;-><init>(Lcom/google/android/gms/internal/zzrs;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/zzh;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "syncDispatchLocalHits interrupted"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzrs;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "syncDispatchLocalHits failed"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzrs;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "syncDispatchLocalHits timed out"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzrs;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zznm()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznA()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzh;->zzmq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs;->zzacF:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zznm()V

    return-void
.end method

.method public zznn()V
    .locals 1

    const-string v0, "Radio powered up"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrs;->zzbO(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zznk()V

    return-void
.end method

.method zzno()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs;->zzmq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs;->zzacF:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zzno()V

    return-void
.end method
