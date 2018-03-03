.class Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$13;
.super Ljava/lang/Object;
.source "CustomSQLiteDatabase.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->closeAsync()Lcom/igaworks/util/bolts_task/Task;
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
    .line 202
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$13;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

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
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$13;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    # getter for: Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->access$300(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$13;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    # getter for: Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->tcs:Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->access$200(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$13;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    # getter for: Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->tcs:Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->access$200(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;->getTask()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$13;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    # getter for: Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->tcs:Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;
    invoke-static {v1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->access$200(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

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
    .line 202
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$13;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
