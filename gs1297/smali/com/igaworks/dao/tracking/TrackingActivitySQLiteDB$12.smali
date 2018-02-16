.class Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;
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

.field final synthetic val$act:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

.field final synthetic val$endSessionParam:J

.field final synthetic val$filter_list:Lcom/igaworks/util/bolts_task/Capture;

.field final synthetic val$group:Ljava/lang/String;

.field final synthetic val$raw_list:Lcom/igaworks/util/bolts_task/Capture;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/Capture;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;JLcom/igaworks/util/bolts_task/Capture;)V
    .locals 1
    .param p1, "this$0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iput-object p2, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$raw_list:Lcom/igaworks/util/bolts_task/Capture;

    iput-object p3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$group:Ljava/lang/String;

    iput-object p4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$act:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    iput-wide p7, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$endSessionParam:J

    iput-object p9, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$filter_list:Lcom/igaworks/util/bolts_task/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 13
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
    const/4 v12, 0x1

    .line 347
    iget-object v8, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$raw_list:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v8}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 348
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v2, "filtered_activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 351
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/igaworks/dao/tracking/TrackingActivityModel;

    .line 352
    .local v5, "mTrackingActivityModel":Lcom/igaworks/dao/tracking/TrackingActivityModel;
    invoke-virtual {v5}, Lcom/igaworks/dao/tracking/TrackingActivityModel;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "activity":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 358
    .local v7, "valObj":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$group:Ljava/lang/String;

    const-string v9, "session"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$act:Ljava/lang/String;

    const-string v9, "end"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v12, :cond_0

    const-string v8, "group"

    .line 359
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "group"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "group"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "session"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "activity"

    .line 360
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "end"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 362
    iget-object v8, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$context:Landroid/content/Context;

    const-string v9, "IGAW_QA"

    const-string v10, "ADBrixManager > endSession called consecutively. remove prev endSession"

    const/4 v11, 0x3

    invoke-static {v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    iget-object v8, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iget-object v9, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$context:Landroid/content/Context;

    iget-object v10, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v11, "tbl_AppTracking"

    # invokes: Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->removeTrackingData(Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    invoke-static {v8, v9, v4, v10, v11}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->access$200(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    iget-object v8, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$group:Ljava/lang/String;

    const-string v9, "session"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$act:Ljava/lang/String;

    const-string v9, "start"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Lcom/igaworks/dao/tracking/TrackingActivityModel;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "_session_end"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 368
    const-string v8, "param"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "param"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "param"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$endSessionParam:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 369
    iget-object v8, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$context:Landroid/content/Context;

    const-string v9, "IGAW_QA"

    const-string v10, "ADBrixManager > startSession - skip adding end session to tracking param : keep session!!!"

    const/4 v11, 0x3

    invoke-static {v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 370
    iget-object v8, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iget-object v9, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$context:Landroid/content/Context;

    iget-object v10, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v11, "tbl_AppTracking"

    # invokes: Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->removeSingleActivity(Landroid/content/Context;Lcom/igaworks/dao/tracking/TrackingActivityModel;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    invoke-static {v8, v9, v5, v10, v11}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->access$400(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Landroid/content/Context;Lcom/igaworks/dao/tracking/TrackingActivityModel;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .end local v7    # "valObj":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 375
    .restart local v7    # "valObj":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 377
    .end local v7    # "valObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iget-object v9, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$context:Landroid/content/Context;

    iget-object v10, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v11, "tbl_AppTracking"

    # invokes: Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->removeSingleActivity(Landroid/content/Context;Lcom/igaworks/dao/tracking/TrackingActivityModel;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    invoke-static {v8, v9, v5, v10, v11}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->access$400(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Landroid/content/Context;Lcom/igaworks/dao/tracking/TrackingActivityModel;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v8, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$context:Landroid/content/Context;

    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error when sending tracking data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1

    .line 382
    .end local v0    # "activity":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "mTrackingActivityModel":Lcom/igaworks/dao/tracking/TrackingActivityModel;
    :cond_2
    iget-object v8, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->val$filter_list:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v8, v2}, Lcom/igaworks/util/bolts_task/Capture;->set(Ljava/lang/Object;)V

    .line 383
    invoke-static {v6}, Lcom/igaworks/util/bolts_task/Task;->whenAll(Ljava/util/Collection;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v8

    return-object v8
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$12;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
