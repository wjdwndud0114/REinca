.class public Lcom/unity3d/ads/broadcast/BroadcastEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastEventReceiver.java"


# instance fields
.field private _name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/unity3d/ads/broadcast/BroadcastEventReceiver;->_name:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v2, ""

    .line 31
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 35
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .local v4, "extras":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 40
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 41
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 44
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "key":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 45
    .local v3, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JSONException when composing extras for broadcast action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 48
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v6

    .line 51
    .local v6, "webViewApp":Lcom/unity3d/ads/webview/WebViewApp;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/unity3d/ads/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 55
    sget-object v7, Lcom/unity3d/ads/webview/WebViewEventCategory;->BROADCAST:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v8, Lcom/unity3d/ads/broadcast/BroadcastEvent;->ACTION:Lcom/unity3d/ads/broadcast/BroadcastEvent;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/unity3d/ads/broadcast/BroadcastEventReceiver;->_name:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const/4 v10, 0x3

    aput-object v4, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
