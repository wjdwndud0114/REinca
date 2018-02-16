.class public Lcom/unity3d/ads/api/Sdk;
.super Ljava/lang/Object;
.source "Sdk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugMode(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getDebugMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public static initComplete(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 39
    const-string v0, "Web Application initialized"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 40
    invoke-static {v1}, Lcom/unity3d/ads/properties/SdkProperties;->setInitialized(Z)V

    .line 41
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/webview/WebViewApp;->setWebAppInitialized(Z)V

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public static loadComplete(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 15
    const-string v1, "Web Application loaded"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/unity3d/ads/webview/WebViewApp;->setWebAppLoaded(Z)V

    .line 18
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 19
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getGameId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 20
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->isTestMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 21
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getAppName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 22
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 23
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 24
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 25
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->isAppDebuggable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 26
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/webview/WebViewApp;->getConfiguration()Lcom/unity3d/ads/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/configuration/Configuration;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 27
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/webview/WebViewApp;->getConfiguration()Lcom/unity3d/ads/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 28
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/webview/WebViewApp;->getConfiguration()Lcom/unity3d/ads/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 29
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/webview/WebViewApp;->getConfiguration()Lcom/unity3d/ads/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 30
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getInitializationTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 31
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->isReinitialized()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 34
    .local v0, "parameters":[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static logDebug(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 76
    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public static logError(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public static logInfo(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 70
    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public static logWarning(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->warning(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public static reinitialize(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unity3d/ads/properties/SdkProperties;->setReinitialized(Z)V

    .line 89
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebViewApp;->getConfiguration()Lcom/unity3d/ads/configuration/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/configuration/InitializeThread;->initialize(Lcom/unity3d/ads/configuration/Configuration;)V

    .line 92
    return-void
.end method

.method public static setDebugMode(Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "debugMode"    # Ljava/lang/Boolean;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->setDebugMode(Z)V

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static setShowTimeout(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "timeout"    # Ljava/lang/Integer;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unity3d/ads/properties/SdkProperties;->setShowTimeout(I)V

    .line 83
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 84
    return-void
.end method
