.class Lcom/igaworks/commerce/db/CommerceDB$3;
.super Ljava/lang/Object;
.source "CommerceDB.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/db/CommerceDB;->runWithManagedComplexTransaction(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
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
.field final synthetic this$0:Lcom/igaworks/commerce/db/CommerceDB;

.field final synthetic val$callable:Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/db/CommerceDB;Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/db/CommerceDB;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/igaworks/commerce/db/CommerceDB$3;->this$0:Lcom/igaworks/commerce/db/CommerceDB;

    iput-object p2, p0, Lcom/igaworks/commerce/db/CommerceDB$3;->val$callable:Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;

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
    .line 95
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;>;"
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    .line 96
    .local v0, "db":Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->beginTransactionAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    new-instance v2, Lcom/igaworks/commerce/db/CommerceDB$3$1;

    invoke-direct {v2, p0, v0}, Lcom/igaworks/commerce/db/CommerceDB$3$1;-><init>(Lcom/igaworks/commerce/db/CommerceDB$3;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

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
    .line 92
    invoke-virtual {p0, p1}, Lcom/igaworks/commerce/db/CommerceDB$3;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
