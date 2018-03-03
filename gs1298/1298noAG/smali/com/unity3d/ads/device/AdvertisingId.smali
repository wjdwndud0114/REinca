.class public Lcom/unity3d/ads/device/AdvertisingId;
.super Ljava/lang/Object;
.source "AdvertisingId.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;,
        Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;
    }
.end annotation


# static fields
.field private static final ADVERTISING_ID_SERVICE_NAME:Ljava/lang/String; = "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

.field private static instance:Lcom/unity3d/ads/device/AdvertisingId;


# instance fields
.field private advertisingIdentifier:Ljava/lang/String;

.field private limitedAdvertisingTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/device/AdvertisingId;->instance:Lcom/unity3d/ads/device/AdvertisingId;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/device/AdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/device/AdvertisingId;->limitedAdvertisingTracking:Z

    .line 156
    return-void
.end method

.method private fetchAdvertisingId(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 50
    new-instance v1, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;-><init>(Lcom/unity3d/ads/device/AdvertisingId;Lcom/unity3d/ads/device/AdvertisingId$1;)V

    .line 51
    .local v1, "connection":Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v3, "localIntent":Landroid/content/Intent;
    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p1, v3, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    :try_start_0
    invoke-virtual {v1}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->create(Landroid/os/IBinder;)Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;

    move-result-object v0

    .line 56
    .local v0, "advertisingInfo":Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;
    invoke-interface {v0}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/ads/device/AdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    .line 57
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;->getEnabled(Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/unity3d/ads/device/AdvertisingId;->limitedAdvertisingTracking:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    .end local v0    # "advertisingInfo":Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Couldn\'t get advertising info"

    invoke-static {v4, v2}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v4
.end method

.method public static getAdvertisingTrackingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/unity3d/ads/device/AdvertisingId;->getInstance()Lcom/unity3d/ads/device/AdvertisingId;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/ads/device/AdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method private static getInstance()Lcom/unity3d/ads/device/AdvertisingId;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/unity3d/ads/device/AdvertisingId;->instance:Lcom/unity3d/ads/device/AdvertisingId;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/unity3d/ads/device/AdvertisingId;

    invoke-direct {v0}, Lcom/unity3d/ads/device/AdvertisingId;-><init>()V

    sput-object v0, Lcom/unity3d/ads/device/AdvertisingId;->instance:Lcom/unity3d/ads/device/AdvertisingId;

    .line 33
    :cond_0
    sget-object v0, Lcom/unity3d/ads/device/AdvertisingId;->instance:Lcom/unity3d/ads/device/AdvertisingId;

    return-object v0
.end method

.method public static getLimitedAdTracking()Z
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/unity3d/ads/device/AdvertisingId;->getInstance()Lcom/unity3d/ads/device/AdvertisingId;

    move-result-object v0

    iget-boolean v0, v0, Lcom/unity3d/ads/device/AdvertisingId;->limitedAdvertisingTracking:Z

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {}, Lcom/unity3d/ads/device/AdvertisingId;->getInstance()Lcom/unity3d/ads/device/AdvertisingId;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/unity3d/ads/device/AdvertisingId;->fetchAdvertisingId(Landroid/content/Context;)V

    .line 38
    return-void
.end method
