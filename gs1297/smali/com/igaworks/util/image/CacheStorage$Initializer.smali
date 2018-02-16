.class Lcom/igaworks/util/image/CacheStorage$Initializer;
.super Ljava/lang/Object;
.source "CacheStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/util/image/CacheStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Initializer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/image/CacheStorage;


# direct methods
.method private constructor <init>(Lcom/igaworks/util/image/CacheStorage;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/igaworks/util/image/CacheStorage$Initializer;->this$0:Lcom/igaworks/util/image/CacheStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igaworks/util/image/CacheStorage;Lcom/igaworks/util/image/CacheStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/igaworks/util/image/CacheStorage;
    .param p2, "x1"    # Lcom/igaworks/util/image/CacheStorage$1;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/igaworks/util/image/CacheStorage$Initializer;-><init>(Lcom/igaworks/util/image/CacheStorage;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 62
    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage$Initializer;->this$0:Lcom/igaworks/util/image/CacheStorage;

    # getter for: Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v2}, Lcom/igaworks/util/image/CacheStorage;->access$100(Lcom/igaworks/util/image/CacheStorage;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage$Initializer;->this$0:Lcom/igaworks/util/image/CacheStorage;

    # getter for: Lcom/igaworks/util/image/CacheStorage;->cacheDir:Ljava/io/File;
    invoke-static {v2}, Lcom/igaworks/util/image/CacheStorage;->access$200(Lcom/igaworks/util/image/CacheStorage;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 65
    .local v0, "cachedFiles":[Ljava/io/File;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 66
    .local v1, "file":Ljava/io/File;
    iget-object v4, p0, Lcom/igaworks/util/image/CacheStorage$Initializer;->this$0:Lcom/igaworks/util/image/CacheStorage;

    # invokes: Lcom/igaworks/util/image/CacheStorage;->putFileToCacheMap(Ljava/io/File;)V
    invoke-static {v4, v1}, Lcom/igaworks/util/image/CacheStorage;->access$300(Lcom/igaworks/util/image/CacheStorage;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage$Initializer;->this$0:Lcom/igaworks/util/image/CacheStorage;

    # getter for: Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v2}, Lcom/igaworks/util/image/CacheStorage;->access$100(Lcom/igaworks/util/image/CacheStorage;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    .end local v0    # "cachedFiles":[Ljava/io/File;
    :goto_1
    return-void

    .line 68
    :catch_0
    move-exception v2

    .line 70
    iget-object v2, p0, Lcom/igaworks/util/image/CacheStorage$Initializer;->this$0:Lcom/igaworks/util/image/CacheStorage;

    # getter for: Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v2}, Lcom/igaworks/util/image/CacheStorage;->access$100(Lcom/igaworks/util/image/CacheStorage;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/igaworks/util/image/CacheStorage$Initializer;->this$0:Lcom/igaworks/util/image/CacheStorage;

    # getter for: Lcom/igaworks/util/image/CacheStorage;->writeLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v3}, Lcom/igaworks/util/image/CacheStorage;->access$100(Lcom/igaworks/util/image/CacheStorage;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method
