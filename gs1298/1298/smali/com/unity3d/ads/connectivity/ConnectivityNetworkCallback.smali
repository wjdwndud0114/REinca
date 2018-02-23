.class public Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityNetworkCallback.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static _impl:Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;->_impl:Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 3

    .prologue
    .line 19
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;->_impl:Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;

    invoke-direct {v1}, Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;-><init>()V

    sput-object v1, Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;->_impl:Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;

    .line 22
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 23
    .local v0, "cm":Landroid/net/ConnectivityManager;
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;->_impl:Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 25
    :cond_0
    return-void
.end method

.method public static unregister()V
    .locals 3

    .prologue
    .line 28
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;->_impl:Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;

    if-eqz v1, :cond_0

    .line 29
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 30
    .local v0, "cm":Landroid/net/ConnectivityManager;
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;->_impl:Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 32
    const/4 v1, 0x0

    sput-object v1, Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;->_impl:Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 38
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->connected()V

    .line 39
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 48
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->connectionStatusChanged()V

    .line 49
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "properties"    # Landroid/net/LinkProperties;

    .prologue
    .line 53
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->connectionStatusChanged()V

    .line 54
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 43
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->disconnected()V

    .line 44
    return-void
.end method
