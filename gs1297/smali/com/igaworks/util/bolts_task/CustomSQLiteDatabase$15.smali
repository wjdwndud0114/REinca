.class Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$15;
.super Ljava/lang/Object;
.source "CustomSQLiteDatabase.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
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
        "Landroid/database/Cursor;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$15;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Landroid/database/Cursor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    # getter for: Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->access$500()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->create(Landroid/database/Cursor;Ljava/util/concurrent/Executor;)Landroid/database/Cursor;

    move-result-object v0

    .line 243
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 244
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
    .line 236
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$15;->then(Lcom/igaworks/util/bolts_task/Task;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
