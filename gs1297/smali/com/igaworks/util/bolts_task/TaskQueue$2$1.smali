.class Lcom/igaworks/util/bolts_task/TaskQueue$2$1;
.super Ljava/lang/Object;
.source "TaskQueue.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/TaskQueue$2;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/bolts_task/TaskQueue$2;

.field final synthetic val$task:Lcom/igaworks/util/bolts_task/Task;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/TaskQueue$2;Lcom/igaworks/util/bolts_task/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/TaskQueue$2;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/TaskQueue$2$1;->this$0:Lcom/igaworks/util/bolts_task/TaskQueue$2;

    iput-object p2, p0, Lcom/igaworks/util/bolts_task/TaskQueue$2$1;->val$task:Lcom/igaworks/util/bolts_task/Task;

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
            "<",
            "Ljava/lang/Void;",
            ">;)",
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
    .line 93
    .local p1, "ignored":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/TaskQueue$2$1;->val$task:Lcom/igaworks/util/bolts_task/Task;

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
    .line 90
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/TaskQueue$2$1;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
