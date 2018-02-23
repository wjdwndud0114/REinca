.class Lcom/google/android/gms/nearby/messages/internal/zzx$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/internal/zzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzbyI:Landroid/app/Activity;

.field private final zzbyJ:Lcom/google/android/gms/nearby/messages/internal/zzx;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/nearby/messages/internal/zzx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zzb;->zzbyI:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zzb;->zzbyJ:Lcom/google/android/gms/nearby/messages/internal/zzx;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/nearby/messages/internal/zzx;Lcom/google/android/gms/nearby/messages/internal/zzx$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzx$zzb;-><init>(Landroid/app/Activity;Lcom/google/android/gms/nearby/messages/internal/zzx;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zzb;->zzbyI:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    const-string v0, "NearbyMessagesClient"

    const-string v1, "Unregistering ClientLifecycleSafetyNet\'s ActivityLifecycleCallbacks for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zzb;->zzbyI:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zzb;->zzbyJ:Lcom/google/android/gms/nearby/messages/internal/zzx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzx;->zzmd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyMessagesClient"

    const-string v2, "Failed to emit ACTIVITY_STOPPED from ClientLifecycleSafetyNet for Activity %s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
