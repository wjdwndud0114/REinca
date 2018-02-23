.class public Lcom/unity3d/ads/connectivity/ConnectivityMonitor;
.super Ljava/lang/Object;
.source "ConnectivityMonitor.java"


# static fields
.field private static _connected:I

.field private static _listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/unity3d/ads/connectivity/IConnectivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _listening:Z

.field private static _networkType:I

.field private static _webappMonitoring:Z

.field private static _wifi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 17
    sput v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    .line 18
    sput-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listening:Z

    .line 19
    sput-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    .line 20
    sput-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    .line 21
    sput v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_networkType:I

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    return-void
.end method

.method public static addListener(Lcom/unity3d/ads/connectivity/IConnectivityListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/unity3d/ads/connectivity/IConnectivityListener;

    .prologue
    .line 30
    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    .line 34
    :cond_0
    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    .line 36
    return-void
.end method

.method public static connected()V
    .locals 4

    .prologue
    .line 114
    sget v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 129
    .local v0, "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    :goto_0
    return-void

    .line 118
    .end local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    :cond_0
    const-string v1, "Unity Ads connectivity change: connected"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->initConnectionStatus()V

    .line 122
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 123
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    check-cast v0, Lcom/unity3d/ads/connectivity/IConnectivityListener;

    .line 124
    .restart local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    invoke-interface {v0}, Lcom/unity3d/ads/connectivity/IConnectivityListener;->onConnected()V

    goto :goto_1

    .line 128
    :cond_1
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    sget-boolean v2, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    sget v3, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_networkType:I

    invoke-static {v1, v2, v3}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->sendToWebview(Lcom/unity3d/ads/connectivity/ConnectivityEvent;ZI)V

    goto :goto_0
.end method

.method public static connectionStatusChanged()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 152
    sget v5, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    if-eq v5, v4, :cond_1

    .line 176
    .local v0, "cm":Landroid/net/ConnectivityManager;
    .local v2, "ni":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 156
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 157
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 159
    .restart local v2    # "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 161
    .local v4, "wifiStatus":Z
    :goto_1
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 162
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 165
    .local v1, "mobileNetworkType":I
    sget-boolean v5, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    if-ne v4, v5, :cond_2

    sget v5, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_networkType:I

    if-eq v1, v5, :cond_0

    sget-boolean v5, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    if-nez v5, :cond_0

    .line 169
    :cond_2
    sput-boolean v4, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    .line 170
    sput v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_networkType:I

    .line 172
    const-string v5, "Unity Ads connectivity change: network change"

    invoke-static {v5}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 174
    sget-object v5, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    invoke-static {v5, v4, v1}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->sendToWebview(Lcom/unity3d/ads/connectivity/ConnectivityEvent;ZI)V

    goto :goto_0

    .line 160
    .end local v1    # "mobileNetworkType":I
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    .end local v4    # "wifiStatus":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static disconnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    sget v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    if-nez v1, :cond_0

    .line 148
    .local v0, "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    :goto_0
    return-void

    .line 137
    .end local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    :cond_0
    sput v3, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    .line 139
    const-string v1, "Unity Ads connectivity change: disconnected"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 141
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 142
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    check-cast v0, Lcom/unity3d/ads/connectivity/IConnectivityListener;

    .line 143
    .restart local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    invoke-interface {v0}, Lcom/unity3d/ads/connectivity/IConnectivityListener;->onDisconnected()V

    goto :goto_1

    .line 147
    :cond_1
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->DISCONNECTED:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    invoke-static {v1, v3, v3}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->sendToWebview(Lcom/unity3d/ads/connectivity/ConnectivityEvent;ZI)V

    goto :goto_0
.end method

.method private static initConnectionStatus()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 90
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 92
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 98
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    sput v3, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    .line 100
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_1
    sput-boolean v3, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    .line 102
    sget-boolean v3, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    if-nez v3, :cond_0

    .line 103
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 104
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    sput v3, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_networkType:I

    goto :goto_0

    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    move v3, v4

    .line 100
    goto :goto_1

    .line 107
    :cond_3
    sput v4, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    goto :goto_0
.end method

.method public static removeListener(Lcom/unity3d/ads/connectivity/IConnectivityListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/unity3d/ads/connectivity/IConnectivityListener;

    .prologue
    .line 39
    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 44
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    goto :goto_0
.end method

.method private static sendToWebview(Lcom/unity3d/ads/connectivity/ConnectivityEvent;ZI)V
    .locals 7
    .param p0, "eventType"    # Lcom/unity3d/ads/connectivity/ConnectivityEvent;
    .param p1, "wifi"    # Z
    .param p2, "networkType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    sget-boolean v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    .line 186
    .local v0, "webViewApp":Lcom/unity3d/ads/webview/WebViewApp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor$1;->$SwitchMap$com$unity3d$ads$connectivity$ConnectivityEvent:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    if-eqz p1, :cond_2

    .line 193
    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_2
    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :pswitch_1
    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->DISCONNECTED:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :pswitch_2
    if-eqz p1, :cond_3

    .line 205
    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_3
    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setConnectionMonitoring(Z)V
    .locals 0
    .param p0, "monitoring"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    .line 26
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    .line 27
    return-void
.end method

.method private static startListening()V
    .locals 2

    .prologue
    .line 62
    sget-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listening:Z

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listening:Z

    .line 67
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->initConnectionStatus()V

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 70
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;->register()V

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;->register()V

    goto :goto_0
.end method

.method public static stopAll()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    .line 50
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    .line 51
    return-void
.end method

.method private static stopListening()V
    .locals 2

    .prologue
    .line 77
    sget-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listening:Z

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listening:Z

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 83
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;->unregister()V

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;->unregister()V

    goto :goto_0
.end method

.method private static updateListeningStatus()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->startListening()V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->stopListening()V

    goto :goto_0
.end method
