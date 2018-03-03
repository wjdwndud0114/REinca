.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateAdBlockerCheck"
.end annotation


# instance fields
.field private _address:Ljava/net/InetAddress;

.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 140
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 141
    return-void
.end method

.method static synthetic access$102(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_address:Ljava/net/InetAddress;

    return-object p1
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 8

    .prologue
    .line 149
    const-string v5, "Unity Ads init: checking for ad blockers"

    invoke-static {v5}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 153
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v6}, Lcom/unity3d/ads/configuration/Configuration;->getConfigUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    .local v0, "configHost":Ljava/lang/String;
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 159
    .local v1, "cv":Landroid/os/ConditionVariable;
    new-instance v5, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 170
    invoke-virtual {v5}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;->start()V

    .line 173
    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v4

    .line 174
    .local v4, "success":Z
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_address:Ljava/net/InetAddress;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_address:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    const-string v5, "Unity Ads init: halting init because Unity Ads config resolves to loopback address (due to ad blocker?)"

    invoke-static {v5}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v3

    .line 178
    .local v3, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    if-eqz v3, :cond_0

    .line 179
    new-instance v5, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;

    invoke-direct {v5, p0, v3}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;Lcom/unity3d/ads/IUnityAdsListener;)V

    invoke-static {v5}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    :cond_0
    const/4 v5, 0x0

    .line 189
    .end local v0    # "configHost":Ljava/lang/String;
    .end local v1    # "cv":Landroid/os/ConditionVariable;
    .end local v3    # "listener":Lcom/unity3d/ads/IUnityAdsListener;
    .end local v4    # "success":Z
    :goto_0
    return-object v5

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v5, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;

    iget-object v6, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v5, v6}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    goto :goto_0

    .line 189
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "configHost":Ljava/lang/String;
    .restart local v1    # "cv":Landroid/os/ConditionVariable;
    .restart local v4    # "success":Z
    :cond_1
    new-instance v5, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;

    iget-object v6, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v5, v6}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    goto :goto_0
.end method

.method public getConfiguration()Lcom/unity3d/ads/configuration/Configuration;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    return-object v0
.end method
