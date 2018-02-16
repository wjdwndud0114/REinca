.class Lcom/igaworks/dao/AdbrixDB_v2$3;
.super Ljava/lang/Object;
.source "AdbrixDB_v2.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/AdbrixDB_v2;->runWithManagedComplexTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
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
        "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
        "Lcom/igaworks/util/bolts_task/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/AdbrixDB_v2;

.field final synthetic val$callable:Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/AdbrixDB_v2;Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/AdbrixDB_v2;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/igaworks/dao/AdbrixDB_v2$3;->this$0:Lcom/igaworks/dao/AdbrixDB_v2;

    iput-object p2, p0, Lcom/igaworks/dao/AdbrixDB_v2$3;->val$callable:Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;

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
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
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
    .line 107
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;>;"
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    .line 108
    .local v0, "db":Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->beginTransactionAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    new-instance v2, Lcom/igaworks/dao/AdbrixDB_v2$3$1;

    invoke-direct {v2, p0, v0}, Lcom/igaworks/dao/AdbrixDB_v2$3$1;-><init>(Lcom/igaworks/dao/AdbrixDB_v2$3;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    invoke-virtual {v1, v2}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/AdbrixDB_v2$3;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
