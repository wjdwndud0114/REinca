.class public Lcom/igaworks/util/image/CacheStorage;
.super Ljava/lang/Object;
.source "CacheStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/util/image/CacheStorage$CacheFile;,
        Lcom/igaworks/util/image/CacheStorage$Initializer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheStorage"


# instance fields
.field private cacheDir:Ljava/io/File;

.field private cacheFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/igaworks/util/image/CacheStorage$CacheFile;",
            ">;"
        }
    .end annotation
.end field

.field private currentBytesSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private maxBytesSize:J

.field private readLock:Ljava/util/concurrent/locks/Lock;

.field private rwl:Ljava/util/concurrent/locks/ReadWriteLock;

.field private writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 4
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxBytesSize"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->currentBytesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->rwl:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 30
    iget-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->rwl:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 31
    iget-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->rwl:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 35
    :try_start_0
    iput-object p1, p0, Lcom/igaworks/util/image/CacheStorage;->cacheDir:Ljava/io/File;

    .line 36
    iput-wide p2, p0, Lcom/igaworks/util/image/CacheStorage;->maxBytesSize:J

    .line 37
    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 38
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->cacheFileMap:Ljava/util/Map;

    .line 40
    invoke-direct {p0}, Lcom/igaworks/util/image/CacheStorage;->createCacheDirIfNotExists()V

    .line 41
    invoke-direct {p0}, Lcom/igaworks/util/image/CacheStorage;->initializing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/igaworks/util/image/CacheStorage;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/util/image/CacheStorage;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/igaworks/util/image/CacheStorage;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/util/image/CacheStorage;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/igaworks/util/image/CacheStorage;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/igaworks/util/image/CacheStorage;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/util/image/CacheStorage;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/igaworks/util/image/CacheStorage;->putFileToCacheMap(Ljava/io/File;)V

    return-void
.end method

.method private checkMaxThresoldAndDeleteOldestWhenOverflow()V
    .locals 4

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/igaworks/util/image/CacheStorage;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/igaworks/util/image/CacheStorage;->getDeletingCandidates()Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "deletingCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/igaworks/util/image/CacheStorage$CacheFile;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 144
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/igaworks/util/image/CacheStorage$CacheFile;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/igaworks/util/image/CacheStorage;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    .end local v0    # "deletingCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/igaworks/util/image/CacheStorage$CacheFile;>;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/igaworks/util/image/CacheStorage$CacheFile;>;"
    :cond_0
    return-void
.end method

.method private copyProviderToFile(Lcom/igaworks/util/image/ByteProvider;Ljava/io/File;)V
    .locals 3
    .param p1, "provider"    # Lcom/igaworks/util/image/ByteProvider;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "os":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v0    # "os":Ljava/io/BufferedOutputStream;
    .local v1, "os":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-interface {p1, v1}, Lcom/igaworks/util/image/ByteProvider;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    invoke-static {v1}, Lcom/igaworks/util/image/IOUtils;->close(Ljava/io/Closeable;)V

    .line 128
    return-void

    .line 126
    .end local v1    # "os":Ljava/io/BufferedOutputStream;
    .restart local v0    # "os":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/igaworks/util/image/IOUtils;->close(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "os":Ljava/io/BufferedOutputStream;
    .restart local v1    # "os":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "os":Ljava/io/BufferedOutputStream;
    .restart local v0    # "os":Ljava/io/BufferedOutputStream;
    goto :goto_0
.end method

