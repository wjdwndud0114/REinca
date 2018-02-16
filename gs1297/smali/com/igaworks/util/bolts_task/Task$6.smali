.class final Lcom/igaworks/util/bolts_task/Task$6;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/Task;->whenAny(Ljava/util/Collection;)Lcom/igaworks/util/bolts_task/Task;
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
.field final synthetic val$firstCompleted:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

.field final synthetic val$isAnyTaskComplete:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/igaworks/util/bolts_task/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/Task$6;->val$isAnyTaskComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/igaworks/util/bolts_task/Task$6;->val$firstCompleted:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

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
    .line 447
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/Task$6;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 3
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
    .line 450
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$6;->val$isAnyTaskComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/Task$6;->val$firstCompleted:Lcom/igaworks/util/bolts_task/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/igaworks/util/bolts_task/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 455
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 453
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    goto :goto_0
.end method
