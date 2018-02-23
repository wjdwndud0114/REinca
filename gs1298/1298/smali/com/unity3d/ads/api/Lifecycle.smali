.class public Lcom/unity3d/ads/api/Lifecycle;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static _listener:Lcom/unity3d/ads/lifecycle/LifecycleListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLifecycleListener()Lcom/unity3d/ads/lifecycle/LifecycleListener;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/unity3d/ads/api/Lifecycle;->_listener:Lcom/unity3d/ads/lifecycle/LifecycleListener;

    return-object v0
.end method

.method public static register(Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 6
    .param p0, "events"    # Lorg/json/JSONArray;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 22
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 23
    invoke-static {}, Lcom/unity3d/ads/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/ads/lifecycle/LifecycleListener;

    move-result-object v3

    if-nez v3, :cond_1

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v1, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/unity3d/ads/lifecycle/LifecycleError;->JSON_ERROR:Lcom/unity3d/ads/lifecycle/LifecycleError;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 47
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 36
    .restart local v1    # "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    :cond_0
    new-instance v3, Lcom/unity3d/ads/lifecycle/LifecycleListener;

    invoke-direct {v3, v1}, Lcom/unity3d/ads/lifecycle/LifecycleListener;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v3}, Lcom/unity3d/ads/api/Lifecycle;->setLifecycleListener(Lcom/unity3d/ads/lifecycle/LifecycleListener;)V

    .line 37
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {}, Lcom/unity3d/ads/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/ads/lifecycle/LifecycleListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 38
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 41
    .end local v1    # "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_1
    sget-object v3, Lcom/unity3d/ads/lifecycle/LifecycleError;->LISTENER_NOT_NULL:Lcom/unity3d/ads/lifecycle/LifecycleError;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 45
    :cond_2
    sget-object v3, Lcom/unity3d/ads/lifecycle/LifecycleError;->APPLICATION_NULL:Lcom/unity3d/ads/lifecycle/LifecycleError;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static setLifecycleListener(Lcom/unity3d/ads/lifecycle/LifecycleListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/unity3d/ads/lifecycle/LifecycleListener;

    .prologue
    .line 69
    sput-object p0, Lcom/unity3d/ads/api/Lifecycle;->_listener:Lcom/unity3d/ads/lifecycle/LifecycleListener;

    .line 70
    return-void
.end method

.method public static unregister(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {}, Lcom/unity3d/ads/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/ads/lifecycle/LifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/ads/lifecycle/LifecycleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/ads/api/Lifecycle;->setLifecycleListener(Lcom/unity3d/ads/lifecycle/LifecycleListener;)V

    .line 57
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_1
    sget-object v0, Lcom/unity3d/ads/lifecycle/LifecycleError;->APPLICATION_NULL:Lcom/unity3d/ads/lifecycle/LifecycleError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method
