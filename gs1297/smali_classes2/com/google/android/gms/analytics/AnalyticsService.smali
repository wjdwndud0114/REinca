.class public final Lcom/google/android/gms/analytics/AnalyticsService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/internal/zztc$zza;


# instance fields
.field private zzaap:Lcom/google/android/gms/internal/zztc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private zzlP()Lcom/google/android/gms/internal/zztc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->zzaap:Lcom/google/android/gms/internal/zztc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zztc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zztc;-><init>(Lcom/google/android/gms/internal/zztc$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->zzaap:Lcom/google/android/gms/internal/zztc;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->zzaap:Lcom/google/android/gms/internal/zztc;

    return-object v0
.end method


# virtual methods
.method public callServiceStopSelfResult(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/AnalyticsService;->stopSelfResult(I)Z

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzlP()Lcom/google/android/gms/internal/zztc;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzlP()Lcom/google/android/gms/internal/zztc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztc;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzlP()Lcom/google/android/gms/internal/zztc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztc;->onDestroy()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzlP()Lcom/google/android/gms/internal/zztc;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zztc;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
