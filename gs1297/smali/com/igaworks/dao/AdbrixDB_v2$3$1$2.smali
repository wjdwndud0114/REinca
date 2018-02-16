.class Lcom/igaworks/dao/AdbrixDB_v2$3$1$2;
.super Ljava/lang/Object;
.source "AdbrixDB_v2.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/AdbrixDB_v2$3$1;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$2:Lcom/igaworks/dao/AdbrixDB_v2$3$1;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/AdbrixDB_v2$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/igaworks/dao/AdbrixDB_v2$3$1;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/igaworks/dao/AdbrixDB_v2$3$1$2;->this$2:Lcom/igaworks/dao/AdbrixDB_v2$3$1;

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
    .line 114
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<TT;>;"
    iget-object v0, p0, Lcom/igaworks/dao/AdbrixDB_v2$3$1$2;->this$2:Lcom/igaworks/dao/AdbrixDB_v2$3$1;

    iget-object v0, v0, Lcom/igaworks/dao/AdbrixDB_v2$3$1;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->setTransactionSuccessfulAsync()Lcom/igaworks/util/bolts_task/Task;

    .line 115
    return-object p1
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/AdbrixDB_v2$3$1$2;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
