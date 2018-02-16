.class Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;
.super Ljava/lang/Object;
.source "PurchaseRetryDAO.java"

# interfaces
.implements Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/db/PurchaseRetryDAO;->updateOrInsertConversionForRetry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable",
        "<",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/commerce/db/PurchaseRetryDAO;

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$createAt:Ljava/lang/String;

.field final synthetic val$currency:Ljava/lang/String;

.field final synthetic val$key:I

.field final synthetic val$orderID:Ljava/lang/String;

.field final synthetic val$price:D

.field final synthetic val$productID:Ljava/lang/String;

.field final synthetic val$productName:Ljava/lang/String;

.field final synthetic val$quantity:I


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/db/PurchaseRetryDAO;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/db/PurchaseRetryDAO;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;->this$0:Lcom/igaworks/commerce/db/PurchaseRetryDAO;

    iput p2, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;->val$key:I

    iput-object p3, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;->val$productID:Ljava/lang/String;

    iput-object p4, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;->val$orderID:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;->val$productName:Ljava/lang/String;

    iput-wide p6, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;->val$price:D

    iput p8, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;->val$quantity:I

    iput-object p9, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;->val$currency:Ljava/lang/String;

    iput-object p10, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;->val$category:Ljava/lang/String;

    iput-object p11, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;->val$createAt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 5
    .param p1, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p1

    .line 182
    .local v0, "_db":Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    const-string v1, "PurchaseRestore"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "retry_count"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;->val$key:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    new-instance v2, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5$1;

    invoke-direct {v2, p0, v0}, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5$1;-><init>(Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    .line 184
    invoke-virtual {v1, v2}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 182
    return-object v1
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
