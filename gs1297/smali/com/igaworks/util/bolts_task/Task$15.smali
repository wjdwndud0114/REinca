.class final Lcom/igaworks/util/bolts_task/Task$15;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/Task;->completeAfterTask(Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lcom/igaworks/util/bolts_task/Continuation;

.field final synthetic val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

.field final synthetic val$task:Lcom/igaworks/util/bolts_task/Task;

.field final synthetic val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/CancellationToken;Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/Task$15;->val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

    iput-object p2, p0, Lcom/igaworks/util/bolts_task/Task$15;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    iput-object p3, p0, Lcom/igaworks/util/bolts_task/Task$15;->val$continuation:Lcom/igaworks/util/bolts_task/Continuation;

    iput-object p4, p0, Lcom/igaworks/util/bolts_task/Task$15;->val$task:Lcom/igaworks/util/bolts_task/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 911
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task$15;->val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task$15;->val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/CancellationToken;->isCancellationRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task$15;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setCancelled()V

    .line 945
    :goto_0
    return-void

    .line 917
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task$15;->val$continuation:Lcom/igaworks/util/bolts_task/Continuation;

    iget-object v3, p0, Lcom/igaworks/util/bolts_task/Task$15;->val$task:Lcom/igaworks/util/bolts_task/Task;

    invoke-interface {v2, v3}, Lcom/igaworks/util/bolts_task/Continuation;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/util/bolts_task/Task;

    .line 918
    .local v1, "result":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;"
    if-nez v1, :cond_1

    .line 919
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task$15;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 940
    .end local v1    # "result":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;"
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task$15;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setCancelled()V

    goto :goto_0

    .line 921
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    .restart local v1    # "result":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;"
    :cond_1
    :try_start_1
    new-instance v2, Lcom/igaworks/util/bolts_task/Task$15$1;

    invoke-direct {v2, p0}, Lcom/igaworks/util/bolts_task/Task$15$1;-><init>(Lcom/igaworks/util/bolts_task/Task$15;)V

    invoke-virtual {v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 942
    .end local v1    # "result":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;"
    :catch_1
    move-exception v0

    .line 943
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task$15;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-virtual {v2, v0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
