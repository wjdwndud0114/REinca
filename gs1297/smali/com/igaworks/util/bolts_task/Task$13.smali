.class Lcom/igaworks/util/bolts_task/Task$13;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<TTResult;",
        "Lcom/igaworks/util/bolts_task/Task",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/bolts_task/Task;

.field final synthetic val$continuation:Lcom/igaworks/util/bolts_task/Continuation;

.field final synthetic val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/Task;Lcom/igaworks/util/bolts_task/CancellationToken;Lcom/igaworks/util/bolts_task/Continuation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/Task;

    .prologue
    .line 806
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task$13;, "Lcom/igaworks/util/bolts_task/Task$13;"
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/Task$13;->this$0:Lcom/igaworks/util/bolts_task/Task;

    iput-object p2, p0, Lcom/igaworks/util/bolts_task/Task$13;->val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

    iput-object p3, p0, Lcom/igaworks/util/bolts_task/Task$13;->val$continuation:Lcom/igaworks/util/bolts_task/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 809
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task$13;, "Lcom/igaworks/util/bolts_task/Task$13;"
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$13;->val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$13;->val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-static {}, Lcom/igaworks/util/bolts_task/Task;->cancelled()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 818
    :goto_0
    return-object v0

    .line 813
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forError(Ljava/lang/Exception;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    goto :goto_0

    .line 815
    :cond_1
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    invoke-static {}, Lcom/igaworks/util/bolts_task/Task;->cancelled()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    goto :goto_0

    .line 818
    :cond_2
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$13;->val$continuation:Lcom/igaworks/util/bolts_task/Continuation;

    invoke-virtual {p1, v0}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 806
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task$13;, "Lcom/igaworks/util/bolts_task/Task$13;"
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/Task$13;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
