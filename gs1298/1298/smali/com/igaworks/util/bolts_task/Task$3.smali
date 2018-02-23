.class Lcom/igaworks/util/bolts_task/Task$3;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;
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
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/bolts_task/Task;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/Task;

    .prologue
    .line 300
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task$3;, "Lcom/igaworks/util/bolts_task/Task$3;"
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/Task$3;->this$0:Lcom/igaworks/util/bolts_task/Task;

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
    .line 303
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task$3;, "Lcom/igaworks/util/bolts_task/Task$3;"
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TTResult;>;"
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Lcom/igaworks/util/bolts_task/Task;->cancelled()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    .line 306
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forError(Ljava/lang/Exception;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

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
    .line 300
    .local p0, "this":Lcom/igaworks/util/bolts_task/Task$3;, "Lcom/igaworks/util/bolts_task/Task$3;"
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/Task$3;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
