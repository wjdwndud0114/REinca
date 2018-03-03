.class Lcom/igaworks/util/bolts_task/Task$9;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/bolts_task/Task;

.field final synthetic val$continuation:Lcom/igaworks/util/bolts_task/Continuation;

.field final synthetic val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$predicate:Ljava/util/concurrent/Callable;

.field final synthetic val$predicateContinuation:Lcom/igaworks/util/bolts_task/Capture;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/Task;Lcom/igaworks/util/bolts_task/CancellationToken;Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/Capture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/Task;

    .prologue
    .line 611
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task$9;, "Lcom/igaworks/util/bolts_task/Task$9;"
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/Task$9;->this$0:Lcom/igaworks/util/bolts_task/Task;

    iput-object p2, p0, Lcom/igaworks/util/bolts_task/Task$9;->val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

    iput-object p3, p0, Lcom/igaworks/util/bolts_task/Task$9;->val$predicate:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lcom/igaworks/util/bolts_task/Task$9;->val$continuation:Lcom/igaworks/util/bolts_task/Continuation;

    iput-object p5, p0, Lcom/igaworks/util/bolts_task/Task$9;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/igaworks/util/bolts_task/Task$9;->val$predicateContinuation:Lcom/igaworks/util/bolts_task/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task$9;, "Lcom/igaworks/util/bolts_task/Task$9;"
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 614
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$9;->val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$9;->val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-static {}, Lcom/igaworks/util/bolts_task/Task;->cancelled()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 622
    :goto_0
    return-object v0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$9;->val$predicate:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    invoke-static {v1}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task$9;->val$continuation:Lcom/igaworks/util/bolts_task/Continuation;

    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task$9;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$9;->val$predicateContinuation:Lcom/igaworks/util/bolts_task/Capture;

    .line 620
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/bolts_task/Continuation;

    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task$9;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    goto :goto_0

    .line 622
    :cond_1
    invoke-static {v1}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

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
    .line 611
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task$9;, "Lcom/igaworks/util/bolts_task/Task$9;"
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/Task$9;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
