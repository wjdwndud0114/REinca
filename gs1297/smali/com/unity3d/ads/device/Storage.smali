.class public Lcom/unity3d/ads/device/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# instance fields
.field private _data:Lorg/json/JSONObject;

.field private _targetFileName:Ljava/lang/String;

.field private _type:Lcom/unity3d/ads/device/StorageManager$StorageType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/device/StorageManager$StorageType;)V
    .locals 0
    .param p1, "targetFileName"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/unity3d/ads/device/Storage;->_type:Lcom/unity3d/ads/device/StorageManager$StorageType;

    .line 28
    return-void
.end method

.method private declared-synchronized createObjectTree(Ljava/lang/String;)V
    .locals 6
    .param p1, "tree"    # Ljava/lang/String;

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "objects":[Ljava/lang/String;
    iget-object v3, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    .line 250
    .local v3, "parentObject":Lorg/json/JSONObject;
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 273
    :cond_0
    monitor-exit p0

    return-void

    .line 254
    :cond_1
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    :try_start_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 255
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 257
    :try_start_2
    aget-object v4, v2, v1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 258
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 254
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "Couldn\'t create new JSONObject"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "idx":I
    .end local v2    # "objects":[Ljava/lang/String;
    .end local v3    # "parentObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 266
    .restart local v1    # "idx":I
    .restart local v2    # "objects":[Ljava/lang/String;
    .restart local v3    # "parentObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_4
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 268
    :catch_1
    move-exception v0

    .line 269
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "Couldn\'t get existing JSONObject"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized findObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 221
    monitor-enter p0

    :try_start_0
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "objects":[Ljava/lang/String;
    iget-object v3, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    .line 224
    .local v3, "parentObject":Lorg/json/JSONObject;
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    move-object v4, v3

    .line 243
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 228
    :cond_1
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    :try_start_1
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 229
    aget-object v5, v2, v1

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    :try_start_2
    aget-object v5, v2, v1

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t read JSONObject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "idx":I
    .end local v2    # "objects":[Ljava/lang/String;
    .end local v3    # "parentObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1    # "idx":I
    .restart local v2    # "objects":[Ljava/lang/String;
    .restart local v3    # "parentObject":Lorg/json/JSONObject;
    :cond_2
    move-object v4, v3

    .line 243
    goto :goto_0
.end method

.method private declared-synchronized getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "tree"    # Ljava/lang/String;

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "objects":[Ljava/lang/Object;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 279
    .local v2, "tmpObs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 280
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 281
    const-string v3, "."

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 283
    .local v1, "parentObject":Ljava/lang/String;
    monitor-exit p0

    return-object v1

    .line 277
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "parentObject":Ljava/lang/String;
    .end local v2    # "tmpObs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized clearData()V
    .locals 1

    .prologue
    .line 189
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearStorage()Z
    .locals 2

    .prologue
    .line 183
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    .line 184
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 183
    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized delete(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 127
    const-string v3, "Data is NULL, readStorage probably not called"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 131
    :cond_1
    :try_start_1
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "objects":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/unity3d/ads/device/Storage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/unity3d/ads/device/Storage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 135
    .local v1, "parentObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 136
    const/4 v2, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "objects":[Ljava/lang/String;
    .end local v1    # "parentObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 65
    const-string v4, "Data is NULL, readStorage probably not called"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 69
    :cond_1
    :try_start_1
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "objects":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/unity3d/ads/device/Storage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/unity3d/ads/device/Storage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .local v3, "parentObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, "o":Ljava/lang/Object;
    :try_start_2
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "Error getting data"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "objects":[Ljava/lang/String;
    .end local v3    # "parentObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getKeys(Ljava/lang/String;Z)Ljava/util/List;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_2

    .line 93
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 95
    .local v3, "parentObject":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    .line 99
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 101
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    .local v0, "currentKey":Ljava/lang/String;
    const/4 v5, 0x0

    .line 105
    .local v5, "subkeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/unity3d/ads/device/Storage;->getKeys(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 109
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    if-eqz v5, :cond_0

    .line 112
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 113
    .local v4, "subkey":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    .end local v0    # "currentKey":Ljava/lang/String;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "parentObject":Lorg/json/JSONObject;
    .end local v4    # "subkey":Ljava/lang/String;
    .end local v5    # "subkeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 122
    :cond_2
    const/4 v2, 0x0

    :cond_3
    monitor-exit p0

    return-object v2
.end method

.method public getType()Lcom/unity3d/ads/device/StorageManager$StorageType;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/unity3d/ads/device/Storage;->_type:Lcom/unity3d/ads/device/StorageManager$StorageType;

    return-object v0
.end method

.method public declared-synchronized hasData()Z
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initStorage()Z
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/ads/device/Storage;->readStorage()Z

    .line 163
    iget-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readStorage()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 143
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/unity3d/ads/misc/Utilities;->readFile(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 146
    .local v2, "fileData":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 148
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/unity3d/ads/misc/Utilities;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    const/4 v3, 0x1

    .line 158
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Error creating storage JSON"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fileData":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public varargs declared-synchronized sendEvent(Lcom/unity3d/ads/device/StorageEvent;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "eventType"    # Lcom/unity3d/ads/device/StorageEvent;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 205
    monitor-enter p0

    const/4 v2, 0x0

    .line 207
    .local v2, "success":Z
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, "par":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 210
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/unity3d/ads/device/Storage;->_type:Lcom/unity3d/ads/device/StorageManager$StorageType;

    invoke-virtual {v4}, Lcom/unity3d/ads/device/StorageManager$StorageType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 211
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 212
    .local v1, "paramsArray":[Ljava/lang/Object;
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/webview/WebViewEventCategory;->STORAGE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    invoke-virtual {v3, v4, p1, v1}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    move-result v2

    .line 215
    .end local v0    # "par":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1    # "paramsArray":[Ljava/lang/Object;
    :cond_0
    if-nez v2, :cond_1

    .line 216
    const-string v3, "Couldn\'t send storage event to WebApp"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_1
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    .line 36
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storage not properly initialized or incorrect parameters:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_0
    monitor-exit p0

    return v3

    .line 40
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/unity3d/ads/device/Storage;->createObjectTree(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/unity3d/ads/device/Storage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    .line 43
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/unity3d/ads/device/Storage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 44
    .local v2, "parentObject":Lorg/json/JSONObject;
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 46
    .local v1, "objects":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 48
    :try_start_2
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3
    const-string v4, "Couldn\'t set value"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 35
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "objects":[Ljava/lang/String;
    .end local v2    # "parentObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 56
    :cond_3
    :try_start_4
    const-string v4, "Cannot set subvalue to an object that is not JSONObject"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized storageFileExists()Z
    .locals 2

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 200
    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized writeStorage()Z
    .locals 3

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "f":Ljava/io/File;
    iget-object v2, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unity3d/ads/misc/Utilities;->writeFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 179
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 171
    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
