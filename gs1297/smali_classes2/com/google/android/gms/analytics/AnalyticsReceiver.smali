.class public final Lcom/google/android/gms/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private zzaao:Lcom/google/android/gms/internal/zztb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private zzlO()Lcom/google/android/gms/internal/zztb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzaao:Lcom/google/android/gms/internal/zztb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zztb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzaao:Lcom/google/android/gms/internal/zztb;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzaao:Lcom/google/android/gms/internal/zztb;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzlO()Lcom/google/android/gms/internal/zztb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zztb;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
