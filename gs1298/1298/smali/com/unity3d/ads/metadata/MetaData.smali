.class public Lcom/unity3d/ads/metadata/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# instance fields
.field private _category:Ljava/lang/String;

.field protected _context:Landroid/content/Context;

.field protected _metaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/metadata/MetaData;->_context:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 6

    .prologue
    .line 49
    iget-object v2, p0, Lcom/unity3d/ads/metadata/MetaData;->_context:Landroid/content/Context;

    invoke-static {v2}, Lcom/unity3d/ads/device/StorageManager;->init(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    sget-object v2, Lcom/unity3d/ads/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/ads/device/StorageManager$StorageType;

    invoke-static {v2}, Lcom/unity3d/ads/device/StorageManager;->getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;

    move-result-object v1

    .line 52
    .local v1, "storage":Lcom/unity3d/ads/device/Storage;
    iget-object v2, p0, Lcom/unity3d/ads/metadata/MetaData;->_metaData:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 53
    iget-object v2, p0, Lcom/unity3d/ads/metadata/MetaData;->_metaData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 55
    iget-object v3, p0, Lcom/unity3d/ads/metadata/MetaData;->_metaData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/unity3d/ads/device/Storage;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v1}, Lcom/unity3d/ads/device/Storage;->writeStorage()Z

    .line 61
    sget-object v2, Lcom/unity3d/ads/device/StorageEvent;->SET:Lcom/unity3d/ads/device/StorageEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/ads/metadata/MetaData;->_metaData:Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/unity3d/ads/device/Storage;->sendEvent(Lcom/unity3d/ads/device/StorageEvent;[Ljava/lang/Object;)V

    .line 68
    .end local v1    # "storage":Lcom/unity3d/ads/device/Storage;
    :cond_2
    :goto_1
    return-void

    .line 66
    :cond_3
    const-string v2, "Unity Ads could not commit metadata due to storage error"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/unity3d/ads/metadata/MetaData;->_category:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/unity3d/ads/metadata/MetaData;->_metaData:Ljava/util/Map;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/unity3d/ads/metadata/MetaData;->_metaData:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/unity3d/ads/metadata/MetaData;->_metaData:Ljava/util/Map;

    .line 35
    :cond_0
    move-object v0, p1

    .line 36
    .local v0, "finalKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/unity3d/ads/metadata/MetaData;->getCategory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unity3d/ads/metadata/MetaData;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/unity3d/ads/metadata/MetaData;->_metaData:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lcom/unity3d/ads/metadata/MetaData;->_metaData:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/unity3d/ads/metadata/MetaData;->_category:Ljava/lang/String;

    .line 24
    return-void
.end method
