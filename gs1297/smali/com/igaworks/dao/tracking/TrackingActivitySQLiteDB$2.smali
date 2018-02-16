.class Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;
.super Ljava/lang/Object;
.source "TrackingActivitySQLiteDB.java"

# interfaces
.implements Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getActivityListParam(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable",
        "<",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

.field final synthetic val$act:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$endSessionParam:J

.field final synthetic val$group:Ljava/lang/String;

.field final synthetic val$isOldVersion:Z


# direct methods
.method constructor <init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iput-boolean p2, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;->val$isOldVersion:Z

    iput-object p3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;->val$group:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;->val$act:Ljava/lang/String;

    iput-wide p6, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;->val$endSessionParam:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 8
    .param p1, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
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
    .line 83
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iget-boolean v1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;->val$isOldVersion:Z

    iget-object v3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;->val$group:Ljava/lang/String;

    iget-object v5, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;->val$act:Ljava/lang/String;

    iget-wide v6, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;->val$endSessionParam:J

    move-object v2, p1

    # invokes: Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getCleanAppTrackingActivitiesInDBAsync(ZLcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/igaworks/util/bolts_task/Task;
    invoke-static/range {v0 .. v7}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->access$000(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;ZLcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$2;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
