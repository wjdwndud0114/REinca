.class public Lcom/igaworks/util/bolts_task/TaskUtils;
.super Ljava/lang/Object;
.source "TaskUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceWait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->waitForCompletion()V

    .line 58
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 61
    .local v1, "error":Ljava/lang/Exception;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 62
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "error":Ljava/lang/Exception;
    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 64
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "error":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 65
    .end local v1    # "error":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method

.method public static wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TT;>;"
    const-wide/16 v2, 0x3a98

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v4}, Lcom/igaworks/util/bolts_task/Task;->waitForCompletion(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 35
    .local v1, "error":Ljava/lang/Exception;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 36
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "error":Ljava/lang/Exception;
    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 38
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "error":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 39
    .end local v1    # "error":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 45
    :goto_0
    return-object v2

    .line 44
    :cond_3
    const-string v2, "IGAW_QA"

    const-string v3, "Task is timeout. Release lock."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static wait(Lcom/igaworks/util/bolts_task/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/igaworks/util/bolts_task/Task;->waitForCompletion(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 84
    .local v1, "error":Ljava/lang/Exception;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 85
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "error":Ljava/lang/Exception;
    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 87
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "error":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 88
    .end local v1    # "error":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 93
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "TimeOut"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
.end method
