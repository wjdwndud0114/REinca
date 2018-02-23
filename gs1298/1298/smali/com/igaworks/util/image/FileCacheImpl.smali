.class public Lcom/igaworks/util/image/FileCacheImpl;
.super Ljava/lang/Object;
.source "FileCacheImpl.java"

# interfaces
.implements Lcom/igaworks/util/image/FileCache;


# static fields
.field public static final IGAW_CACHE_PATH:Ljava/lang/String; = "/igaw/"


# instance fields
.field private cacheStorage:Lcom/igaworks/util/image/CacheStorage;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 3
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxKBSizes"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-gtz p2, :cond_0

    const-wide/16 v0, 0x0

    .line 18
    .local v0, "maxBytesSize":J
    :goto_0
    new-instance v2, Lcom/igaworks/util/image/CacheStorage;

    invoke-direct {v2, p1, v0, v1}, Lcom/igaworks/util/image/CacheStorage;-><init>(Ljava/io/File;J)V

    iput-object v2, p0, Lcom/igaworks/util/image/FileCacheImpl;->cacheStorage:Lcom/igaworks/util/image/CacheStorage;

    .line 19
    return-void

    .line 17
    .end local v0    # "maxBytesSize":J
    :cond_0
    mul-int/lit16 v2, p2, 0x400

    int-to-long v0, v2

    goto :goto_0
.end method

.method public static computeHashedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 89
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 91
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 92
    .local v2, "result":[B
    const-string v3, "%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X"

    const/16 v4, 0x10

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v2, v6

    .line 93
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x4

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x5

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const/4 v6, 0x6

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x7

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x8

    aget-byte v6, v2, v6

    .line 94
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x9

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0xa

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0xb

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0xc

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0xd

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0xe

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0xf

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    .line 92
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 96
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "result":[B
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private keyToFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v1, ":"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "/"

    const-string v2, "_s_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "\\"

    const-string v2, "_bs_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "&"

    const-string v2, "_bs_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "*"

    const-string v2, "_start_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "?"

    const-string v2, "_q_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "|"

    const-string v2, "_or_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, ">"

    const-string v2, "_gt_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "<"

    const-string v2, "_lt_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 78
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/igaworks/util/image/FileCacheImpl;->cacheStorage:Lcom/igaworks/util/image/CacheStorage;

    invoke-virtual {v0}, Lcom/igaworks/util/image/CacheStorage;->deleteAll()V

    .line 84
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/igaworks/util/image/FileEntry;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/igaw/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, "mFile1":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 30
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/igaworks/util/image/FileCacheImpl;->computeHashedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .local v2, "mFile2":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    new-instance v3, Lcom/igaworks/util/image/FileEntry;

    invoke-direct {v3, p1, v2}, Lcom/igaworks/util/image/FileEntry;-><init>(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "mFile1":Ljava/io/File;
    .end local v2    # "mFile2":Ljava/io/File;
    :goto_0
    return-object v3

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lcom/igaworks/util/image/ByteProvider;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "provider"    # Lcom/igaworks/util/image/ByteProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/igaworks/util/image/FileCacheImpl;->cacheStorage:Lcom/igaworks/util/image/CacheStorage;

    invoke-direct {p0, p1}, Lcom/igaworks/util/image/FileCacheImpl;->keyToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/igaworks/util/image/CacheStorage;->write(Ljava/lang/String;Lcom/igaworks/util/image/ByteProvider;)V

    .line 46
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sourceFile"    # Ljava/io/File;
    .param p3, "move"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    if-eqz p3, :cond_0

    .line 57
    iget-object v0, p0, Lcom/igaworks/util/image/FileCacheImpl;->cacheStorage:Lcom/igaworks/util/image/CacheStorage;

    invoke-direct {p0, p1}, Lcom/igaworks/util/image/FileCacheImpl;->keyToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/igaworks/util/image/CacheStorage;->move(Ljava/lang/String;Ljava/io/File;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {p2}, Lcom/igaworks/util/image/ByteProviderUtil;->create(Ljava/io/File;)Lcom/igaworks/util/image/ByteProvider;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/util/image/FileCacheImpl;->put(Ljava/lang/String;Lcom/igaworks/util/image/ByteProvider;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p2}, Lcom/igaworks/util/image/ByteProviderUtil;->create(Ljava/io/InputStream;)Lcom/igaworks/util/image/ByteProvider;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/util/image/FileCacheImpl;->put(Ljava/lang/String;Lcom/igaworks/util/image/ByteProvider;)V

    .line 51
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/igaworks/util/image/FileCacheImpl;->cacheStorage:Lcom/igaworks/util/image/CacheStorage;

    invoke-direct {p0, p1}, Lcom/igaworks/util/image/FileCacheImpl;->keyToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/util/image/CacheStorage;->delete(Ljava/lang/String;)V

    .line 66
    return-void
.end method
