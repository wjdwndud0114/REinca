.class public Lcom/unity3d/ads/cache/CacheDirectory;
.super Ljava/lang/Object;
.source "CacheDirectory.java"


# static fields
.field private static final TEST_FILE_NAME:Ljava/lang/String; = "UnityAdsTest.txt"


# instance fields
.field private _cacheDirName:Ljava/lang/String;

.field private _cacheDirectory:Ljava/io/File;

.field private _initialized:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cacheDirName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_initialized:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 21
    iput-object p1, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "newDir"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    if-nez p1, :cond_1

    move-object v0, v1

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 67
    goto :goto_0
.end method

.method public getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    iget-boolean v2, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_initialized:Z

    if-eqz v2, :cond_0

    .line 26
    iget-object v2, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 51
    :goto_0
    return-object v2

    .line 28
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_initialized:Z

    .line 30
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_2

    .line 31
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/unity3d/ads/cache/CacheDirectory;->createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 33
    .local v0, "externalCache":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/cache/CacheDirectory;->testCacheDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    iput-object v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity Ads is using external cache directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    goto :goto_0

    .line 39
    .end local v0    # "externalCache":Ljava/io/File;
    :cond_1
    const-string v2, "External media not mounted"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 43
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 44
    .local v1, "internalCache":Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/cache/CacheDirectory;->testCacheDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    iput-object v1, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity Ads is using internal cache directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    goto :goto_0

    .line 50
    :cond_3
    const-string v2, "Unity Ads failed to initialize cache directory"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 51
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public testCacheDirectory(Ljava/io/File;)Z
    .locals 11
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v8

    .line 77
    :cond_1
    :try_start_0
    const-string v9, "test"

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 78
    .local v3, "inData":[B
    array-length v9, v3

    new-array v4, v9, [B

    .line 79
    .local v4, "outData":[B
    new-instance v7, Ljava/io/File;

    const-string v9, "UnityAdsTest.txt"

    invoke-direct {v7, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v7, "testFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 82
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 83
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 84
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-nez v9, :cond_2

    .line 87
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to list files in directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "inData":[B
    .end local v4    # "outData":[B
    .end local v7    # "testFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unity Ads exception while testing cache directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "inData":[B
    .restart local v4    # "outData":[B
    .restart local v7    # "testFile":Ljava/io/File;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 92
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    array-length v10, v4

    invoke-virtual {v1, v4, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .line 93
    .local v5, "readCount":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 95
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_3

    .line 96
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to delete testfile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_3
    array-length v9, v4

    if-eq v5, v9, :cond_4

    .line 101
    const-string v9, "Read buffer size mismatch"

    invoke-static {v9}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_4
    new-instance v6, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v6, v4, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 107
    .local v6, "result":Ljava/lang/String;
    const-string v9, "test"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 108
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 110
    :cond_5
    const-string v9, "Read buffer content mismatch"

    invoke-static {v9}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
