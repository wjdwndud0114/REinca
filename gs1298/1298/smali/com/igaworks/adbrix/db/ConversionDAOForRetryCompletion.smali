.class public Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;
.super Lcom/igaworks/dao/AdbrixDB_v2;
.source "ConversionDAOForRetryCompletion.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityDAOForRestore"

.field private static counterForAllActivityDao:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/igaworks/dao/AdbrixDB_v2;-><init>()V

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->dbHelper:Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;

    const-string v1, "adbrix.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->dbHelper:Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDAO(Landroid/content/Context;)Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->counterForAllActivityDao:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->counterForAllActivityDao:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    invoke-direct {v0, p0}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->counterForAllActivityDao:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    .line 33
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

    .line 37
    :cond_2
    sget-object v0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->counterForAllActivityDao:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

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


# virtual methods
.method public clearRetryCount()Z
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$5;

    invoke-direct {v0, p0}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$5;-><init>(Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->runWithManagedConnection(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public getRetryConversions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/RetryCompleteConversion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v2, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1;

    invoke-direct {v2, p0}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1;-><init>(Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;)V

    invoke-virtual {p0, v2}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->runWithManagedComplexTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 78
    .local v1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/List<Lcom/igaworks/adbrix/model/RetryCompleteConversion;>;>;"
    :try_start_0
    invoke-static {v1}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-object v2

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConversionDAOForRetryCompletion >>getRetryConversions Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRetryCount(I)I
    .locals 3
    .param p1, "conversionKey"    # I

    .prologue
    .line 89
    new-instance v2, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$2;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$2;-><init>(Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;I)V

    invoke-virtual {p0, v2}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->runWithManagedComplexTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 116
    .local v1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {v1}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 121
    :goto_0
    return v2

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeRetryCount(I)Z
    .locals 1
    .param p1, "conversionKey"    # I

    .prologue
    .line 165
    new-instance v0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$4;

    invoke-direct {v0, p0, p1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$4;-><init>(Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;I)V

    invoke-virtual {p0, v0}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->runWithManagedConnection(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public updateOrInsertConversionForRetry(I)V
    .locals 1
    .param p1, "conversionKey"    # I

    .prologue
    .line 126
    new-instance v0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;

    invoke-direct {v0, p0, p1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;-><init>(Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;I)V

    invoke-virtual {p0, v0}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->runWithManagedTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 162
    return-void
.end method
