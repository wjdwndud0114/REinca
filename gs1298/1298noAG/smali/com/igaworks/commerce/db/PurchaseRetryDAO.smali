.class public Lcom/igaworks/commerce/db/PurchaseRetryDAO;
.super Lcom/igaworks/commerce/db/CommerceDB;
.source "PurchaseRetryDAO.java"


# static fields
.field private static counterForAllActivityDao:Lcom/igaworks/commerce/db/PurchaseRetryDAO;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/igaworks/commerce/db/CommerceDB;-><init>()V

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->dbHelper:Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;

    const-string v1, "commerce.db"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->dbHelper:Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/igaworks/commerce/db/PurchaseRetryDAO;Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/commerce/db/PurchaseRetryDAO;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->updateIsDirtyProperpy(Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/igaworks/commerce/db/PurchaseRetryDAO;Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/commerce/db/PurchaseRetryDAO;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->removePurchaseItemList(Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/PurchaseRetryDAO;
    .locals 2
    .param p0, "_context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->counterForAllActivityDao:Lcom/igaworks/commerce/db/PurchaseRetryDAO;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/igaworks/commerce/db/PurchaseRetryDAO;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->counterForAllActivityDao:Lcom/igaworks/commerce/db/PurchaseRetryDAO;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/igaworks/commerce/db/PurchaseRetryDAO;

    invoke-direct {v0, p0}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->counterForAllActivityDao:Lcom/igaworks/commerce/db/PurchaseRetryDAO;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/igaworks/impl/CommonFrameworkImpl;->setContext(Landroid/content/Context;)V

    .line 36
    :cond_2
    sget-object v0, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->counterForAllActivityDao:Lcom/igaworks/commerce/db/PurchaseRetryDAO;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removePurchaseItemList(Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p4, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/commerce/model/PurchaseItem;",
            ">;",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    const/4 v0, 0x0

    .line 263
    if-nez p2, :cond_0

    .line 264
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 266
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 267
    .local v7, "size":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 268
    .local v2, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v8

    new-instance v9, Lcom/igaworks/commerce/db/PurchaseRetryDAO$9;

    invoke-direct {v9, p0, v2, v7}, Lcom/igaworks/commerce/db/PurchaseRetryDAO$9;-><init>(Lcom/igaworks/commerce/db/PurchaseRetryDAO;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    new-instance v0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$10;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/commerce/db/PurchaseRetryDAO$10;-><init>(Lcom/igaworks/commerce/db/PurchaseRetryDAO;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Landroid/content/Context;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v0}, Lcom/igaworks/util/bolts_task/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    goto :goto_0
.end method

.method private updateIsDirtyProperpy(Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "isDirty"    # I
    .param p4, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p5, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/commerce/model/PurchaseItem;",
            ">;I",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "mPurchaseItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    if-nez p2, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 109
    .local v8, "size":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 110
    .local v2, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v9

    new-instance v10, Lcom/igaworks/commerce/db/PurchaseRetryDAO$2;

    invoke-direct {v10, p0, v2, v8}, Lcom/igaworks/commerce/db/PurchaseRetryDAO$2;-><init>(Lcom/igaworks/commerce/db/PurchaseRetryDAO;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    new-instance v0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$3;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    move-object/from16 v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/commerce/db/PurchaseRetryDAO$3;-><init>(Lcom/igaworks/commerce/db/PurchaseRetryDAO;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    invoke-virtual {v9, v10, v0}, Lcom/igaworks/util/bolts_task/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearRetryItems()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$7;

    invoke-direct {v0, p0}, Lcom/igaworks/commerce/db/PurchaseRetryDAO$7;-><init>(Lcom/igaworks/commerce/db/PurchaseRetryDAO;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->runWithManagedConnection(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public getRetryCount(I)I
    .locals 5
    .param p1, "key"    # I

    .prologue
    .line 135
    new-instance v2, Lcom/igaworks/commerce/db/PurchaseRetryDAO$4;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/commerce/db/PurchaseRetryDAO$4;-><init>(Lcom/igaworks/commerce/db/PurchaseRetryDAO;I)V

    invoke-virtual {p0, v2}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->runWithManagedComplexTransaction(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 160
    .local v1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {v1}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 161
    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 166
    :goto_0
    return v2

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseRetryDAO >> getRetryCount >> Key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">> Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRetryPurchase()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/commerce/model/PurchaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Lcom/igaworks/util/bolts_task/Capture;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v3}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 53
    .local v1, "retryList":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;>;"
    new-instance v3, Lcom/igaworks/commerce/db/PurchaseRetryDAO$1;

    invoke-direct {v3, p0, v1}, Lcom/igaworks/commerce/db/PurchaseRetryDAO$1;-><init>(Lcom/igaworks/commerce/db/PurchaseRetryDAO;Lcom/igaworks/util/bolts_task/Capture;)V

    invoke-virtual {p0, v3}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->runWithManagedComplexTransaction(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    .line 94
    .local v2, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;>;"
    :try_start_0
    invoke-static {v2}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-object v3

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PurchaseRetryDAO >> getRetryPurchase Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removePurchaseItem(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/commerce/model/PurchaseItem;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    new-instance v0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/igaworks/commerce/db/PurchaseRetryDAO$8;-><init>(Lcom/igaworks/commerce/db/PurchaseRetryDAO;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->runWithManagedTransaction(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public removeRetryCount(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 226
    new-instance v0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$6;

    invoke-direct {v0, p0, p1}, Lcom/igaworks/commerce/db/PurchaseRetryDAO$6;-><init>(Lcom/igaworks/commerce/db/PurchaseRetryDAO;I)V

    invoke-virtual {p0, v0}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->runWithManagedConnection(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public updateOrInsertConversionForRetry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "key"    # I
    .param p2, "orderID"    # Ljava/lang/String;
    .param p3, "productID"    # Ljava/lang/String;
    .param p4, "productName"    # Ljava/lang/String;
    .param p5, "price"    # D
    .param p7, "quantity"    # I
    .param p8, "currency"    # Ljava/lang/String;
    .param p9, "category"    # Ljava/lang/String;
    .param p10, "createAt"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/igaworks/commerce/db/PurchaseRetryDAO$5;-><init>(Lcom/igaworks/commerce/db/PurchaseRetryDAO;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->runWithManagedComplexTransaction(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 223
    return-void
.end method