.method private createCacheDirIfNotExists()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/igaworks/util/image/CacheStorage;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/igaworks/util/image/CacheStorage;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDeletingCandidates()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/igaworks/util/image/CacheStorage$CacheFile;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v2, "deletingCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/igaworks/util/image/CacheStorage$CacheFile;>;>;"
    const-wide/16 v0, 0x0

    .line 161
    .local v0, "cadidateFileSizes":J
    :try_start_0
    iget-object v5, p0, Lcom/igaworks/util/image/CacheStorage;->cacheFileMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 162
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/igaworks/util/image/CacheStorage$CacheFile;>;"
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/igaworks/util/image/CacheStorage$CacheFile;

    iget-object v5, v5, Lcom/igaworks/util/image/CacheStorage$CacheFile;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 164
    iget-object v5, p0, Lcom/igaworks/util/image/CacheStorage;->currentBytesSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long/2addr v8, v0

    iget-wide v10, p0, Lcom/igaworks/util/image/CacheStorage;->maxBytesSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v5, v8, v10

    if-gez v5, :cond_0

    .line 171
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/igaworks/util/image/CacheStorage$CacheFile;>;"
    :cond_1
    :goto_0
    return-object v2

    .line 168
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initializing()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igaworks/util/image/CacheStorage$Initializer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/igaworks/util/image/CacheStorage$Initializer;-><init>(Lcom/igaworks/util/image/CacheStorage;Lcom/igaworks/util/image/CacheStorage$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    return-void
.end method

.method private isOverflow()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-wide v2, p0, Lcom/igaworks/util/image/CacheStorage;->maxBytesSize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->currentBytesSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/igaworks/util/image/CacheStorage;->maxBytesSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveHitEntryToFirst(Ljava/lang/String;Lcom/igaworks/util/image/CacheStorage$CacheFile;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "cachedFile"    # Lcom/igaworks/util/image/CacheStorage$CacheFile;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/igaworks/util/image/CacheStorage;->cacheFileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/igaworks/util/image/CacheStorage;->cacheFileMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method private putFileToCacheMap(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/igaworks/util/image/CacheStorage;->cacheFileMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/igaworks/util/image/CacheStorage$CacheFile;

    invoke-direct {v2, p1}, Lcom/igaworks/util/image/CacheStorage$CacheFile;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/igaworks/util/image/CacheStorage;->currentBytesSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 138
    return-void
.end method

.method private putToCachMapAndCheckMaxThresold(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/igaworks/util/image/CacheStorage;->putFileToCacheMap(Ljava/io/File;)V

    .line 132
    invoke-direct {p0}, Lcom/igaworks/util/image/CacheStorage;->checkMaxThresoldAndDeleteOldestWhenOverflow()V

    .line 133
    return-void
.end method

.method private removeCacheFileFromMap(Ljava/lang/String;Lcom/igaworks/util/image/CacheStorage$CacheFile;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "cachedFile"    # Lcom/igaworks/util/image/CacheStorage$CacheFile;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/igaworks/util/image/CacheStorage;->currentBytesSize:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v2, p2, Lcom/igaworks/util/image/CacheStorage$CacheFile;->size:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 100
    iget-object v0, p0, Lcom/igaworks/util/image/CacheStorage;->cacheFileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->cacheFileMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/image/CacheStorage$CacheFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .local v0, "cacheFile":Lcom/igaworks/util/image/CacheStorage$CacheFile;
    if-nez v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 198
    :goto_0
    return-void

    .line 193
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/igaworks/util/image/CacheStorage;->removeCacheFileFromMap(Ljava/lang/String;Lcom/igaworks/util/image/CacheStorage$CacheFile;)V

    .line 194
    iget-object v1, v0, Lcom/igaworks/util/image/CacheStorage$CacheFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    iget-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "cacheFile":Lcom/igaworks/util/image/CacheStorage$CacheFile;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public deleteAll()V
    .locals 4

    .prologue
    .line 201
    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 203
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage;->cacheFileMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/igaworks/util/image/CacheStorage;->delete(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 208
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .restart local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 210
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage;->cacheFileMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/image/CacheStorage$CacheFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .local v0, "cachdFile":Lcom/igaworks/util/image/CacheStorage$CacheFile;
    if-nez v0, :cond_0

    .line 89
    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 87
    :goto_0
    return-object v1

    .line 82
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/igaworks/util/image/CacheStorage$CacheFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/igaworks/util/image/CacheStorage;->moveHitEntryToFirst(Ljava/lang/String;Lcom/igaworks/util/image/CacheStorage$CacheFile;)V

    .line 84
    iget-object v1, v0, Lcom/igaworks/util/image/CacheStorage$CacheFile;->file:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 86
    :cond_1
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/igaworks/util/image/CacheStorage;->removeCacheFileFromMap(Ljava/lang/String;Lcom/igaworks/util/image/CacheStorage$CacheFile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "cachdFile":Lcom/igaworks/util/image/CacheStorage$CacheFile;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public move(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "sourceFile"    # Ljava/io/File;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/util/image/CacheStorage;->createCacheDirIfNotExists()V

    .line 178
    invoke-direct {p0, p1}, Lcom/igaworks/util/image/CacheStorage;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 179
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 180
    invoke-direct {p0, v0}, Lcom/igaworks/util/image/CacheStorage;->putToCachMapAndCheckMaxThresold(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 184
    return-void

    .line 182
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public write(Ljava/lang/String;Lcom/igaworks/util/image/ByteProvider;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "provider"    # Lcom/igaworks/util/image/ByteProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/util/image/CacheStorage;->createCacheDirIfNotExists()V

    .line 107
    invoke-direct {p0, p1}, Lcom/igaworks/util/image/CacheStorage;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 108
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, p2, v0}, Lcom/igaworks/util/image/CacheStorage;->copyProviderToFile(Lcom/igaworks/util/image/ByteProvider;Ljava/io/File;)V

    .line 109
    invoke-direct {p0, v0}, Lcom/igaworks/util/image/CacheStorage;->putToCachMapAndCheckMaxThresold(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v1, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 113
    return-void

    .line 111
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
