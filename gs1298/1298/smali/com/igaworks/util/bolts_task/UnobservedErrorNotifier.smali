.class Lcom/igaworks/util/bolts_task/UnobservedErrorNotifier;
.super Ljava/lang/Object;
.source "UnobservedErrorNotifier.java"


# instance fields
.field private task:Lcom/igaworks/util/bolts_task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/util/bolts_task/Task",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/igaworks/util/bolts_task/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/UnobservedErrorNotifier;->task:Lcom/igaworks/util/bolts_task/Task;

    .line 13
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/UnobservedErrorNotifier;->task:Lcom/igaworks/util/bolts_task/Task;

    .line 19
    .local v0, "faultedTask":Lcom/igaworks/util/bolts_task/Task;
    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Lcom/igaworks/util/bolts_task/Task;->getUnobservedExceptionHandler()Lcom/igaworks/util/bolts_task/Task$UnobservedExceptionHandler;

    move-result-object v1

    .line 21
    .local v1, "ueh":Lcom/igaworks/util/bolts_task/Task$UnobservedExceptionHandler;
    if-eqz v1, :cond_0

    .line 22
    new-instance v2, Lcom/igaworks/util/bolts_task/UnobservedTaskException;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/igaworks/util/bolts_task/UnobservedTaskException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v0, v2}, Lcom/igaworks/util/bolts_task/Task$UnobservedExceptionHandler;->unobservedException(Lcom/igaworks/util/bolts_task/Task;Lcom/igaworks/util/bolts_task/UnobservedTaskException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .end local v1    # "ueh":Lcom/igaworks/util/bolts_task/Task$UnobservedExceptionHandler;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 28
    return-void

    .line 26
    .end local v0    # "faultedTask":Lcom/igaworks/util/bolts_task/Task;
    :catchall_0
    move-exception v2

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v2
.end method

.method public setObserved()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/UnobservedErrorNotifier;->task:Lcom/igaworks/util/bolts_task/Task;

    .line 32
    return-void
.end method
