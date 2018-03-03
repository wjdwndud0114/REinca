.class public Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;
.super Ljava/lang/Object;
.source "TrackingActivitySQLiteDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB; = null

.field private static final MAXIMUM_NUMBER_OF_TRACKING_ACTIVITY:I = 0x2ee


# instance fields
.field private final helper:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;


# direct methods
.method private constructor <init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->helper:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;ZLcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .param p0, "x0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p3, "x3"    # Landroid/content/Context;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # J

    .prologue
    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getCleanAppTrackingActivitiesInDBAsync(ZLcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->updateIsDirtyProperpy(Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->removeTrackingData(Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;
    .param p1, "x1"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getOrphanDirtyTrackingActivitiesInDBAsync(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Landroid/content/Context;Lcom/igaworks/dao/tracking/TrackingActivityModel;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/igaworks/dao/tracking/TrackingActivityModel;
    .param p3, "x3"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->removeSingleActivity(Landroid/content/Context;Lcom/igaworks/dao/tracking/TrackingActivityModel;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;
    .param p1, "x1"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->clearTrackingActivities(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method private clearTrackingActivities(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
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
    const/4 v1, 0x0

    .line 451
    const-string v0, "tbl_AppTracking"

    invoke-virtual {p1, v0, v1, v1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$18;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$18;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method private getCleanAppTrackingActivitiesInDBAsync(ZLcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/igaworks/util/bolts_task/Task;
    .locals 20
    .param p1, "isOldVersion"    # Z
    .param p2, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "group"    # Ljava/lang/String;
    .param p5, "act"    # Ljava/lang/String;
    .param p6, "endSessionParam"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 297
    const-string v18, "SELECT * FROM tbl_AppTracking WHERE isDirty=? ORDER BY Id ASC LIMIT 50"

    .line 299
    .local v18, "query":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 300
    .local v4, "args":[Ljava/lang/String;
    new-instance v7, Lcom/igaworks/util/bolts_task/Capture;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v7, v5}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 301
    .local v7, "raw_list":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    new-instance v14, Lcom/igaworks/util/bolts_task/Capture;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v14, v5}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 302
    .local v14, "filter_list":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->rawQueryAsync(Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v5

    new-instance v6, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$14;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$14;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v5

    new-instance v6, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v6, v0, v7, v1, v2}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    .line 329
    invoke-virtual {v5, v6}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v15

    new-instance v5, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;

    move-object/from16 v6, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p3

    move-object/from16 v11, p2

    move-wide/from16 v12, p6

    invoke-direct/range {v5 .. v14}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/Capture;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;JLcom/igaworks/util/bolts_task/Capture;)V

    .line 343
    invoke-virtual {v15, v5}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v5

    new-instance v12, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;

    move-object/from16 v13, p0

    move/from16 v15, p1

    move-object/from16 v16, p3

    move-object/from16 v17, p2

    invoke-direct/range {v12 .. v17}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/Capture;ZLandroid/content/Context;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    .line 385
    invoke-virtual {v5, v12}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v5

    new-instance v6, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$10;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$10;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/Capture;)V

    .line 398
    invoke-virtual {v5, v6}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v5

    .line 302
    return-object v5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->INSTANCE:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->INSTANCE:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    new-instance v2, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;

    invoke-direct {v2, p0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;)V

    sput-object v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->INSTANCE:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->INSTANCE:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getOrphanDirtyTrackingActivitiesInDBAsync(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;
    .locals 6
    .param p1, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isDirty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "query":Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 408
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Lcom/igaworks/util/bolts_task/Capture;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v3}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 409
    .local v1, "o_list":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    invoke-virtual {p1, v2, v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->rawQueryAsync(Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    new-instance v4, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$17;

    invoke-direct {v4, p0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$17;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;)V

    invoke-virtual {v3, v4}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    new-instance v4, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$16;

    invoke-direct {v4, p0, v1, p3, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$16;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    .line 424
    invoke-virtual {v3, v4}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    new-instance v4, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$15;

    invoke-direct {v4, p0, v1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$15;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/Capture;)V

    .line 437
    invoke-virtual {v3, v4}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    .line 409
    return-object v3
.end method

.method private removeSingleActivity(Landroid/content/Context;Lcom/igaworks/dao/tracking/TrackingActivityModel;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mTrackingActivityModel"    # Lcom/igaworks/dao/tracking/TrackingActivityModel;
    .param p3, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p4, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
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
    const/4 v6, 0x1

    .line 461
    invoke-virtual {p2}, Lcom/igaworks/dao/tracking/TrackingActivityModel;->getId()I

    move-result v1

    .line 462
    .local v1, "id":I
    const-string v2, "Id = ?"

    .line 463
    .local v2, "where":Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 464
    .local v0, "args":[Ljava/lang/String;
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filter activity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/igaworks/dao/tracking/TrackingActivityModel;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {p1, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 465
    invoke-virtual {p3, p4, v2, v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    return-object v3
.end method

.method private removeTrackingData(Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p4, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
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
    .local p2, "mTrackingActivityModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    const/4 v0, 0x0

    .line 501
    if-nez p2, :cond_0

    .line 502
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 506
    :goto_0
    return-object v0

    .line 504
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 505
    .local v6, "size":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 506
    .local v2, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v7

    new-instance v8, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$21;

    invoke-direct {v8, p0, v2, v6}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$21;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    new-instance v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$22;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$22;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Lcom/igaworks/util/bolts_task/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    goto :goto_0
.end method

.method private runWithManagedComplexTransaction(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable",
            "<",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "callable":Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;, "Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable<Lcom/igaworks/util/bolts_task/Task<TT;>;>;"
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->helper:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;->getWritableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method private runWithManagedConnection(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable",
            "<",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, "callable":Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;, "Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable<Lcom/igaworks/util/bolts_task/Task<TT;>;>;"
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->helper:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;->getWritableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$23;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$23;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method private runWithManagedTransaction(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable",
            "<",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, "callable":Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;, "Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable<Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;>;"
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->helper:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;->getWritableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
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
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
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
    .line 469
    .local p2, "mTrackingActivityModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    if-nez p2, :cond_0

    .line 470
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 474
    :goto_0
    return-object v0

    .line 472
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 473
    .local v8, "size":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 474
    .local v2, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v9

    new-instance v10, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$19;

    invoke-direct {v10, p0, v2, v8}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$19;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    new-instance v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$20;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    move-object/from16 v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$20;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    invoke-virtual {v9, v10, v0}, Lcom/igaworks/util/bolts_task/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addTrackingActivityAsyn(Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p1, "activity_name"    # Ljava/lang/String;
    .param p2, "activity_info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$1;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->runWithManagedConnection(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public getActivityListParam(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/igaworks/util/bolts_task/Task;
    .locals 9
    .param p1, "isOldVersion"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "act"    # Ljava/lang/String;
    .param p5, "endSessionParam"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->runWithManagedComplexTransaction(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public getCount(Landroid/content/Context;Ljava/lang/String;I)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "isDirty"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$8;

    invoke-direct {v0, p0, p3, p2}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$8;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->runWithManagedConnection(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionData(ZLandroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .param p1, "isOldVersion"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/igaworks/util/bolts_task/Capture;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 171
    .local v0, "impList":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    new-instance v1, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/Capture;ZLandroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->runWithManagedComplexTransaction(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    return-object v1
.end method

.method public getOrphanTracking(Landroid/content/Context;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$5;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->runWithManagedConnection(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingActivitiesInDB(Ljava/lang/String;I)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "isDirty"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$9;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->runWithManagedConnection(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public reclaimDirtyDataForRetry(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    new-instance v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$3;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->runWithManagedTransaction(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public removeTrackingActivities(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;",
            "Landroid/content/Context;",
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
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    new-instance v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$4;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->runWithManagedTransaction(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public setImpressionData(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/igaworks/util/bolts_task/Task;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "campaignKey"    # I
    .param p3, "resourceKey"    # I
    .param p4, "spaceKey"    # Ljava/lang/String;
    .param p5, "createdAt"    # Ljava/lang/String;
    .param p6, "conversion_key"    # Ljava/lang/String;
    .param p7, "isFirstTime"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$6;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->runWithManagedConnection(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
