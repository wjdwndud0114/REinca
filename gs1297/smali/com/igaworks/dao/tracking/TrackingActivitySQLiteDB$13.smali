.class Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;
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
.field final synthetic this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

.field final synthetic val$raw_list:Lcom/igaworks/util/bolts_task/Capture;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iput-object p2, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;->val$raw_list:Lcom/igaworks/util/bolts_task/Capture;

    iput-object p3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 5
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
    .line 334
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;->val$raw_list:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Capture;->set(Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;->val$raw_list:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x2ee

    if-le v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "ADBrixManager > too old tracking activities will be removed"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 338
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;->val$raw_list:Lcom/igaworks/util/bolts_task/Capture;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Capture;->set(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iget-object v1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    # invokes: Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->clearTrackingActivities(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    invoke-static {v0, v1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->access$500(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

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
    .line 329
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$13;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
