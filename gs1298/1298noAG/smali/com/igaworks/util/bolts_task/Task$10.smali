.class Lcom/igaworks/util/bolts_task/Task$10;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)Lcom/igaworks/util/bolts_task/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/bolts_task/Task;

.field final synthetic val$continuation:Lcom/igaworks/util/bolts_task/Continuation;

.field final synthetic val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/Task;Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/Task;

    .prologue
    .line 651
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task$10;, "Lcom/igaworks/util/bolts_task/Task$10;"
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/Task$10;->this$0:Lcom/igaworks/util/bolts_task/Task;

    iput-object p2, p0, Lcom/igaworks/util/bolts_task/Task$10;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    iput-object p3, p0, Lcom/igaworks/util/bolts_task/Task$10;->val$continuation:Lcom/igaworks/util/bolts_task/Continuation;

    iput-object p4, p0, Lcom/igaworks/util/bolts_task/Task$10;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/igaworks/util/bolts_task/Task$10;->val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

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
    .line 651
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task$10;, "Lcom/igaworks/util/bolts_task/Task$10;"
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/Task$10;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task$10;, "Lcom/igaworks/util/bolts_task/Task$10;"
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$10;->val$tcs:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    iget-object v1, p0, Lcom/igaworks/util/bolts_task/Task$10;->val$continuation:Lcom/igaworks/util/bolts_task/Continuation;

    iget-object v2, p0, Lcom/igaworks/util/bolts_task/Task$10;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/igaworks/util/bolts_task/Task$10;->val$ct:Lcom/igaworks/util/bolts_task/CancellationToken;

    # invokes: Lcom/igaworks/util/bolts_task/Task;->completeImmediately(Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V
    invoke-static {v0, v1, p1, v2, v3}, Lcom/igaworks/util/bolts_task/Task;->access$000(Lcom/igaworks/util/bolts_task/TaskCompletionSource;Lcom/igaworks/util/bolts_task/Continuation;Lcom/igaworks/util/bolts_task/Task;Ljava/util/concurrent/Executor;Lcom/igaworks/util/bolts_task/CancellationToken;)V

    .line 655
    const/4 v0, 0x0

    return-object v0
.end method
