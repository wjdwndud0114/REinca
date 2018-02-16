.class public Lcom/igaworks/util/bolts_task/TaskCompletionSource;
.super Ljava/lang/Object;
.source "TaskCompletionSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final task:Lcom/igaworks/util/bolts_task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/igaworks/util/bolts_task/Task;

    invoke-direct {v0}, Lcom/igaworks/util/bolts_task/Task;-><init>()V

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->task:Lcom/igaworks/util/bolts_task/Task;

    .line 18
    return-void
.end method


# virtual methods
.method public getTask()Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTResult;>;"
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->task:Lcom/igaworks/util/bolts_task/Task;

    return-object v0
.end method

.method public setCancelled()V
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTResult;>;"
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->trySetCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    return-void
.end method

.method public setError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 70
    .local p0, "this":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTResult;>;"
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the error on a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the result of a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    return-void
.end method

.method public trySetCancelled()Z
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTResult;>;"
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->task:Lcom/igaworks/util/bolts_task/Task;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task;->trySetCancelled()Z

    move-result v0

    return v0
.end method

.method public trySetError(Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 45
    .local p0, "this":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTResult;>;"
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->task:Lcom/igaworks/util/bolts_task/Task;

    invoke-virtual {v0, p1}, Lcom/igaworks/util/bolts_task/Task;->trySetError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/igaworks/util/bolts_task/TaskCompletionSource;, "Lcom/igaworks/util/bolts_task/TaskCompletionSource<TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->task:Lcom/igaworks/util/bolts_task/Task;

    invoke-virtual {v0, p1}, Lcom/igaworks/util/bolts_task/Task;->trySetResult(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
