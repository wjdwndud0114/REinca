.class final Lcom/igaworks/util/bolts_task/Task$8;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/Task;->whenAll(Ljava/util/Collection;)Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$allFinished:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

.field final synthetic val$causes:Ljava/util/ArrayList;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$errorLock:Ljava/lang/Object;

.field final synthetic val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/igaworks/util/bolts_task/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$errorLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$causes:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$allFinished:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/Task$8;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 541
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->isFaulted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$errorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_2

    .line 552
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 553
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 554
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$allFinished:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v2, v1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 567
    :cond_2
    :goto_0
    return-object v6

    .line 544
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 556
    :cond_3
    new-instance v0, Lcom/igaworks/util/bolts_task/AggregateException;

    const-string v1, "There were %d exceptions."

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$causes:Ljava/util/ArrayList;

    .line 557
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/igaworks/util/bolts_task/AggregateException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 559
    .local v0, "error":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$allFinished:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 561
    .end local v0    # "error":Ljava/lang/Exception;
    :cond_4
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 562
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$allFinished:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setCancelled()V

    goto :goto_0

    .line 564
    :cond_5
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task$8;->val$allFinished:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-virtual {v1, v6}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
