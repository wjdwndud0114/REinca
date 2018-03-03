.class Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;
.super Ljava/lang/Object;
.source "CommerceEventV2DAO.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/db/CommerceEventV2DAO;->updateIsDirtyProperpy(Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
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
.field final synthetic this$0:Lcom/igaworks/commerce/db/CommerceEventV2DAO;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

.field final synthetic val$isDirty:I

.field final synthetic val$mPurchaseItem:Ljava/util/ArrayList;

.field final synthetic val$table:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->this$0:Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    iput-object p2, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$mPurchaseItem:Ljava/util/ArrayList;

    iput p4, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$isDirty:I

    iput-object p5, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$table:Ljava/lang/String;

    iput-object p7, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 11
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
    const/4 v10, 0x1

    .line 127
    iget-object v6, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 128
    .local v2, "index":I
    iget-object v6, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$mPurchaseItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    .line 129
    .local v3, "item":Lcom/igaworks/commerce/model/CommerceV2EventItem;
    invoke-virtual {v3}, Lcom/igaworks/commerce/model/CommerceV2EventItem;->getKey()I

    move-result v1

    .line 130
    .local v1, "id":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "is_Dirty"

    iget v7, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$isDirty:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    iget-object v6, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$context:Landroid/content/Context;

    const-string v7, "IGAW_QA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update table "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$table:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >> isDirty = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$isDirty:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v6, v7, v8, v9, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 133
    const-string v5, "_id = ?"

    .line 134
    .local v5, "where":Ljava/lang/String;
    new-array v0, v10, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 135
    .local v0, "args":[Ljava/lang/String;
    iget-object v6, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    iget-object v7, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->val$table:Ljava/lang/String;

    invoke-virtual {v6, v7, v4, v5, v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
