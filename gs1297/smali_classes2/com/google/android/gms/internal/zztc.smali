.class public final Lcom/google/android/gms/internal/zztc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zztc$zza;
    }
.end annotation


# static fields
.field private static zzaax:Ljava/lang/Boolean;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final zzafI:Lcom/google/android/gms/internal/zztc$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zztc$zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zztc$zza;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztc;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zztc;->zzafI:Lcom/google/android/gms/internal/zztc$zza;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztc;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static zzU(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zztc;->zzaax:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zztc;->zzaax:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.google.android.gms.analytics.AnalyticsService"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zztg;->zzr(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/zztc;->zzaax:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztc$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztc;->zzafI:Lcom/google/android/gms/internal/zztc$zza;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zztc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private zzlS()V
    .locals 3

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zztb;->zztU:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zztb;->zzaav:Lcom/google/android/gms/internal/zzayd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzayd;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzayd;->release()V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrw;->zzW(Landroid/content/Context;)Lcom/google/android/gms/internal/zzrw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v1, "Local AnalyticsService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsx;->zzbO(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrw;->zzW(Landroid/content/Context;)Lcom/google/android/gms/internal/zzrw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v1, "Local AnalyticsService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsx;->zzbO(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    const/4 v5, 0x2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztc;->zzlS()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zztc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrw;->zzW(Landroid/content/Context;)Lcom/google/android/gms/internal/zzrw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v1

    if-nez p1, :cond_1

    const-string v0, "AnalyticsService started with null intent"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzsx;->zzbR(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Local AnalyticsService called. startId, action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/internal/zzsx;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zzlZ()Lcom/google/android/gms/internal/zzrs;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zztc$1;

    invoke-direct {v3, p0, p3, v0, v1}, Lcom/google/android/gms/internal/zztc$1;-><init>(Lcom/google/android/gms/internal/zztc;ILcom/google/android/gms/internal/zzrw;Lcom/google/android/gms/internal/zzsx;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzrs;->zza(Lcom/google/android/gms/internal/zzso;)V

    goto :goto_0
.end method
