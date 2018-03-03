.class public Lcom/igaworks/util/image/FileCacheFactory;
.super Ljava/lang/Object;
.source "FileCacheFactory.java"


# static fields
.field private static initialized:Z

.field private static instance:Lcom/igaworks/util/image/FileCacheFactory;


# instance fields
.field private cacheBaseDir:Ljava/io/File;

.field private cacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/igaworks/util/image/FileCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/util/image/FileCacheFactory;->initialized:Z

    .line 11
    new-instance v0, Lcom/igaworks/util/image/FileCacheFactory;

    invoke-direct {v0}, Lcom/igaworks/util/image/FileCacheFactory;-><init>()V

    sput-object v0, Lcom/igaworks/util/image/FileCacheFactory;->instance:Lcom/igaworks/util/image/FileCacheFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igaworks/util/image/FileCacheFactory;->cacheMap:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/igaworks/util/image/FileCacheFactory;
    .locals 2

    .prologue
    .line 25
    sget-boolean v0, Lcom/igaworks/util/image/FileCacheFactory;->initialized:Z

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized. You must call FileCacheFactory.initialize() before getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    sget-object v0, Lcom/igaworks/util/image/FileCacheFactory;->instance:Lcom/igaworks/util/image/FileCacheFactory;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/util/image/FileCacheFactory;->cacheBaseDir:Ljava/io/File;

    .line 40
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    sget-boolean v0, Lcom/igaworks/util/image/FileCacheFactory;->initialized:Z

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/igaworks/util/image/FileCacheFactory;->instance:Lcom/igaworks/util/image/FileCacheFactory;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-boolean v0, Lcom/igaworks/util/image/FileCacheFactory;->initialized:Z

    if-nez v0, :cond_0

    .line 17
    sget-object v0, Lcom/igaworks/util/image/FileCacheFactory;->instance:Lcom/igaworks/util/image/FileCacheFactory;

    invoke-direct {v0, p0}, Lcom/igaworks/util/image/FileCacheFactory;->init(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/igaworks/util/image/FileCacheFactory;->initialized:Z

    .line 20
    :cond_0
    monitor-exit v1

    .line 22
    :cond_1
    return-void

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public create(Ljava/lang/String;I)Lcom/igaworks/util/image/FileCache;
    .locals 7
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "maxKbSizes"    # I

    .prologue
    .line 43
    iget-object v3, p0, Lcom/igaworks/util/image/FileCacheFactory;->cacheMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/igaworks/util/image/FileCacheFactory;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/image/FileCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .local v0, "cache":Lcom/igaworks/util/image/FileCache;
    if-eqz v0, :cond_0

    .line 47
    :try_start_1
    new-instance v2, Lcom/igaworks/util/image/FileCacheAleadyExistException;

    const-string v4, "FileCache[%s] Aleady exists"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/igaworks/util/image/FileCacheAleadyExistException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/igaworks/util/image/FileCacheAleadyExistException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :catch_0
    move-exception v2

    .line 52
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/igaworks/util/image/FileCacheFactory;->cacheBaseDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .local v1, "cacheDir":Ljava/io/File;
    new-instance v0, Lcom/igaworks/util/image/FileCacheImpl;

    .end local v0    # "cache":Lcom/igaworks/util/image/FileCache;
    invoke-direct {v0, v1, p2}, Lcom/igaworks/util/image/FileCacheImpl;-><init>(Ljava/io/File;I)V

    .line 54
    .restart local v0    # "cache":Lcom/igaworks/util/image/FileCache;
    iget-object v2, p0, Lcom/igaworks/util/image/FileCacheFactory;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-exit v3

    return-object v0

    .line 56
    .end local v0    # "cache":Lcom/igaworks/util/image/FileCache;
    .end local v1    # "cacheDir":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public get(Ljava/lang/String;)Lcom/igaworks/util/image/FileCache;
    .locals 6
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v2, p0, Lcom/igaworks/util/image/FileCacheFactory;->cacheMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/util/image/FileCacheFactory;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/image/FileCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .local v0, "cache":Lcom/igaworks/util/image/FileCache;
    if-nez v0, :cond_0

    .line 64
    :try_start_1
    new-instance v1, Lcom/igaworks/util/image/FileCacheNotFoundException;

    const-string v3, "FileCache[%s] not founds."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/igaworks/util/image/FileCacheNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/igaworks/util/image/FileCacheNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :catch_0
    move-exception v1

    .line 69
    :cond_0
    :try_start_2
    monitor-exit v2

    return-object v0

    .line 70
    .end local v0    # "cache":Lcom/igaworks/util/image/FileCache;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/igaworks/util/image/FileCacheFactory;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
