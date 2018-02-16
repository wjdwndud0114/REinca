.class public Lcom/unity3d/ads/adunit/AdUnitOpen;
.super Ljava/lang/Object;
.source "AdUnitOpen.java"


# static fields
.field private static _waitShowStatus:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized open(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 8
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "options"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 17
    const-class v3, Lcom/unity3d/ads/adunit/AdUnitOpen;

    monitor-enter v3

    :try_start_0
    const-class v2, Lcom/unity3d/ads/adunit/AdUnitOpen;

    const-string v4, "showCallback"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/unity3d/ads/webview/bridge/CallbackStatus;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 18
    .local v0, "showCallback":Ljava/lang/reflect/Method;
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v2, Lcom/unity3d/ads/adunit/AdUnitOpen;->_waitShowStatus:Landroid/os/ConditionVariable;

    .line 19
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    const-string v4, "webview"

    const-string v5, "show"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v2, v4, v5, v0, v6}, Lcom/unity3d/ads/webview/WebViewApp;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    .line 20
    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitOpen;->_waitShowStatus:Landroid/os/ConditionVariable;

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getShowTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    .line 21
    .local v1, "success":Z
    const/4 v2, 0x0

    sput-object v2, Lcom/unity3d/ads/adunit/AdUnitOpen;->_waitShowStatus:Landroid/os/ConditionVariable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v3

    return v1

    .line 17
    .end local v0    # "showCallback":Ljava/lang/reflect/Method;
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static showCallback(Lcom/unity3d/ads/webview/bridge/CallbackStatus;)V
    .locals 1
    .param p0, "status"    # Lcom/unity3d/ads/webview/bridge/CallbackStatus;

    .prologue
    .line 26
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitOpen;->_waitShowStatus:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/webview/bridge/CallbackStatus;->OK:Lcom/unity3d/ads/webview/bridge/CallbackStatus;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/CallbackStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitOpen;->_waitShowStatus:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 29
    :cond_0
    return-void
.end method
