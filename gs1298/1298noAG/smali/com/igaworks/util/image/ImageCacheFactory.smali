.class public Lcom/igaworks/util/image/ImageCacheFactory;
.super Ljava/lang/Object;
.source "ImageCacheFactory.java"


# static fields
.field private static instance:Lcom/igaworks/util/image/ImageCacheFactory;


# instance fields
.field private cacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/igaworks/util/image/ImageCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/igaworks/util/image/ImageCacheFactory;

    invoke-direct {v0}, Lcom/igaworks/util/image/ImageCacheFactory;-><init>()V

    sput-object v0, Lcom/igaworks/util/image/ImageCacheFactory;->instance:Lcom/igaworks/util/image/ImageCacheFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igaworks/util/image/ImageCacheFactory;->cacheMap:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method private checkAleadyExists(Ljava/lang/String;)V
    .locals 5
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/igaworks/util/image/ImageCacheFactory;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/image/ImageCache;

    .line 31
    .local v0, "cache":Lcom/igaworks/util/image/ImageCache;
    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    new-instance v1, Lcom/igaworks/util/image/ImageCacheAleadyExistException;

    const-string v2, "ImageCache[%s] aleady exists"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/igaworks/util/image/ImageCacheAleadyExistException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/igaworks/util/image/ImageCacheAleadyExistException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :catch_0
    move-exception v1

    .line 38
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/igaworks/util/image/ImageCacheFactory;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/igaworks/util/image/ImageCacheFactory;->instance:Lcom/igaworks/util/image/ImageCacheFactory;

    return-object v0
.end method


# virtual methods
.method public createMemoryCache(Ljava/lang/String;I)Lcom/igaworks/util/image/ImageCache;
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "imageMaxCounts"    # I

    .prologue
    .line 21
    iget-object v2, p0, Lcom/igaworks/util/image/ImageCacheFactory;->cacheMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 22
    :try_start_0
    invoke-direct {p0, p1}, Lcom/igaworks/util/image/ImageCacheFactory;->checkAleadyExists(Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/igaworks/util/image/MemoryImageCache;

    invoke-direct {v0, p2}, Lcom/igaworks/util/image/MemoryImageCache;-><init>(I)V

    .line 24
    .local v0, "cache":Lcom/igaworks/util/image/ImageCache;
    iget-object v1, p0, Lcom/igaworks/util/image/ImageCacheFactory;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    monitor-exit v2

    return-object v0

    .line 26
    .end local v0    # "cache":Lcom/igaworks/util/image/ImageCache;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createTwoLevelCache(Ljava/lang/String;I)Lcom/igaworks/util/image/ImageCache;
    .locals 4
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "imageMaxCounts"    # I

    .prologue
    .line 41
    iget-object v3, p0, Lcom/igaworks/util/image/ImageCacheFactory;->cacheMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 42
    :try_start_0
    invoke-direct {p0, p1}, Lcom/igaworks/util/image/ImageCacheFactory;->checkAleadyExists(Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "chain":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/util/image/ImageCache;>;"
    new-instance v2, Lcom/igaworks/util/image/MemoryImageCache;

    invoke-direct {v2, p2}, Lcom/igaworks/util/image/MemoryImageCache;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v2, Lcom/igaworks/util/image/FileImageCache;

    invoke-direct {v2, p1}, Lcom/igaworks/util/image/FileImageCache;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/igaworks/util/image/ChainedImageCache;

    invoke-direct {v0, v1}, Lcom/igaworks/util/image/ChainedImageCache;-><init>(Ljava/util/List;)V

    .line 47
    .local v0, "cache":Lcom/igaworks/util/image/ChainedImageCache;
    iget-object v2, p0, Lcom/igaworks/util/image/ImageCacheFactory;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    monitor-exit v3

    return-object v0

    .line 49
    .end local v0    # "cache":Lcom/igaworks/util/image/ChainedImageCache;
    .end local v1    # "chain":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/util/image/ImageCache;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;
    .locals 6
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v2, p0, Lcom/igaworks/util/image/ImageCacheFactory;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/image/ImageCache;

    .line 54
    .local v0, "cache":Lcom/igaworks/util/image/ImageCache;
    if-nez v0, :cond_0

    .line 56
    :try_start_0
    new-instance v2, Lcom/igaworks/util/image/ImageCacheNotFoundException;

    const-string v3, "ImageCache[%s] not founds"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 57
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/igaworks/util/image/ImageCacheNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/igaworks/util/image/ImageCacheNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Lcom/igaworks/util/image/ImageCacheNotFoundException;
    invoke-virtual {v1}, Lcom/igaworks/util/image/ImageCacheNotFoundException;->printStackTrace()V

    .line 62
    .end local v1    # "e":Lcom/igaworks/util/image/ImageCacheNotFoundException;
    :cond_0
    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/igaworks/util/image/ImageCacheFactory;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
