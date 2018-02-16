.class Lcom/igaworks/impl/CommonFrameworkImpl$1;
.super Ljava/lang/Object;
.source "CommonFrameworkImpl.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/CommonFrameworkImpl;->startSession(Landroid/content/Context;)V
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
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/CommonFrameworkImpl;


# direct methods
.method constructor <init>(Lcom/igaworks/impl/CommonFrameworkImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/CommonFrameworkImpl;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$1;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 567
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activityForTracking"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 568
    .local v21, "tracerSP":Landroid/content/SharedPreferences;
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    .line 569
    .local v23, "trackingEditor":Landroid/content/SharedPreferences$Editor;
    const/16 v22, 0x0

    .line 570
    .local v22, "trackingCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 571
    :cond_0
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    .line 573
    :cond_1
    if-eqz v22, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 574
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compat: Copy app tracking from SP to SQLite. Size:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 575
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 577
    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 578
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 579
    .local v18, "key":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 580
    .local v11, "activity":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 581
    if-eqz v11, :cond_2

    .line 585
    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 586
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v11}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->addTrackingActivityAsyn(Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 632
    .end local v11    # "activity":Ljava/lang/String;
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v18    # "key":Ljava/lang/String;
    .end local v21    # "tracerSP":Landroid/content/SharedPreferences;
    .end local v22    # "trackingCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v23    # "trackingEditor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v12

    .line 633
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copy error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 639
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 588
    .restart local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v21    # "tracerSP":Landroid/content/SharedPreferences;
    .restart local v22    # "trackingCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v23    # "trackingEditor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    :try_start_1
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 592
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_5
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "promotion_impression_sp"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 593
    .local v20, "promotionImpressionSP":Landroid/content/SharedPreferences;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    .line 594
    .local v19, "promotionImpressionEditor":Landroid/content/SharedPreferences$Editor;
    const/4 v15, 0x0

    .line 595
    .local v15, "impressCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v15, :cond_6

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_7

    .line 596
    :cond_6
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 598
    :cond_7
    if-eqz v15, :cond_3

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 599
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compat: Copy impression from SP to SQLite. Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 600
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 602
    .local v17, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_8
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 603
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 604
    .restart local v18    # "key":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 605
    .restart local v11    # "activity":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 606
    if-eqz v11, :cond_8

    .line 610
    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-nez v2, :cond_8

    .line 611
    const/4 v13, 0x0

    .line 613
    .local v13, "impObj":Lorg/json/JSONObject;
    :try_start_2
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 614
    .end local v13    # "impObj":Lorg/json/JSONObject;
    .local v14, "impObj":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 615
    .local v9, "isFirstTime":Ljava/lang/Boolean;
    const/4 v8, 0x0

    .line 616
    .local v8, "conversionKey":Ljava/lang/String;
    :try_start_3
    const-string v2, "isFirstTime"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 617
    const-string v2, "isFirstTime"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 618
    :cond_9
    const-string v2, "conversion_key"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 619
    const-string v2, "conversion_key"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 620
    :cond_a
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP_CAMPAIGN_KEY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "campaign_key"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IP_RESOURCE_KEY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "resource_key"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IP_SPACE_KEY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "space_key"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IP_CREATED_AT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "created_at"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isFirstTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " conversionKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 621
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v2

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "campaign_key"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "resource_key"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "space_key"

    .line 622
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "created_at"

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 621
    invoke-virtual/range {v2 .. v9}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->setImpressionData(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/igaworks/util/bolts_task/Task;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 623
    :catch_1
    move-exception v12

    move-object v13, v14

    .line 624
    .end local v8    # "conversionKey":Ljava/lang/String;
    .end local v9    # "isFirstTime":Ljava/lang/Boolean;
    .end local v14    # "impObj":Lorg/json/JSONObject;
    .local v12, "e":Lorg/json/JSONException;
    .restart local v13    # "impObj":Lorg/json/JSONObject;
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartSession: Impression Compat error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 635
    .end local v11    # "activity":Ljava/lang/String;
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v13    # "impObj":Lorg/json/JSONObject;
    .end local v15    # "impressCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v17    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "promotionImpressionEditor":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "promotionImpressionSP":Landroid/content/SharedPreferences;
    .end local v21    # "tracerSP":Landroid/content/SharedPreferences;
    .end local v22    # "trackingCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v23    # "trackingEditor":Landroid/content/SharedPreferences$Editor;
    :catch_2
    move-exception v10

    .line 636
    .local v10, "Err":Ljava/lang/OutOfMemoryError;
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal Update >> OOM Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 628
    .end local v10    # "Err":Ljava/lang/OutOfMemoryError;
    .restart local v15    # "impressCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v17    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v19    # "promotionImpressionEditor":Landroid/content/SharedPreferences$Editor;
    .restart local v20    # "promotionImpressionSP":Landroid/content/SharedPreferences;
    .restart local v21    # "tracerSP":Landroid/content/SharedPreferences;
    .restart local v22    # "trackingCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v23    # "trackingEditor":Landroid/content/SharedPreferences$Editor;
    :cond_b
    :try_start_5
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 623
    .restart local v11    # "activity":Ljava/lang/String;
    .restart local v13    # "impObj":Lorg/json/JSONObject;
    .restart local v18    # "key":Ljava/lang/String;
    :catch_3
    move-exception v12

    goto :goto_3
.end method
