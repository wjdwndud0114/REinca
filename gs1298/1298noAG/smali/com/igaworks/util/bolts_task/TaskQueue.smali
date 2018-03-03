.class public Lcom/igaworks/util/bolts_task/TaskQueue;
.super Ljava/lang/Object;
.source "TaskQueue.java"


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private tail:Lcom/igaworks/util/bolts_task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private getTaskToAwait()Lcom/igaworks/util/bolts_task/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->tail:Lcom/igaworks/util/bolts_task/Task;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->tail:Lcom/igaworks/util/bolts_task/Task;

    .line 36
    .local v0, "toAwait":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    :goto_0
    new-instance v1, Lcom/igaworks/util/bolts_task/TaskQueue$1;

    invoke-direct {v1, p0}, Lcom/igaworks/util/bolts_task/TaskQueue$1;-><init>(Lcom/igaworks/util/bolts_task/TaskQueue;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    return-object v1

    .line 35
    .end local v0    # "toAwait":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method static waitFor(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<TT;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "toAwait":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/igaworks/util/bolts_task/TaskQueue$2;

    invoke-direct {v0, p0}, Lcom/igaworks/util/bolts_task/TaskQueue$2;-><init>(Lcom/igaworks/util/bolts_task/Task;)V

    return-object v0
.end method


# virtual methods
.method enqueue(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "taskStart":Lcom/igaworks/util/bolts_task/Continuation;, "Lcom/igaworks/util/bolts_task/Continuation<Ljava/lang/Void;Lcom/igaworks/util/bolts_task/Task<TT;>;>;"
    iget-object v4, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->tail:Lcom/igaworks/util/bolts_task/Task;

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->tail:Lcom/igaworks/util/bolts_task/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .local v1, "oldTail":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/igaworks/util/bolts_task/TaskQueue;->getTaskToAwait()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    .line 66
    .local v3, "toAwait":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    invoke-interface {p1, v3}, Lcom/igaworks/util/bolts_task/Continuation;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/util/bolts_task/Task;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .local v2, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TT;>;"
    const/4 v4, 0x2

    :try_start_2
    new-array v4, v4, [Lcom/igaworks/util/bolts_task/Task;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/igaworks/util/bolts_task/Task;->whenAll(Ljava/util/Collection;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v4

    iput-object v4, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->tail:Lcom/igaworks/util/bolts_task/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    iget-object v4, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    return-object v2

    .line 60
    .end local v1    # "oldTail":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    .end local v2    # "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TT;>;"
    .end local v3    # "toAwait":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    :cond_0
    const/4 v4, 0x0

    :try_start_3
    invoke-static {v4}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    goto :goto_0

    .line 67
    .restart local v1    # "oldTail":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "oldTail":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 69
    .restart local v1    # "oldTail":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method getLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method waitUntilFinished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->tail:Lcom/igaworks/util/bolts_task/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->tail:Lcom/igaworks/util/bolts_task/Task;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task;->waitForCompletion()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/igaworks/util/bolts_task/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
