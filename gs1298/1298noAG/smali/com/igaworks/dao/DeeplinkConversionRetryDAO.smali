.class public Lcom/igaworks/dao/DeeplinkConversionRetryDAO;
.super Lcom/igaworks/dao/DeeplinkDB;
.source "DeeplinkConversionRetryDAO.java"


# static fields
.field private static counterForConversionDao:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/igaworks/dao/DeeplinkDB;-><init>()V

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->dbHelper:Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;

    const-string v1, "deeplink.db"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->dbHelper:Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/dao/DeeplinkConversionRetryDAO;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->updateIsDirtyProperpy(Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/dao/DeeplinkConversionRetryDAO;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->removeDeeplinkConversionItemList(Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/dao/DeeplinkConversionRetryDAO;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->updateIsDirtyProperpyForDLReEngMent(Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getDAO(Landroid/content/Context;)Lcom/igaworks/dao/DeeplinkConversionRetryDAO;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->counterForConversionDao:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->counterForConversionDao:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    invoke-direct {v0, p0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->counterForConversionDao:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/igaworks/impl/CommonFrameworkImpl;->setContext(Landroid/content/Context;)V

    .line 39
    :cond_2
    sget-object v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->counterForConversionDao:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeDeeplinkConversionItemList(Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
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
            "Lcom/igaworks/model/DeeplinkConversionItem;",
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
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkConversionItem;>;"
    const/4 v0, 0x0

    .line 261
    if-nez p2, :cond_0

    .line 262
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    .line 264
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 265
    .local v7, "size":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 266
    .local v2, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v8

    new-instance v9, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$9;

    invoke-direct {v9, p0, v2, v7}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$9;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    new-instance v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$10;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$10;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Landroid/content/Context;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)V

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
            "Lcom/igaworks/model/DeeplinkConversionItem;",
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
    .line 107
    .local p2, "mDeeplinkConversionItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkConversionItem;>;"
    if-nez p2, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 110
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 111
    .local v8, "size":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 112
    .local v2, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v9

    new-instance v10, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$2;

    invoke-direct {v10, p0, v2, v8}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$2;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    new-instance v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    move-object/from16 v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$3;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    invoke-virtual {v9, v10, v0}, Lcom/igaworks/util/bolts_task/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    goto :goto_0
.end method

.method private updateIsDirtyProperpyForDLReEngMent(Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
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
            "Lcom/igaworks/model/DeeplinkReEngagementConversion;",
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
    .line 346
    .local p2, "DeeplinkReEngagementConversionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkReEngagementConversion;>;"
    if-nez p2, :cond_0

    .line 347
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    .line 349
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 350
    .local v8, "size":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 351
    .local v2, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v9

    new-instance v10, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$12;

    invoke-direct {v10, p0, v2, v8}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$12;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    new-instance v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$13;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    move-object/from16 v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$13;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

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
    .line 240
    new-instance v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$7;

    invoke-direct {v0, p0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$7;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->runWithManagedConnection(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public getRetryConversions(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/model/DeeplinkConversionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v1, Lcom/igaworks/util/bolts_task/Capture;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v3}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 58
    .local v1, "retryList":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkConversionItem;>;>;"
    new-instance v3, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->runWithManagedComplexTransaction(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    .line 97
    .local v2, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkConversionItem;>;>;"
    :try_start_0
    invoke-static {v2}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-object v3

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeeplinkConversionRetryDAO >> getRetryConversions Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getRetryCount(I)I
    .locals 5
    .param p1, "key"    # I

    .prologue
    .line 139
    new-instance v2, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$4;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$4;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;I)V

    invoke-virtual {p0, v2}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->runWithManagedComplexTransaction(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 164
    .local v1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {v1}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 165
    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 170
    :goto_0
    return v2

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeeplinkConversionRetryDAO >> getRetryCount >> Key: "

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

    .line 170
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRetryReEngagementConversions(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/model/DeeplinkReEngagementConversion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v1, Lcom/igaworks/util/bolts_task/Capture;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v3}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 294
    .local v1, "retryList":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkReEngagementConversion;>;>;"
    new-instance v3, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$11;

    invoke-direct {v3, p0, v1, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$11;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->runWithManagedComplexTransaction(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    .line 335
    .local v2, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkReEngagementConversion;>;>;"
    :try_start_0
    invoke-static {v2}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 336
    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-object v3

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeeplinkConversionRetryDAO >> getRetryReEngConversions Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getRetryThirdPartyConversions(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/model/DeeplinkReEngagementConversion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v1, Lcom/igaworks/util/bolts_task/Capture;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v3}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 436
    .local v1, "retryList":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkReEngagementConversion;>;>;"
    new-instance v3, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;

    invoke-direct {v3, p0, v1, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->runWithManagedComplexTransaction(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    .line 477
    .local v2, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkReEngagementConversion;>;>;"
    :try_start_0
    invoke-static {v2}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 478
    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    return-object v3

    .line 479
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeeplinkConversionRetryDAO >> getRetryThirdPartyConversions Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeDLReEngMntRetryConversion(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 421
    new-instance v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$15;

    invoke-direct {v0, p0, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$15;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;I)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->runWithManagedConnection(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method public removeDeeplinkConversionItems(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/model/DeeplinkConversionItem;",
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
    .line 252
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkConversionItem;>;"
    new-instance v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$8;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->runWithManagedTransaction(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public removeRetryCount(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 225
    new-instance v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$6;

    invoke-direct {v0, p0, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$6;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;I)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->runWithManagedConnection(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public removeThirdPartyRetryConversion(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 533
    new-instance v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$18;

    invoke-direct {v0, p0, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$18;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;I)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->runWithManagedConnection(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 541
    const/4 v0, 0x1

    return v0
.end method

.method public updateOrInsertConversionForRetry(IILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "conversionKey"    # I
    .param p3, "clickID"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->runWithManagedComplexTransaction(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 222
    return-void
.end method

.method public updateOrInsertDLReEngMntConversionForRetry(IILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "conversionKey"    # I
    .param p3, "deeplink_info"    # Ljava/lang/String;

    .prologue
    .line 377
    new-instance v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$14;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->runWithManagedComplexTransaction(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 418
    return-void
.end method

.method public updateOrInsertDLThirdPartyConversionForRetry(IILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "conversionKey"    # I
    .param p3, "deeplink_info"    # Ljava/lang/String;

    .prologue
    .line 489
    new-instance v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$17;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->runWithManagedComplexTransaction(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 530
    return-void
.end method
