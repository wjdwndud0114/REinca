.class public Lcom/unity3d/ads/webview/bridge/WebViewBridgeInterface;
.super Ljava/lang/Object;
.source "WebViewBridgeInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getParameters(Lorg/json/JSONArray;)[Ljava/lang/Object;
    .locals 3
    .param p1, "parametersJson"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v1, v2, [Ljava/lang/Object;

    .line 53
    .local v1, "parameters":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-object v1
.end method


# virtual methods
.method public handleCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "callbackStatus"    # Ljava/lang/String;
    .param p3, "rawParameters"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 39
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "parametersJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 41
    .local v1, "parameters":[Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 42
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v1, v3, [Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 44
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    :cond_0
    invoke-static {p1, p2, v1}, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->handleCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public handleInvocation(Ljava/lang/String;)V
    .locals 11
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleInvocation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 15
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 16
    .local v5, "invocationArray":Lorg/json/JSONArray;
    new-instance v0, Lcom/unity3d/ads/webview/bridge/Invocation;

    invoke-direct {v0}, Lcom/unity3d/ads/webview/bridge/Invocation;-><init>()V

    .line 18
    .local v0, "batch":Lcom/unity3d/ads/webview/bridge/Invocation;
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 19
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 20
    .local v3, "currentInvocation":Lorg/json/JSONArray;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    .local v2, "className":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 22
    .local v6, "methodName":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    .line 23
    .local v7, "parameters":Lorg/json/JSONArray;
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    .local v1, "callback":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/unity3d/ads/webview/bridge/WebViewBridgeInterface;->getParameters(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v8

    new-instance v9, Lcom/unity3d/ads/webview/bridge/WebViewCallback;

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/bridge/Invocation;->getId()I

    move-result v10

    invoke-direct {v9, v1, v10}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v6, v8, v9}, Lcom/unity3d/ads/webview/bridge/Invocation;->addInvocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 18
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 28
    .end local v1    # "callback":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "currentInvocation":Lorg/json/JSONArray;
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v7    # "parameters":Lorg/json/JSONArray;
    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 29
    invoke-virtual {v0}, Lcom/unity3d/ads/webview/bridge/Invocation;->nextInvocation()Z

    .line 28
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/unity3d/ads/webview/bridge/Invocation;->sendInvocationCallback()V

    .line 33
    return-void
.end method
