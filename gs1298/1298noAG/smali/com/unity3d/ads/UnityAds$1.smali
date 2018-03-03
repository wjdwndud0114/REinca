.class final Lcom/unity3d/ads/UnityAds$1;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/unity3d/ads/UnityAds$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/unity3d/ads/UnityAds$1;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 306
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 308
    .local v2, "options":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "requestedOrientation"

    iget-object v4, p0, Lcom/unity3d/ads/UnityAds$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/unity3d/ads/UnityAds$1;->val$placementId:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/unity3d/ads/adunit/AdUnitOpen;->open(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    iget-object v3, p0, Lcom/unity3d/ads/UnityAds$1;->val$placementId:Ljava/lang/String;

    sget-object v4, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v5, "Webapp timeout, shutting down Unity Ads"

    # invokes: Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/unity3d/ads/UnityAds;->access$000(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->reset()V

    .line 317
    invoke-static {}, Lcom/unity3d/ads/cache/CacheThread;->cancel()V

    .line 318
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->stopAll()V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 325
    :cond_0
    :goto_1
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "JSON error while constructing show options"

    invoke-static {v3, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 321
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 322
    .local v1, "exception":Ljava/lang/NoSuchMethodException;
    const-string v3, "Could not get callback method"

    invoke-static {v3, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 323
    iget-object v3, p0, Lcom/unity3d/ads/UnityAds$1;->val$placementId:Ljava/lang/String;

    sget-object v4, Lcom/unity3d/ads/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v5, "Could not get com.unity3d.ads.properties.showCallback method"

    # invokes: Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/unity3d/ads/UnityAds;->access$000(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_1
.end method
