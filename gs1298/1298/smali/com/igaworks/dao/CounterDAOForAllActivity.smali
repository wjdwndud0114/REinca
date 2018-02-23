.class public Lcom/igaworks/dao/CounterDAOForAllActivity;
.super Lcom/igaworks/dao/AdbrixDB_v2;
.source "CounterDAOForAllActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CounterDAOForAllActivity"

.field private static counterForAllActivityDao:Lcom/igaworks/dao/CounterDAOForAllActivity;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/igaworks/dao/AdbrixDB_v2;-><init>()V

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/dao/CounterDAOForAllActivity;->dbHelper:Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;

    const-string v1, "adbrix.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/igaworks/dao/CounterDAOForAllActivity;->dbHelper:Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDAO(Landroid/content/Context;)Lcom/igaworks/dao/CounterDAOForAllActivity;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/igaworks/dao/CounterDAOForAllActivity;->counterForAllActivityDao:Lcom/igaworks/dao/CounterDAOForAllActivity;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/igaworks/dao/CounterDAOForAllActivity;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/igaworks/dao/CounterDAOForAllActivity;->counterForAllActivityDao:Lcom/igaworks/dao/CounterDAOForAllActivity;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/igaworks/dao/CounterDAOForAllActivity;

    invoke-direct {v0, p0}, Lcom/igaworks/dao/CounterDAOForAllActivity;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igaworks/dao/CounterDAOForAllActivity;->counterForAllActivityDao:Lcom/igaworks/dao/CounterDAOForAllActivity;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/igaworks/impl/CommonFrameworkImpl;->setContext(Landroid/content/Context;)V

    .line 29
    :cond_2
    sget-object v0, Lcom/igaworks/dao/CounterDAOForAllActivity;->counterForAllActivityDao:Lcom/igaworks/dao/CounterDAOForAllActivity;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCountInAllActivityByGroup(Ljava/lang/String;)I
    .locals 7
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 122
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "IGAW_QA"

    const-string v5, "getCountInAllActivityByGroup: group value is invalid"

    invoke-static {v2, v4, v5, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v2, v3

    .line 156
    :goto_0
    return v2

    .line 126
    :cond_1
    new-instance v2, Lcom/igaworks/dao/CounterDAOForAllActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/dao/CounterDAOForAllActivity$3;-><init>(Lcom/igaworks/dao/CounterDAOForAllActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/igaworks/dao/CounterDAOForAllActivity;->runWithManagedComplexTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 150
    .local v1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {v1}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCountInAllActivityByGroup Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v2, v3

    .line 156
    goto :goto_0
.end method

.method public getCountInAllActivityByGroupAndActivity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v2, Lcom/igaworks/dao/CounterDAOForAllActivity$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/igaworks/dao/CounterDAOForAllActivity$2;-><init>(Lcom/igaworks/dao/CounterDAOForAllActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/igaworks/dao/CounterDAOForAllActivity;->runWithManagedComplexTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 112
    .local v1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {v1}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 117
    :goto_0
    return v2

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateItemToAllActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Lcom/igaworks/dao/CounterDAOForAllActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/igaworks/dao/CounterDAOForAllActivity$1;-><init>(Lcom/igaworks/dao/CounterDAOForAllActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/dao/CounterDAOForAllActivity;->runWithManagedTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 85
    return-void
.end method
