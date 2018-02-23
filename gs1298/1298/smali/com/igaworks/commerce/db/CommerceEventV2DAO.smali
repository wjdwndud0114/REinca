.class public Lcom/igaworks/commerce/db/CommerceEventV2DAO;
.super Lcom/igaworks/commerce/db/CommerceDB;
.source "CommerceEventV2DAO.java"


# static fields
.field public static final COMMERCE_EVENT_SP_V2_COUNT_OF_SAVED:Ljava/lang/String; = "CommerceEventsV2_count_of_saved"

.field public static final COMMERCE_EVENT_SP_V2_NAME:Ljava/lang/String; = "CommerceEventsV2"

.field private static counterForAllActivityDao:Lcom/igaworks/commerce/db/CommerceEventV2DAO;

.field private static httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-direct {v0}, Lcom/igaworks/commerce/net/CommerceHttpManager;-><init>()V

    sput-object v0, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/igaworks/commerce/db/CommerceDB;-><init>()V

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->dbHelper:Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;

    const-string v1, "commerce.db"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->dbHelper:Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;
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

.method static synthetic access$000(Lcom/igaworks/commerce/db/CommerceEventV2DAO;Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->updateIsDirtyProperpy(Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/igaworks/commerce/db/CommerceEventV2DAO;Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->removePurchaseItemList(Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public static addEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-static {p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getCommerceEventsSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 340
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 360
    return-void
.end method

.method public static addEvents(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getCommerceEventsSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 328
    .local v1, "edt":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    .local v0, "cem":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 332
    .end local v0    # "cem":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    return-void
.end method

.method public static getCommerceEventsSP(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    const-string v1, "CommerceEventsV2"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 314
    .local v0, "commerceEventsSP":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public static getCommerceEventsSPCountOfSaved(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    const-string v1, "CommerceEventsV2_count_of_saved"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 321
    .local v0, "getCommerceEventsSPCountOfSaved":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public static getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .locals 2
    .param p0, "_context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->counterForAllActivityDao:Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->counterForAllActivityDao:Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    invoke-direct {v0, p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->counterForAllActivityDao:Lcom/igaworks/commerce/db/CommerceEventV2DAO;

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
    sget-object v0, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->counterForAllActivityDao:Lcom/igaworks/commerce/db/CommerceEventV2DAO;

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

.method public static getEvents(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    :try_start_0
    invoke-static {p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getCommerceEventsSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 367
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :try_start_1
    invoke-static {p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getCommerceEventsSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 374
    .local v2, "edt":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 375
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    invoke-static {p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getCommerceEventsSPCountOfSaved(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 378
    .local v3, "edt2":Landroid/content/SharedPreferences$Editor;
    const-string v5, "Count"

    invoke-static {p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getCommerceEventsSPCountOfSaved(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "Count"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v2    # "edt":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "edt2":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-object v4

    .line 382
    .restart local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 368
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 369
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    const/4 v4, 0x0

    .line 373
    :try_start_3
    invoke-static {p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getCommerceEventsSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 374
    .restart local v2    # "edt":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 375
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    invoke-static {p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getCommerceEventsSPCountOfSaved(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 378
    .restart local v3    # "edt2":Landroid/content/SharedPreferences$Editor;
    const-string v5, "Count"

    invoke-static {p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getCommerceEventsSPCountOfSaved(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "Count"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 382
    .end local v2    # "edt":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "edt2":Landroid/content/SharedPreferences$Editor;
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 372
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 373
    :try_start_4
    invoke-static {p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getCommerceEventsSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 374
    .restart local v2    # "edt":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 375
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    invoke-static {p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getCommerceEventsSPCountOfSaved(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 378
    .restart local v3    # "edt2":Landroid/content/SharedPreferences$Editor;
    const-string v5, "Count"

    invoke-static {p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getCommerceEventsSPCountOfSaved(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "Count"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 382
    .end local v2    # "edt":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "edt2":Landroid/content/SharedPreferences$Editor;
    :goto_1
    throw v4

    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
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
            "Lcom/igaworks/commerce/model/CommerceV2EventItem;",
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
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    const/4 v0, 0x0

    .line 270
    if-nez p2, :cond_0

    .line 272
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .line 274
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 275
    .local v7, "size":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 276
    .local v2, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v8

    new-instance v9, Lcom/igaworks/commerce/db/CommerceEventV2DAO$9;

    invoke-direct {v9, p0, v2, v7}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$9;-><init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    new-instance v0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$10;-><init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Landroid/content/Context;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)V

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
            "Lcom/igaworks/commerce/model/CommerceV2EventItem;",
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
    .line 112
    .local p2, "mPurchaseItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-nez p2, :cond_0

    .line 113
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 116
    .local v8, "size":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 117
    .local v2, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v9

    new-instance v10, Lcom/igaworks/commerce/db/CommerceEventV2DAO$2;

    invoke-direct {v10, p0, v2, v8}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$2;-><init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    new-instance v0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    move-object/from16 v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$3;-><init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

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
    .line 248
    new-instance v0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$7;

    invoke-direct {v0, p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$7;-><init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->runWithManagedConnection(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public getEventForCommerceV2()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/commerce/model/CommerceV2EventItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v1, Lcom/igaworks/util/bolts_task/Capture;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v3}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 61
    .local v1, "retryList":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;>;"
    new-instance v3, Lcom/igaworks/commerce/db/CommerceEventV2DAO$1;

    invoke-direct {v3, p0, v1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$1;-><init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;Lcom/igaworks/util/bolts_task/Capture;)V

    invoke-virtual {p0, v3}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->runWithManagedComplexTransaction(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    .line 101
    .local v2, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;>;"
    :try_start_0
    invoke-static {v2}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-object v3

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommerceEnvetV2DAO >> getEventForCommerceV2 Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getRetryCount(I)I
    .locals 5
    .param p1, "key"    # I

    .prologue
    .line 142
    new-instance v2, Lcom/igaworks/commerce/db/CommerceEventV2DAO$4;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$4;-><init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;I)V

    invoke-virtual {p0, v2}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->runWithManagedComplexTransaction(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 167
    .local v1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {v1}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 168
    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 173
    :goto_0
    return v2

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CommerceEventV2DAO >> getRetryCount >> Key: "

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

    .line 173
    const/4 v2, 0x0

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
            "Lcom/igaworks/commerce/model/CommerceV2EventItem;",
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
    .line 260
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    new-instance v0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$8;-><init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->runWithManagedTransaction(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public removeRetryCount(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 232
    new-instance v0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$6;

    invoke-direct {v0, p0, p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$6;-><init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;I)V

    invoke-virtual {p0, v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->runWithManagedConnection(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public updateOrInsertConversion(ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "pJson"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$5;-><init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->runWithManagedComplexTransaction(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    .line 229
    return-void
.end method
