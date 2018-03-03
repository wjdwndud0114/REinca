.class public Lcom/unity3d/ads/api/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "fileId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/unity3d/ads/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    sget-object v1, Lcom/unity3d/ads/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/cache/CacheError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "headers"    # Lorg/json/JSONArray;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-static {}, Lcom/unity3d/ads/cache/CacheThread;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    sget-object v2, Lcom/unity3d/ads/cache/CacheError;->FILE_ALREADY_CACHING:Lcom/unity3d/ads/cache/CacheError;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p3, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 55
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/device/Device;->isActiveNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    sget-object v2, Lcom/unity3d/ads/cache/CacheError;->NO_INTERNET:Lcom/unity3d/ads/cache/CacheError;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p3, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/unity3d/ads/api/Request;->getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    .local v1, "mappedHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p1}, Lcom/unity3d/ads/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/unity3d/ads/cache/CacheThread;->download(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 54
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p3, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    .end local v1    # "mappedHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error mapping headers for the request"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 49
    sget-object v2, Lcom/unity3d/ads/request/WebRequestError;->MAPPING_HEADERS_FAILED:Lcom/unity3d/ads/request/WebRequestError;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {p3, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileId"    # Ljava/lang/String;

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheFilePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileContent(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 10
    .param p0, "fileId"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 74
    invoke-static {p0}, Lcom/unity3d/ads/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    :try_start_0
    invoke-static {v2}, Lcom/unity3d/ads/misc/Utilities;->readFileBytes(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    .local v0, "byteData":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 90
    .local v3, "fileContents":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 91
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    :try_start_1
    new-instance v3, Ljava/lang/String;

    .end local v3    # "fileContents":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-direct {v3, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .restart local v3    # "fileContents":Ljava/lang/String;
    :cond_0
    :goto_0
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {p2, v5}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 114
    .end local v0    # "byteData":[B
    .end local v3    # "fileContents":Ljava/lang/String;
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/unity3d/ads/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/cache/CacheError;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v7

    aput-object v4, v6, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p2, v5, v6}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "byteData":[B
    :catch_1
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v5, Lcom/unity3d/ads/cache/CacheError;->UNSUPPORTED_ENCODING:Lcom/unity3d/ads/cache/CacheError;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v7

    aput-object v4, v6, v8

    aput-object p1, v6, v9

    invoke-virtual {p2, v5, v6}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 100
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "fileContents":Ljava/lang/String;
    :cond_1
    const-string v5, "Base64"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    invoke-static {v0, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 104
    :cond_2
    sget-object v5, Lcom/unity3d/ads/cache/CacheError;->UNSUPPORTED_ENCODING:Lcom/unity3d/ads/cache/CacheError;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v7

    aput-object v4, v6, v8

    aput-object p1, v6, v9

    invoke-virtual {p2, v5, v6}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 112
    .end local v0    # "byteData":[B
    .end local v3    # "fileContents":Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/unity3d/ads/cache/CacheError;->FILE_NOT_FOUND:Lcom/unity3d/ads/cache/CacheError;

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p0, v6, v7

    aput-object v4, v6, v8

    invoke-virtual {p2, v5, v6}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getFileInfo(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 5
    .param p0, "fileId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 158
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/ads/api/Cache;->getFileJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 159
    .local v1, "result":Lorg/json/JSONObject;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "result":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Error creating JSON"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 163
    sget-object v2, Lcom/unity3d/ads/cache/CacheError;->JSON_ERROR:Lcom/unity3d/ads/cache/CacheError;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getFileJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "fileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 288
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 289
    .local v1, "fileJson":Lorg/json/JSONObject;
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/unity3d/ads/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const-string v2, "found"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 295
    const-string v2, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 296
    const-string v2, "mtime"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 301
    :goto_0
    return-object v1

    .line 298
    :cond_0
    const-string v2, "found"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static getFilePath(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .param p0, "fileId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 169
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/unity3d/ads/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/unity3d/ads/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    sget-object v1, Lcom/unity3d/ads/cache/CacheError;->FILE_NOT_FOUND:Lcom/unity3d/ads/cache/CacheError;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getFiles(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 14
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 119
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 121
    .local v0, "cacheDirectory":Ljava/io/File;
    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string v7, "Unity Ads cache: checking app directory for Unity Ads cached files"

    invoke-static {v7}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 125
    new-instance v5, Lcom/unity3d/ads/api/Cache$1;

    invoke-direct {v5}, Lcom/unity3d/ads/api/Cache$1;-><init>()V

    .line 132
    .local v5, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v0, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 134
    .local v3, "fileList":[Ljava/io/File;
    if-eqz v3, :cond_1

    array-length v7, v3

    if-nez v7, :cond_2

    .line 135
    :cond_1
    new-array v7, v9, [Ljava/lang/Object;

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 139
    :cond_2
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 141
    .local v4, "files":Lorg/json/JSONArray;
    array-length v9, v3

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_3

    aget-object v2, v3, v7

    .line 142
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheFilePrefix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "name":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unity Ads cache: found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 144
    invoke-static {v6}, Lcom/unity3d/ads/api/Cache;->getFileJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 141
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 147
    .end local v2    # "f":Ljava/io/File;
    .end local v6    # "name":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v7, v9

    invoke-virtual {p0, v7}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    .end local v4    # "files":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Lorg/json/JSONException;
    const-string v7, "Error creating JSON"

    invoke-static {v7, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 151
    sget-object v7, Lcom/unity3d/ads/cache/CacheError;->JSON_ERROR:Lcom/unity3d/ads/cache/CacheError;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v7, v8}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static getFreeSpace(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/device/Device;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public static getHash(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "fileId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/unity3d/ads/misc/Utilities;->Sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method private static getMetaData(Ljava/lang/String;Lorg/json/JSONArray;)Landroid/util/SparseArray;
    .locals 9
    .param p0, "videoFile"    # Ljava/lang/String;
    .param p1, "requestedMetaDatas"    # Lorg/json/JSONArray;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "f":Ljava/io/File;
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 263
    .local v5, "returnArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 264
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 265
    .local v4, "metadataRetriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 268
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 269
    .local v2, "metaDataKey":I
    invoke-virtual {v4, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "metaDataValue":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 272
    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "i":I
    .end local v2    # "metaDataKey":I
    .end local v3    # "metaDataValue":Ljava/lang/String;
    .end local v4    # "metadataRetriever":Landroid/media/MediaMetadataRetriever;
    :cond_1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 280
    .restart local v1    # "i":I
    .restart local v4    # "metadataRetriever":Landroid/media/MediaMetadataRetriever;
    :cond_2
    return-object v5
.end method

.method public static getMetaData(Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 10
    .param p0, "fileId"    # Ljava/lang/String;
    .param p1, "requestedMetaDatas"    # Lorg/json/JSONArray;
    .param p2, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 228
    invoke-static {p0}, Lcom/unity3d/ads/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "videoFile":Ljava/lang/String;
    :try_start_0
    invoke-static {v5, p1}, Lcom/unity3d/ads/api/Cache;->getMetaData(Ljava/lang/String;Lorg/json/JSONArray;)Landroid/util/SparseArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 246
    .local v4, "returnValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 248
    .local v3, "returnJsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 249
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 250
    .local v1, "entryJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 251
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 252
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "entryJsonArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "returnJsonArray":Lorg/json/JSONArray;
    .end local v4    # "returnValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/unity3d/ads/cache/CacheError;->JSON_ERROR:Lcom/unity3d/ads/cache/CacheError;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p2, v6, v7}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 256
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 237
    :catch_1
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v6, Lcom/unity3d/ads/cache/CacheError;->INVALID_ARGUMENT:Lcom/unity3d/ads/cache/CacheError;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p2, v6, v7}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 241
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Lcom/unity3d/ads/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/cache/CacheError;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p2, v6, v7}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v3    # "returnJsonArray":Lorg/json/JSONArray;
    .restart local v4    # "returnValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_0
    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v9

    invoke-virtual {p2, v6}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getProgressInterval(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/cache/CacheThread;->getProgressInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public static getTimeouts(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/cache/CacheThread;->getConnectTimeout()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/unity3d/ads/cache/CacheThread;->getReadTimeout()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public static getTotalSpace(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/device/Device;->getTotalSpace(Ljava/io/File;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public static isCaching(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/cache/CacheThread;->isActive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public static setProgressInterval(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "interval"    # Ljava/lang/Integer;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unity3d/ads/cache/CacheThread;->setProgressInterval(I)V

    .line 207
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public static setTimeouts(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "connectTimeout"    # Ljava/lang/Integer;
    .param p1, "readTimeout"    # Ljava/lang/Integer;
    .param p2, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unity3d/ads/cache/CacheThread;->setConnectTimeout(I)V

    .line 195
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unity3d/ads/cache/CacheThread;->setReadTimeout(I)V

    .line 196
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public static stop(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-static {}, Lcom/unity3d/ads/cache/CacheThread;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/unity3d/ads/cache/CacheError;->NOT_CACHING:Lcom/unity3d/ads/cache/CacheError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/cache/CacheThread;->cancel()V

    .line 64
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method
