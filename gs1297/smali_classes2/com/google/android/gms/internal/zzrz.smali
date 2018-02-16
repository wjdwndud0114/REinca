.class public Lcom/google/android/gms/internal/zzrz;
.super Lcom/google/android/gms/internal/zzru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrz$zza;
    }
.end annotation


# instance fields
.field private final zzadk:Lcom/google/android/gms/internal/zzrz$zza;

.field private zzadl:Lcom/google/android/gms/internal/zzsu;

.field private final zzadm:Lcom/google/android/gms/internal/zzsl;

.field private zzadn:Lcom/google/android/gms/internal/zztd;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzrw;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzru;-><init>(Lcom/google/android/gms/internal/zzrw;)V

    new-instance v0, Lcom/google/android/gms/internal/zztd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zztd;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzadn:Lcom/google/android/gms/internal/zztd;

    new-instance v0, Lcom/google/android/gms/internal/zzrz$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzrz$zza;-><init>(Lcom/google/android/gms/internal/zzrz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzadk:Lcom/google/android/gms/internal/zzrz$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzrz$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzrz$1;-><init>(Lcom/google/android/gms/internal/zzrz;Lcom/google/android/gms/internal/zzrw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzadm:Lcom/google/android/gms/internal/zzsl;

    return-void
.end method

.method private onDisconnect()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zzlZ()Lcom/google/android/gms/internal/zzrs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrs;->zznm()V

    return-void
.end method

.method private onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zzmq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzadl:Lcom/google/android/gms/internal/zzsu;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzadl:Lcom/google/android/gms/internal/zzsu;

    const-string v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzrz;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrz;->onDisconnect()V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzrz;)Lcom/google/android/gms/internal/zzrz$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzadk:Lcom/google/android/gms/internal/zzrz$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzrz;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrz;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzrz;Lcom/google/android/gms/internal/zzsu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrz;->zza(Lcom/google/android/gms/internal/zzsu;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzsu;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zzmq()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrz;->zzadl:Lcom/google/android/gms/internal/zzsu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrz;->zznN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zzlZ()Lcom/google/android/gms/internal/zzrs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrs;->onServiceConnected()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzrz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrz;->zznO()V

    return-void
.end method

.method private zznN()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzadn:Lcom/google/android/gms/internal/zztd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztd;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzadm:Lcom/google/android/gms/internal/zzsl;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzoQ()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzsl;->zzx(J)V

    return-void
.end method

.method private zznO()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrz;->zzbO(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->disconnect()V

    goto :goto_0
.end method


# virtual methods
.method public connect()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zznA()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrz;->zzadl:Lcom/google/android/gms/internal/zzsu;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrz;->zzadk:Lcom/google/android/gms/internal/zzrz$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrz$zza;->zznP()Lcom/google/android/gms/internal/zzsu;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrz;->zzadl:Lcom/google/android/gms/internal/zzsu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrz;->zznN()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zznA()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyc()Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrz;->zzadk:Lcom/google/android/gms/internal/zzrz$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzadl:Lcom/google/android/gms/internal/zzsu;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzadl:Lcom/google/android/gms/internal/zzsu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrz;->onDisconnect()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zznA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzadl:Lcom/google/android/gms/internal/zzsu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzst;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zznA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzadl:Lcom/google/android/gms/internal/zzsu;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzst;->zzps()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzoJ()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzst;->zzfz()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzst;->zzpq()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzsu;->zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrz;->zznN()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzoK()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrz;->zzbO(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method protected zzmr()V
    .locals 0

    return-void
.end method

.method public zznM()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrz;->zznA()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrz;->zzadl:Lcom/google/android/gms/internal/zzsu;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzsu;->zznj()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrz;->zznN()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Failed to clear hits from AnalyticsService"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzrz;->zzbO(Ljava/lang/String;)V

    goto :goto_0
.end method
