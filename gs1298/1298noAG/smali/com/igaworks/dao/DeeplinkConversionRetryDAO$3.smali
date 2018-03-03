.class Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;
.super Ljava/lang/Object;
.source "DeeplinkConversionRetryDAO.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->updateIsDirtyProperpy(Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
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
.field final synthetic this$0:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

.field final synthetic val$isDirty:I

.field final synthetic val$mDeeplinkConversionItem:Ljava/util/ArrayList;

.field final synthetic val$table:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->this$0:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    iput-object p2, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$mDeeplinkConversionItem:Ljava/util/ArrayList;

    iput p4, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$isDirty:I

    iput-object p5, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$table:Ljava/lang/String;

    iput-object p7, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

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
    const/4 v11, 0x1

    .line 122
    iget-object v7, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    .line 123
    .local v4, "index":I
    iget-object v7, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$mDeeplinkConversionItem:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/model/DeeplinkConversionItem;

    .line 124
    .local v2, "conversion":Lcom/igaworks/model/DeeplinkConversionItem;
    invoke-virtual {v2}, Lcom/igaworks/model/DeeplinkConversionItem;->getKey()I

    move-result v3

    .line 125
    .local v3, "id":I
    invoke-virtual {v2}, Lcom/igaworks/model/DeeplinkConversionItem;->getConversionKey()I

    move-result v1

    .line 126
    .local v1, "ck":I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v5, "values":Landroid/content/ContentValues;
    const-string v7, "isDirty"

    iget v8, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$isDirty:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    iget-object v7, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$context:Landroid/content/Context;

    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update table "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$table:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and ck = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " >> isDirty = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$isDirty:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-static {v7, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 129
    const-string v6, "_id = ?"

    .line 130
    .local v6, "where":Ljava/lang/String;
    new-array v0, v11, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 131
    .local v0, "args":[Ljava/lang/String;
    iget-object v7, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    iget-object v8, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->val$table:Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v6, v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v7

    invoke-virtual {v7}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v7

    return-object v7
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
