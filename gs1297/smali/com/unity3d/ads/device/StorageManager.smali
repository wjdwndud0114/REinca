.class public Lcom/unity3d/ads/device/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/device/StorageManager$StorageType;
    }
.end annotation


# static fields
.field protected static final _storageFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/unity3d/ads/device/StorageManager$StorageType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final _storages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unity3d/ads/device/Storage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static declared-synchronized addStorageLocation(Lcom/unity3d/ads/device/StorageManager$StorageType;Ljava/lang/String;)V
    .locals 2
    .param p0, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v1, Lcom/unity3d/ads/device/StorageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit v1

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;
    .locals 3
    .param p0, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;

    .prologue
    .line 69
    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 70
    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/device/Storage;

    .line 71
    .local v0, "s":Lcom/unity3d/ads/device/Storage;
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->getType()Lcom/unity3d/ads/device/StorageManager$StorageType;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/unity3d/ads/device/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    .end local v0    # "s":Lcom/unity3d/ads/device/Storage;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Z
    .locals 3
    .param p0, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;

    .prologue
    .line 79
    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 80
    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/device/Storage;

    .line 81
    .local v0, "s":Lcom/unity3d/ads/device/Storage;
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->getType()Lcom/unity3d/ads/device/StorageManager$StorageType;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/unity3d/ads/device/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 85
    .end local v0    # "s":Lcom/unity3d/ads/device/Storage;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 20
    if-nez p0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    .line 22
    :cond_1
    invoke-static {p0}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 24
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 26
    sget-object v2, Lcom/unity3d/ads/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/ads/device/StorageManager$StorageType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getLocalStorageFilePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "public-data.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unity3d/ads/device/StorageManager;->addStorageLocation(Lcom/unity3d/ads/device/StorageManager$StorageType;Ljava/lang/String;)V

    .line 27
    sget-object v2, Lcom/unity3d/ads/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/ads/device/StorageManager$StorageType;

    invoke-static {v2}, Lcom/unity3d/ads/device/StorageManager;->setupStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    sget-object v2, Lcom/unity3d/ads/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/ads/device/StorageManager$StorageType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getLocalStorageFilePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "private-data.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unity3d/ads/device/StorageManager;->addStorageLocation(Lcom/unity3d/ads/device/StorageManager$StorageType;Ljava/lang/String;)V

    .line 32
    sget-object v2, Lcom/unity3d/ads/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/ads/device/StorageManager$StorageType;

    invoke-static {v2}, Lcom/unity3d/ads/device/StorageManager;->setupStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static initStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)V
    .locals 2
    .param p0, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->hasStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 42
    .local v0, "s":Lcom/unity3d/ads/device/Storage;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->initStorage()Z

    .line 51
    .end local v0    # "s":Lcom/unity3d/ads/device/Storage;
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Lcom/unity3d/ads/device/Storage;

    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/unity3d/ads/device/Storage;-><init>(Ljava/lang/String;Lcom/unity3d/ads/device/StorageManager$StorageType;)V

    .line 48
    .restart local v0    # "s":Lcom/unity3d/ads/device/Storage;
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->initStorage()Z

    .line 49
    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static declared-synchronized removeStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)V
    .locals 3
    .param p0, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;

    .prologue
    .line 95
    const-class v1, Lcom/unity3d/ads/device/StorageManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    sget-object v0, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    monitor-exit v1

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setupStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Z
    .locals 2
    .param p0, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->hasStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->initStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)V

    .line 56
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 57
    .local v0, "s":Lcom/unity3d/ads/device/Storage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->storageFileExists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->writeStorage()Z

    .line 60
    :cond_0
    if-nez v0, :cond_1

    .line 61
    const/4 v1, 0x0

    .line 65
    .end local v0    # "s":Lcom/unity3d/ads/device/Storage;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
