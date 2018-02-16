.class Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;
.super Ljava/lang/Object;
.source "TrackingActivitySQLiteDB.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getCleanAppTrackingActivitiesInDBAsync(ZLcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

.field final synthetic val$filter_list:Lcom/igaworks/util/bolts_task/Capture;

.field final synthetic val$isOldVersion:Z


# direct methods
.method constructor <init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/Capture;ZLandroid/content/Context;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iput-object p2, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->val$filter_list:Lcom/igaworks/util/bolts_task/Capture;

    iput-boolean p3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->val$isOldVersion:Z

    iput-object p4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    const/4 v3, 0x1

    .line 388
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->val$filter_list:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 389
    .local v2, "flist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    iget-boolean v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->val$isOldVersion:Z

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v4, "Compat >> removeTrackingData"

    const/4 v5, 0x2

    invoke-static {v0, v1, v4, v5, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 392
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iget-object v1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v4, "tbl_AppTracking"

    # invokes: Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->removeTrackingData(Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->access$200(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iget-object v1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v5, "tbl_AppTracking"

    # invokes: Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->updateIsDirtyProperpy(Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    invoke-static/range {v0 .. v5}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->access$100(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$11;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
