.class public Lcom/igaworks/dao/CounterDAOForCPEActivity;
.super Lcom/igaworks/dao/AdbrixDB_v2;
.source "CounterDAOForCPEActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CounterDAOForCPEActivity"

.field private static activityCounterDAO:Lcom/igaworks/dao/CounterDAOForCPEActivity;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/igaworks/dao/AdbrixDB_v2;-><init>()V

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity;->dbHelper:Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;

    const-string v1, "adbrix.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity;->dbHelper:Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDAO(Landroid/content/Context;)Lcom/igaworks/dao/CounterDAOForCPEActivity;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/igaworks/dao/CounterDAOForCPEActivity;->activityCounterDAO:Lcom/igaworks/dao/CounterDAOForCPEActivity;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/igaworks/dao/CounterDAOForCPEActivity;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/igaworks/dao/CounterDAOForCPEActivity;->activityCounterDAO:Lcom/igaworks/dao/CounterDAOForCPEActivity;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/igaworks/dao/CounterDAOForCPEActivity;

    invoke-direct {v0, p0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igaworks/dao/CounterDAOForCPEActivity;->activityCounterDAO:Lcom/igaworks/dao/CounterDAOForCPEActivity;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/igaworks/impl/CommonFrameworkImpl;->setContext(Landroid/content/Context;)V

    .line 35
    :cond_2
    sget-object v0, Lcom/igaworks/dao/CounterDAOForCPEActivity;->activityCounterDAO:Lcom/igaworks/dao/CounterDAOForCPEActivity;

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


# virtual methods
.method public getActivityCounter(IIIILjava/lang/String;Ljava/lang/String;)Lcom/igaworks/model/ActivityCounter;
    .locals 10
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "group"    # Ljava/lang/String;
    .param p6, "activity"    # Ljava/lang/String;

    .prologue
    .line 433
    new-instance v0, Lcom/igaworks/dao/CounterDAOForCPEActivity$12;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/dao/CounterDAOForCPEActivity$12;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;IIIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->runWithManagedComplexTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v9

    .line 474
    .local v9, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Lcom/igaworks/model/ActivityCounter;>;"
    :try_start_0
    invoke-static {v9}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 475
    invoke-virtual {v9}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/model/ActivityCounter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    return-object v0

    .line 476
    :catch_0
    move-exception v8

    .line 478
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 479
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityCounters Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityCounters(IIIILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "group"    # Ljava/lang/String;
    .param p6, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/ActivityCounter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lcom/igaworks/dao/CounterDAOForCPEActivity$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/dao/CounterDAOForCPEActivity$9;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;IIIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->runWithManagedComplexTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v9

    .line 315
    .local v9, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/List<Lcom/igaworks/model/ActivityCounter;>;>;"
    :try_start_0
    invoke-static {v9}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 316
    invoke-virtual {v9}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-object v0

    .line 317
    :catch_0
    move-exception v8

    .line 319
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityCounters Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityCounters(IIILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "group"    # Ljava/lang/String;
    .param p5, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/ActivityCounter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->runWithManagedComplexTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v8

    .line 368
    .local v8, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/List<Lcom/igaworks/model/ActivityCounter;>;>;"
    :try_start_0
    invoke-static {v8}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 369
    invoke-virtual {v8}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-object v0

    .line 370
    :catch_0
    move-exception v7

    .line 372
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityCounters Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityCounters(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/ActivityCounter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v2, Lcom/igaworks/dao/CounterDAOForCPEActivity$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/igaworks/dao/CounterDAOForCPEActivity$11;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->runWithManagedComplexTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 422
    .local v1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/List<Lcom/igaworks/model/ActivityCounter;>;>;"
    :try_start_0
    invoke-static {v1}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 423
    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    return-object v2

    .line 424
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActivityCounters Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getQueryString(IIIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "group"    # Ljava/lang/String;
    .param p6, "activity"    # Ljava/lang/String;

    .prologue
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "year="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "month"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "day"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hour"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "activity_group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "query":Ljava/lang/String;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CounterDAOForCPEActivity"

    const/4 v3, 0x3

    invoke-static {v1, v2, v0, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    return-object v0
.end method

.method public getQueryString(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "group"    # Ljava/lang/String;
    .param p5, "activity"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "year="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "month"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "day"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "activity_group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "query":Ljava/lang/String;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CounterDAOForCPEActivity"

    const/4 v3, 0x3

    invoke-static {v1, v2, v0, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 254
    return-object v0
.end method

.method public getQueryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity_group=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "query":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and activity=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CounterDAOForCPEActivity"

    const/4 v3, 0x3

    invoke-static {v1, v2, v0, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    return-object v0
.end method

.method public getQueryStringByDateLessThan(IIIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "group"    # Ljava/lang/String;
    .param p6, "activity"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 233
    .local v0, "date":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 234
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 235
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 236
    const/16 v2, 0xb

    invoke-virtual {v0, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 237
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 238
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no_counting_update_datetime < \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igaworks/dao/CounterDAOForCPEActivity;->DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "activity_group"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "query":Ljava/lang/String;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "CounterDAOForCPEActivity"

    const/4 v4, 0x3

    invoke-static {v2, v3, v1, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    return-object v1
.end method

.method public increment(Lcom/igaworks/model/ActivityCounter;)V
    .locals 1
    .param p1, "counter"    # Lcom/igaworks/model/ActivityCounter;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->increment(Lcom/igaworks/model/ActivityCounter;Ljava/util/Calendar;)V

    .line 140
    return-void
.end method

.method public increment(Lcom/igaworks/model/ActivityCounter;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "counter"    # Lcom/igaworks/model/ActivityCounter;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 143
    new-instance v0, Lcom/igaworks/dao/CounterDAOForCPEActivity$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/igaworks/dao/CounterDAOForCPEActivity$6;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;Lcom/igaworks/model/ActivityCounter;Ljava/util/Calendar;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->runWithManagedTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 164
    return-void
.end method

.method public insertCounter(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "group"    # Ljava/lang/String;
    .param p6, "activity"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->insertCounter(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 50
    return-void
.end method

.method public insertCounter(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "group"    # Ljava/lang/String;
    .param p6, "activity"    # Ljava/lang/String;
    .param p7, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 54
    new-instance v0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->runWithManagedTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 91
    return-void
.end method

.method public removeCounter(I)V
    .locals 1
    .param p1, "activityCounterNo"    # I

    .prologue
    .line 94
    new-instance v0, Lcom/igaworks/dao/CounterDAOForCPEActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/igaworks/dao/CounterDAOForCPEActivity$2;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;I)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->runWithManagedConnection(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 102
    return-void
.end method

.method public removeCounter(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "group"    # Ljava/lang/String;
    .param p6, "activity"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Lcom/igaworks/dao/CounterDAOForCPEActivity$4;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/dao/CounterDAOForCPEActivity$4;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;IIIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->runWithManagedConnection(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 124
    return-void
.end method

.method public removeCounter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Lcom/igaworks/dao/CounterDAOForCPEActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/igaworks/dao/CounterDAOForCPEActivity$3;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->runWithManagedConnection(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 113
    return-void
.end method

.method public removeCounterLessThanDate(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "group"    # Ljava/lang/String;
    .param p6, "activity"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;IIIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->runWithManagedConnection(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 136
    return-void
.end method

.method public updateDateUpdated(Lcom/igaworks/model/ActivityCounter;IIII)V
    .locals 7
    .param p1, "counter"    # Lcom/igaworks/model/ActivityCounter;
    .param p2, "yearUpdated"    # I
    .param p3, "monthUpdated"    # I
    .param p4, "dayUpdated"    # I
    .param p5, "hourUpdated"    # I

    .prologue
    .line 167
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->updateDateUpdated(Lcom/igaworks/model/ActivityCounter;IIIILjava/util/Calendar;)V

    .line 168
    return-void
.end method

.method public updateDateUpdated(Lcom/igaworks/model/ActivityCounter;IIIILjava/util/Calendar;)V
    .locals 8
    .param p1, "counter"    # Lcom/igaworks/model/ActivityCounter;
    .param p2, "yearUpdated"    # I
    .param p3, "monthUpdated"    # I
    .param p4, "dayUpdated"    # I
    .param p5, "hourUpdated"    # I
    .param p6, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 171
    new-instance v0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;IIIILjava/util/Calendar;Lcom/igaworks/model/ActivityCounter;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->runWithManagedTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 195
    return-void
.end method

.method public updateNoCountingDateUpdated(Lcom/igaworks/model/ActivityCounter;IIIILjava/util/Calendar;)V
    .locals 8
    .param p1, "counter"    # Lcom/igaworks/model/ActivityCounter;
    .param p2, "yearUpdated"    # I
    .param p3, "monthUpdated"    # I
    .param p4, "dayUpdated"    # I
    .param p5, "hourUpdated"    # I
    .param p6, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 198
    new-instance v0, Lcom/igaworks/dao/CounterDAOForCPEActivity$8;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/dao/CounterDAOForCPEActivity$8;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;IIIILjava/util/Calendar;Lcom/igaworks/model/ActivityCounter;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->runWithManagedTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 221
    return-void
.end method
