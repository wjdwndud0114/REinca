.class Lcom/igaworks/net/CommonHttpManager$3$1;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/interfaces/HttpCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager$3;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/net/CommonHttpManager$3;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/net/CommonHttpManager$3;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 14
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 709
    if-eqz p1, :cond_0

    :try_start_0
    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 711
    :cond_0
    iget-object v7, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v7, v7, Lcom/igaworks/net/CommonHttpManager$3;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v10, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v10, v10, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    iget-object v11, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v11, v11, Lcom/igaworks/net/CommonHttpManager$3;->val$activity_info_list:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v12, v12, Lcom/igaworks/net/CommonHttpManager$3;->val$imp_info_list:Ljava/util/ArrayList;

    invoke-virtual {v7, v10, v11, v12}, Lcom/igaworks/net/CommonHttpManager;->restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 712
    iget-object v7, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v7, v7, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    const-string v10, "IGAW_QA"

    const-string v11, "responseResult null Error"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v7, v10, v11, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 744
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v7, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v7, v7, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    const-string v10, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ADBrixTracer, tracking response result : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static {v7, v10, v11, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 716
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .local v6, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "BaseTime"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 719
    const-string v7, "BaseTime"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 720
    .local v2, "baseTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 721
    .local v4, "currentMs":J
    sub-long v8, v2, v4

    .line 722
    .local v8, "serverOffset":J
    iget-object v7, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v7, v7, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    invoke-static {v7, v8, v9}, Lcom/igaworks/dao/AppImpressionDAO;->setServerBaseTimeOffset(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 728
    .end local v2    # "baseTime":J
    .end local v4    # "currentMs":J
    .end local v8    # "serverOffset":J
    :cond_2
    :goto_1
    :try_start_2
    const-string v7, "Result"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 729
    iget-object v7, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v7, v7, Lcom/igaworks/net/CommonHttpManager$3;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v10, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v10, v10, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    iget-object v11, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v11, v11, Lcom/igaworks/net/CommonHttpManager$3;->val$activity_info_list:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v12, v12, Lcom/igaworks/net/CommonHttpManager$3;->val$imp_info_list:Ljava/util/ArrayList;

    invoke-virtual {v7, v10, v11, v12}, Lcom/igaworks/net/CommonHttpManager;->restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 730
    iget-object v7, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v7, v7, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    const-string v10, "IGAW_QA"

    const-string v11, "responseResult Result = false"

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v7, v10, v11, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 738
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 739
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 740
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 741
    .local v0, "Trace":[Ljava/lang/StackTraceElement;
    iget-object v7, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v7, v7, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    const-string v10, "IGAW_QA"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v7, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 742
    iget-object v7, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v7, v7, Lcom/igaworks/net/CommonHttpManager$3;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v10, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v10, v10, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    iget-object v11, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v11, v11, Lcom/igaworks/net/CommonHttpManager$3;->val$activity_info_list:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v12, v12, Lcom/igaworks/net/CommonHttpManager$3;->val$imp_info_list:Ljava/util/ArrayList;

    invoke-virtual {v7, v10, v11, v12}, Lcom/igaworks/net/CommonHttpManager;->restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 724
    .end local v0    # "Trace":[Ljava/lang/StackTraceElement;
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 726
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 733
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v7, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v7, v7, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v7

    iget-object v10, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v10, v10, Lcom/igaworks/net/CommonHttpManager$3;->val$activity_info_list:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v11, v11, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    const-string v12, "tbl_AppTracking"

    invoke-virtual {v7, v10, v11, v12}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->removeTrackingActivities(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    .line 734
    iget-object v7, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v7, v7, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v7

    iget-object v10, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v10, v10, Lcom/igaworks/net/CommonHttpManager$3;->val$imp_info_list:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/igaworks/net/CommonHttpManager$3$1;->this$1:Lcom/igaworks/net/CommonHttpManager$3;

    iget-object v11, v11, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    const-string v12, "tbl_ImpressionTracking"

    invoke-virtual {v7, v10, v11, v12}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->removeTrackingActivities(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
