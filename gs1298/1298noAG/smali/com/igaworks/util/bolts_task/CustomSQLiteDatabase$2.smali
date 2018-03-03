.class Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$2;
.super Ljava/lang/Object;
.source "CustomSQLiteDatabase.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;-><init>(I)V
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
.field final synthetic this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$2;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

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
    .line 66
    .local p1, "toAwait":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$2;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    # getter for: Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->access$000(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$2;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    # setter for: Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;
    invoke-static {v0, p1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->access$102(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    .line 68
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$2;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    # getter for: Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->tcs:Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->access$200(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;->getTask()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$2;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
