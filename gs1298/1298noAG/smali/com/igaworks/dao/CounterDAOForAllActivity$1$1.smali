.class Lcom/igaworks/dao/CounterDAOForAllActivity$1$1;
.super Ljava/lang/Object;
.source "CounterDAOForAllActivity.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CounterDAOForAllActivity$1;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
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
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/dao/CounterDAOForAllActivity$1;

.field final synthetic val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CounterDAOForAllActivity$1;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/dao/CounterDAOForAllActivity$1;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/igaworks/dao/CounterDAOForAllActivity$1$1;->this$1:Lcom/igaworks/dao/CounterDAOForAllActivity$1;

    iput-object p2, p0, Lcom/igaworks/dao/CounterDAOForAllActivity$1$1;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Landroid/database/Cursor;",
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
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Landroid/database/Cursor;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 61
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 63
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 64
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 66
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v2, "newTaskValues":Landroid/content/ContentValues;
    const-string v4, "activity_group"

    iget-object v5, p0, Lcom/igaworks/dao/CounterDAOForAllActivity$1$1;->this$1:Lcom/igaworks/dao/CounterDAOForAllActivity$1;

    iget-object v5, v5, Lcom/igaworks/dao/CounterDAOForAllActivity$1;->val$group:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v4, "activity"

    iget-object v5, p0, Lcom/igaworks/dao/CounterDAOForAllActivity$1$1;->this$1:Lcom/igaworks/dao/CounterDAOForAllActivity$1;

    iget-object v5, v5, Lcom/igaworks/dao/CounterDAOForAllActivity$1;->val$activity:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v4, "counter"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "CounterDAOForAllActivity"

    const-string v6, "Update Item of All Activity : group = %s, activity = %s"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/igaworks/dao/CounterDAOForAllActivity$1$1;->this$1:Lcom/igaworks/dao/CounterDAOForAllActivity$1;

    iget-object v8, v8, Lcom/igaworks/dao/CounterDAOForAllActivity$1;->val$group:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/igaworks/dao/CounterDAOForAllActivity$1$1;->this$1:Lcom/igaworks/dao/CounterDAOForAllActivity$1;

    iget-object v8, v8, Lcom/igaworks/dao/CounterDAOForAllActivity$1;->val$activity:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    iget-object v4, p0, Lcom/igaworks/dao/CounterDAOForAllActivity$1$1;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v5, "AllActivityCounter"

    invoke-virtual {v4, v5, v2}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->insertOrThrowAsync(Ljava/lang/String;Landroid/content/ContentValues;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v4

    .line 79
    .end local v2    # "newTaskValues":Landroid/content/ContentValues;
    :goto_0
    return-object v4

    .line 75
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v3, "newValue":Landroid/content/ContentValues;
    const-string v4, "counter"

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 78
    .local v1, "id":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 79
    iget-object v4, p0, Lcom/igaworks/dao/CounterDAOForAllActivity$1$1;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v5, "AllActivityCounter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v4

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
    .line 56
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/CounterDAOForAllActivity$1$1;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
