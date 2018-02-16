.class Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;
.super Ljava/lang/Object;
.source "CommerceEventV2DAO.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/db/CommerceEventV2DAO;->removePurchaseItemList(Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
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

.field final synthetic val$list:Ljava/util/ArrayList;

.field final synthetic val$table:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Landroid/content/Context;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;->this$0:Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    iput-object p2, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;->val$list:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    iput-object p6, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;->val$table:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 9
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
    .line 286
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    iget-object v5, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 287
    .local v2, "index":I
    iget-object v5, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    .line 288
    .local v3, "mPurchaseItem":Lcom/igaworks/commerce/model/CommerceV2EventItem;
    invoke-virtual {v3}, Lcom/igaworks/commerce/model/CommerceV2EventItem;->getKey()I

    move-result v1

    .line 289
    .local v1, "id":I
    iget-object v5, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;->val$context:Landroid/content/Context;

    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CommerceEventV2DAO >> Remove restore queue >> key = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " json = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/igaworks/commerce/model/CommerceV2EventItem;->getJson()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 291
    const-string v4, "_id=?"

    .line 292
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 293
    .local v0, "args":[Ljava/lang/String;
    iget-object v5, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    iget-object v6, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;->val$table:Ljava/lang/String;

    invoke-virtual {v5, v6, v4, v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v5

    .line 295
    .end local v0    # "args":[Ljava/lang/String;
    .end local v4    # "where":Ljava/lang/String;
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

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
    .line 282
    invoke-virtual {p0, p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
