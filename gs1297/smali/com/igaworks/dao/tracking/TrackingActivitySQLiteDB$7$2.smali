.class Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;
.super Ljava/lang/Object;
.source "TrackingActivitySQLiteDB.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
        ">;",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

.field final synthetic val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    iput-object p2, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;>;)",
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
    .line 196
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    iget-object v0, v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->val$impList:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Capture;->set(Ljava/lang/Object;)V

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    iget-boolean v0, v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->val$isOldVersion:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    iget-object v0, v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "Compat >> removeImpressionTrackingData"

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 200
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    iget-object v1, v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    iget-object v2, v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    iget-object v0, v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->val$impList:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v4, "tbl_ImpressionTracking"

    # invokes: Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->removeTrackingData(Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    invoke-static {v1, v2, v0, v3, v4}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->access$200(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    iget-object v0, v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iget-object v1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    iget-object v1, v1, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    iget-object v2, v2, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->val$impList:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v5, "tbl_ImpressionTracking"

    # invokes: Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->updateIsDirtyProperpy(Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    invoke-static/range {v0 .. v5}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->access$100(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v6

    .line 207
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impression tracking >> @updateIsDirtyProperpy Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    const/4 v0, 0x0

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
    .line 192
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
