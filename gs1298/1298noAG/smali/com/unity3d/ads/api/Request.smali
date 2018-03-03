.class public Lcom/unity3d/ads/api/Request;
.super Ljava/lang/Object;
.source "Request.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headers"    # Lorg/json/JSONArray;
    .param p3, "connectTimeout"    # Ljava/lang/Integer;
    .param p4, "readTimeout"    # Ljava/lang/Integer;
    .param p5, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 28
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const/4 p2, 0x0

    .line 34
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/unity3d/ads/api/Request;->getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 42
    .local v2, "mappedHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v1, Lcom/unity3d/ads/request/WebRequest$RequestType;->GET:Lcom/unity3d/ads/request/WebRequest$RequestType;

    const/4 v3, 0x0

    new-instance v6, Lcom/unity3d/ads/api/Request$1;

    invoke-direct {v6, p0}, Lcom/unity3d/ads/api/Request$1;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/unity3d/ads/request/WebRequestThread;->request(Ljava/lang/String;Lcom/unity3d/ads/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/request/IWebRequestListener;)V

    .line 63
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p0, v0, v8

    invoke-virtual {p5, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 64
    .end local v2    # "mappedHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v7

    .line 37
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "Error mapping headers for the request"

    invoke-static {v0, v7}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 38
    sget-object v0, Lcom/unity3d/ads/request/WebRequestError;->MAPPING_HEADERS_FAILED:Lcom/unity3d/ads/request/WebRequestError;

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p0, v1, v8

    invoke-virtual {p5, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    .locals 6
    .param p0, "headers"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 170
    const/4 v2, 0x0

    .line 172
    .local v2, "mappedHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_1

    .line 173
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "mappedHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 174
    .restart local v2    # "mappedHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 175
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 176
    .local v0, "header":Lorg/json/JSONArray;
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 177
    .local v3, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 178
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .restart local v3    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "header":Lorg/json/JSONArray;
    .end local v1    # "idx":I
    .end local v3    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v2
.end method

.method public static getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 152
    .local v2, "retObj":Lorg/json/JSONArray;
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 153
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 156
    .local v1, "keyValueMap":Lorg/json/JSONArray;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 157
    .local v3, "value":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONArray;

    .end local v1    # "keyValueMap":Lorg/json/JSONArray;
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 158
    .restart local v1    # "keyValueMap":Lorg/json/JSONArray;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 159
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 162
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 166
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keyValueMap":Lorg/json/JSONArray;
    :cond_1
    return-object v2
.end method

.method public static head(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 9
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headers"    # Lorg/json/JSONArray;
    .param p3, "connectTimeout"    # Ljava/lang/Integer;
    .param p4, "readTimeout"    # Ljava/lang/Integer;
    .param p5, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 111
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const/4 p2, 0x0

    .line 117
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/unity3d/ads/api/Request;->getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 125
    .local v2, "mappedHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v1, Lcom/unity3d/ads/request/WebRequest$RequestType;->HEAD:Lcom/unity3d/ads/request/WebRequest$RequestType;

    new-instance v5, Lcom/unity3d/ads/api/Request$3;

    invoke-direct {v5, p0}, Lcom/unity3d/ads/api/Request$3;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/unity3d/ads/request/WebRequestThread;->request(Ljava/lang/String;Lcom/unity3d/ads/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/request/IWebRequestListener;)V

    .line 146
    new-array v0, v8, [Ljava/lang/Object;

    aput-object p0, v0, v7

    invoke-virtual {p5, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 147
    .end local v2    # "mappedHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v6

    .line 120
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "Error mapping headers for the request"

    invoke-static {v0, v6}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 121
    sget-object v0, Lcom/unity3d/ads/request/WebRequestError;->MAPPING_HEADERS_FAILED:Lcom/unity3d/ads/request/WebRequestError;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-virtual {p5, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 8
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestBody"    # Ljava/lang/String;
    .param p3, "headers"    # Lorg/json/JSONArray;
    .param p4, "connectTimeout"    # Ljava/lang/Integer;
    .param p5, "readTimeout"    # Ljava/lang/Integer;
    .param p6, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 68
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 p2, 0x0

    .line 71
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 72
    const/4 p3, 0x0

    .line 77
    :cond_1
    :try_start_0
    invoke-static {p3}, Lcom/unity3d/ads/api/Request;->getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    .local v2, "mappedHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v1, Lcom/unity3d/ads/request/WebRequest$RequestType;->POST:Lcom/unity3d/ads/request/WebRequest$RequestType;

    new-instance v6, Lcom/unity3d/ads/api/Request$2;

    invoke-direct {v6, p0}, Lcom/unity3d/ads/api/Request$2;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/unity3d/ads/request/WebRequestThread;->request(Ljava/lang/String;Lcom/unity3d/ads/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/request/IWebRequestListener;)V

    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p6, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 107
    .end local v2    # "mappedHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v7

    .line 80
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "Error mapping headers for the request"

    invoke-static {v0, v7}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 81
    sget-object v0, Lcom/unity3d/ads/request/WebRequestError;->MAPPING_HEADERS_FAILED:Lcom/unity3d/ads/request/WebRequestError;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    invoke-virtual {p6, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method
