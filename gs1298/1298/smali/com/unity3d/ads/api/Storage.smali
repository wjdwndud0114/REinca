.class public Lcom/unity3d/ads/api/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 135
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 137
    .local v0, "s":Lcom/unity3d/ads/device/Storage;
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->clearStorage()Z

    move-result v1

    .line 139
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 140
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {p1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 149
    .end local v1    # "success":Z
    :goto_0
    return-void

    .line 143
    .restart local v1    # "success":Z
    :cond_0
    sget-object v2, Lcom/unity3d/ads/device/StorageError;->COULDNT_CLEAR_STORAGE:Lcom/unity3d/ads/device/StorageError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    .end local v1    # "success":Z
    :cond_1
    sget-object v2, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 153
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 155
    .local v0, "s":Lcom/unity3d/ads/device/Storage;
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0, p1}, Lcom/unity3d/ads/device/Storage;->delete(Ljava/lang/String;)Z

    move-result v1

    .line 157
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 158
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {p2, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 167
    .end local v1    # "success":Z
    :goto_0
    return-void

    .line 161
    .restart local v1    # "success":Z
    :cond_0
    sget-object v2, Lcom/unity3d/ads/device/StorageError;->COULDNT_DELETE_VALUE:Lcom/unity3d/ads/device/StorageError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    .end local v1    # "success":Z
    :cond_1
    sget-object v2, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v1

    .line 70
    .local v1, "s":Lcom/unity3d/ads/device/Storage;
    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v1, p1}, Lcom/unity3d/ads/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 74
    sget-object v2, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_VALUE:Lcom/unity3d/ads/device/StorageError;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 83
    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 77
    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p2, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    .end local v0    # "retObj":Ljava/lang/Object;
    :cond_1
    sget-object v2, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {p2, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "recursive"    # Ljava/lang/Boolean;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v1

    .line 89
    .local v1, "s":Lcom/unity3d/ads/device/Storage;
    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/unity3d/ads/device/Storage;->getKeys(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 92
    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v4

    invoke-virtual {p3, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 100
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 94
    .restart local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    aput-object v3, v2, v4

    invoke-virtual {p3, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v2, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {p3, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager$StorageType;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/device/StorageManager$StorageType;

    move-result-object v0

    .line 172
    .local v0, "storageType":Lcom/unity3d/ads/device/StorageManager$StorageType;
    invoke-static {v0}, Lcom/unity3d/ads/device/StorageManager;->getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;

    move-result-object v1

    return-object v1
.end method

.method public static read(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 106
    .local v0, "s":Lcom/unity3d/ads/device/Storage;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->readStorage()Z

    .line 108
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {p1, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-object v1, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 22
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 23
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 33
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 17
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 18
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 28
    return-void
.end method

.method private static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 53
    .local v0, "s":Lcom/unity3d/ads/device/Storage;
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0, p1, p2}, Lcom/unity3d/ads/device/Storage;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 55
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 56
    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {p3, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 64
    .end local v1    # "success":Z
    :goto_0
    return-void

    .line 58
    .restart local v1    # "success":Z
    :cond_0
    sget-object v2, Lcom/unity3d/ads/device/StorageError;->COULDNT_SET_VALUE:Lcom/unity3d/ads/device/StorageError;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-virtual {p3, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    .end local v1    # "success":Z
    :cond_1
    sget-object v2, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    invoke-virtual {p3, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 38
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 48
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 43
    return-void
.end method

.method public static write(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 119
    .local v0, "s":Lcom/unity3d/ads/device/Storage;
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->writeStorage()Z

    move-result v1

    .line 121
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 122
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {p1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 131
    .end local v1    # "success":Z
    :goto_0
    return-void

    .line 125
    .restart local v1    # "success":Z
    :cond_0
    sget-object v2, Lcom/unity3d/ads/device/StorageError;->COULDNT_WRITE_STORAGE_TO_CACHE:Lcom/unity3d/ads/device/StorageError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    .end local v1    # "success":Z
    :cond_1
    sget-object v2, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method
