.class public Lcom/igaworks/dao/ActivityDAOForRestore;
.super Lcom/igaworks/dao/AdbrixDB_v2;
.source "ActivityDAOForRestore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityDAOForRestore"

.field private static counterForAllActivityDao:Lcom/igaworks/dao/ActivityDAOForRestore;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/igaworks/dao/AdbrixDB_v2;-><init>()V

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/dao/ActivityDAOForRestore;->dbHelper:Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;

    const-string v1, "adbrix.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/igaworks/dao/ActivityDAOForRestore;->dbHelper:Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDAO(Landroid/content/Context;)Lcom/igaworks/dao/ActivityDAOForRestore;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/igaworks/dao/ActivityDAOForRestore;->counterForAllActivityDao:Lcom/igaworks/dao/ActivityDAOForRestore;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lcom/igaworks/dao/ActivityDAOForRestore;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/igaworks/dao/ActivityDAOForRestore;->counterForAllActivityDao:Lcom/igaworks/dao/ActivityDAOForRestore;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/igaworks/dao/ActivityDAOForRestore;

    invoke-direct {v0, p0}, Lcom/igaworks/dao/ActivityDAOForRestore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igaworks/dao/ActivityDAOForRestore;->counterForAllActivityDao:Lcom/igaworks/dao/ActivityDAOForRestore;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/igaworks/impl/CommonFrameworkImpl;->setContext(Landroid/content/Context;)V

    .line 43
    :cond_2
    sget-object v0, Lcom/igaworks/dao/ActivityDAOForRestore;->counterForAllActivityDao:Lcom/igaworks/dao/ActivityDAOForRestore;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "result":I
    :try_start_0
    new-instance v2, Lcom/igaworks/dao/ActivityDAOForRestore$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/igaworks/dao/ActivityDAOForRestore$1;-><init>(Lcom/igaworks/dao/ActivityDAOForRestore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/igaworks/dao/ActivityDAOForRestore;->runWithManagedTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v1, 0x1

    .line 76
    .end local v1    # "result":I
    :goto_0
    return v1

    .line 75
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearRestoreActivity()Z
    .locals 5

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ActivityDAOForRestore"

    const-string v3, "Remove restore queue"

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    new-instance v1, Lcom/igaworks/dao/ActivityDAOForRestore$3;

    invoke-direct {v1, p0}, Lcom/igaworks/dao/ActivityDAOForRestore$3;-><init>(Lcom/igaworks/dao/ActivityDAOForRestore;)V

    invoke-virtual {p0, v1}, Lcom/igaworks/dao/ActivityDAOForRestore;->runWithManagedConnection(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v1, 0x1

    .line 141
    :goto_0
    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRestoreActivities()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/RestoreActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v3, Lcom/igaworks/dao/ActivityDAOForRestore$2;

    invoke-direct {v3, p0}, Lcom/igaworks/dao/ActivityDAOForRestore$2;-><init>(Lcom/igaworks/dao/ActivityDAOForRestore;)V

    invoke-virtual {p0, v3}, Lcom/igaworks/dao/ActivityDAOForRestore;->runWithManagedComplexTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    .line 117
    .local v2, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/List<Lcom/igaworks/model/RestoreActivity;>;>;"
    :try_start_0
    invoke-static {v2}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v1, "return_list":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/RestoreActivity;>;"
    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "return_list":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/RestoreActivity;>;"
    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRestoreActivities Error0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    goto :goto_0
.end method
