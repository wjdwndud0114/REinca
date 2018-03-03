.class Lcom/igaworks/util/bolts_task/Task$15$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/Task$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/bolts_task/Task$15;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/Task$15;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/Task$15;

    .prologue
    .line 921
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/Task$15$1;->this$0:Lcom/igaworks/util/bolts_task/Task$15;

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
    .line 921
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/Task$15$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTContinuationResult;>;"
    const/4 v2, 0x0

    .line 924
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$15$1;->this$0:Lcom/igaworks/util/bolts_task/Task$15;

    iget-object v0, v0, Lcom/igaworks/util/bolts_task/Task$15;->val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$15$1;->this$0:Lcom/igaworks/util/bolts_task/Task$15;

    iget-object v0, v0, Lcom/igaworks/util/bolts_task/Task$15;->val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$15$1;->this$0:Lcom/igaworks/util/bolts_task/Task$15;

    iget-object v0, v0, Lcom/igaworks/util/bolts_task/Task$15;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setCancelled()V

    .line 936
    :goto_0
    return-object v2

    .line 929
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$15$1;->this$0:Lcom/igaworks/util/bolts_task/Task$15;

    iget-object v0, v0, Lcom/igaworks/util/bolts_task/Task$15;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setCancelled()V

    goto :goto_0

    .line 931
    :cond_1
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 932
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$15$1;->this$0:Lcom/igaworks/util/bolts_task/Task$15;

    iget-object v0, v0, Lcom/igaworks/util/bolts_task/Task$15;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 934
    :cond_2
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$15$1;->this$0:Lcom/igaworks/util/bolts_task/Task$15;

    iget-object v0, v0, Lcom/igaworks/util/bolts_task/Task$15;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
