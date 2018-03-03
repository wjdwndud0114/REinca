.class public Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangeReceiver.java"


# static fields
.field private static _receiver:Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 4

    .prologue
    .line 16
    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;

    invoke-direct {v0}, Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;-><init>()V

    sput-object v0, Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;

    .line 18
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 20
    :cond_0
    return-void
.end method

.method public static unregister()V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const-string v2, "noConnectivity"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->disconnected()V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 38
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 42
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->connected()V

    goto :goto_0
.end method
