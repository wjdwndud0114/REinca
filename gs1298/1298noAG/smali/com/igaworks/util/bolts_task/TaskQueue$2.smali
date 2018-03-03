.class final Lcom/igaworks/util/bolts_task/TaskQueue$2;
.super Ljava/lang/Object;
.source "TaskQueue.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/TaskQueue;->waitFor(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<TT;",
        "Lcom/igaworks/util/bolts_task/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$toAwait:Lcom/igaworks/util/bolts_task/Task;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/Task;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/TaskQueue$2;->val$toAwait:Lcom/igaworks/util/bolts_task/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TT;>;"
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/TaskQueue$2;->val$toAwait:Lcom/igaworks/util/bolts_task/Task;

    new-instance v1, Lcom/igaworks/util/bolts_task/TaskQueue$2$1;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/util/bolts_task/TaskQueue$2$1;-><init>(Lcom/igaworks/util/bolts_task/TaskQueue$2;Lcom/igaworks/util/bolts_task/Task;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/TaskQueue$2;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
