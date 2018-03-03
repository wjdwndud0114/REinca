.class public Lcom/tapjoy/TJWebViewJSInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJWebViewJSInterface$a;
    }
.end annotation


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Lcom/tapjoy/TJWebViewJSInterfaceListener;

.field c:Ljava/util/PriorityQueue;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/tapjoy/TJWebViewJSInterfaceListener;)V
    .locals 1
    .param p1, "w"    # Landroid/webkit/WebView;
    .param p2, "l"    # Lcom/tapjoy/TJWebViewJSInterfaceListener;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tapjoy/TJWebViewJSInterface;->a:Landroid/webkit/WebView;

    .line 28
    iput-object p2, p0, Lcom/tapjoy/TJWebViewJSInterface;->b:Lcom/tapjoy/TJWebViewJSInterfaceListener;

    .line 29
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJWebViewJSInterface;->c:Ljava/util/PriorityQueue;

    .line 30
    return-void
.end method


# virtual methods
.method public callback(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 78
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 79
    invoke-virtual {p0, v0, p2, p3}, Lcom/tapjoy/TJWebViewJSInterface;->callbackToJavaScript(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public callback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 99
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 101
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 102
    invoke-virtual {p0, v0, p2, p3}, Lcom/tapjoy/TJWebViewJSInterface;->callbackToJavaScript(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v1, "TJWebViewJSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in callback to JS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public callbackToJavaScript(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 124
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 125
    const-string v1, "arguments"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 128
    const-string v1, "method"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 134
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 135
    const-string v2, "callbackId"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    :cond_1
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "javascript:if(window.AndroidWebViewJavascriptBridge) AndroidWebViewJavascriptBridge._handleMessageFromAndroid(\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/tapjoy/TJWebViewJSInterface;->c:Ljava/util/PriorityQueue;

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/tapjoy/TJWebViewJSInterface;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 152
    :goto_0
    return-void

    .line 146
    :cond_2
    new-instance v1, Lcom/tapjoy/TJWebViewJSInterface$a;

    iget-object v2, p0, Lcom/tapjoy/TJWebViewJSInterface;->a:Landroid/webkit/WebView;

    invoke-direct {v1, p0, v2}, Lcom/tapjoy/TJWebViewJSInterface$a;-><init>(Lcom/tapjoy/TJWebViewJSInterface;Landroid/webkit/WebView;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJWebViewJSInterface$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v1, "TJWebViewJSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in callback to JS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dispatchMethod(Ljava/lang/String;)V
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 44
    const-string v0, "TJWebViewJSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchMethod params: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 52
    const-string v2, "method"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "TJWebViewJSInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/tapjoy/TJWebViewJSInterface;->b:Lcom/tapjoy/TJWebViewJSInterfaceListener;

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/tapjoy/TJWebViewJSInterface;->b:Lcom/tapjoy/TJWebViewJSInterfaceListener;

    invoke-interface {v2, v1, v0}, Lcom/tapjoy/TJWebViewJSInterfaceListener;->onDispatchMethod(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public flushMessageQueue()V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tapjoy/TJWebViewJSInterface;->c:Ljava/util/PriorityQueue;

    if-eqz v0, :cond_1

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TJWebViewJSInterface;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/tapjoy/TJWebViewJSInterface;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    new-instance v1, Lcom/tapjoy/TJWebViewJSInterface$a;

    iget-object v2, p0, Lcom/tapjoy/TJWebViewJSInterface;->a:Landroid/webkit/WebView;

    invoke-direct {v1, p0, v2}, Lcom/tapjoy/TJWebViewJSInterface$a;-><init>(Lcom/tapjoy/TJWebViewJSInterface;Landroid/webkit/WebView;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJWebViewJSInterface$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 164
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJWebViewJSInterface;->c:Ljava/util/PriorityQueue;

    .line 166
    :cond_1
    return-void
.end method
