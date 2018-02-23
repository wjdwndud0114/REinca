.class public Lcom/igaworks/dao/TrackingParamDAO;
.super Ljava/lang/Object;
.source "TrackingParamDAO.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityCount(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 181
    :try_start_0
    const-string v3, "activityForTracking"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 183
    .local v1, "tracerSP":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 191
    .end local v1    # "tracerSP":Landroid/content/SharedPreferences;
    :goto_0
    return v2

    .line 187
    .restart local v1    # "tracerSP":Landroid/content/SharedPreferences;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 189
    .end local v1    # "tracerSP":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActivityListParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "act"    # Ljava/lang/String;
    .param p3, "endSessionParam"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const-string v3, "IGAW_QA"

    const-string v4, "Pls update Adbrix SDK to latest version"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :try_start_0
    const-string v3, "activityForTracking"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 47
    .local v18, "tracerSP":Landroid/content/SharedPreferences;
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 48
    .local v20, "trackingEditor":Landroid/content/SharedPreferences$Editor;
    const/16 v19, 0x0

    .line 50
    .local v19, "trackingCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 52
    :cond_0
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    .line 56
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v10, "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v17, "sqlite_activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_5

    .line 59
    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 61
    .local v15, "itForRetry":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 62
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 63
    .local v16, "key":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "activity":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    if-eqz v2, :cond_2

    .line 69
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixManager > send activity for tracking from SP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v2    # "activity":Ljava/lang/String;
    .end local v10    # "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "itForRetry":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "sqlite_activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    .end local v18    # "tracerSP":Landroid/content/SharedPreferences;
    .end local v19    # "trackingCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v20    # "trackingEditor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v11

    .line 129
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .end local v11    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-object v10

    .line 105
    .restart local v10    # "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "itForRetry":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v17    # "sqlite_activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    .restart local v18    # "tracerSP":Landroid/content/SharedPreferences;
    .restart local v19    # "trackingCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v20    # "trackingEditor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    .end local v15    # "itForRetry":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getActivityListParam(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/igaworks/util/bolts_task/Task;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    .line 112
    .local v13, "getAppTrackingTask":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    :try_start_2
    invoke-static {v13}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v13}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 114
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppTrackingTask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/igaworks/util/bolts_task/Task;->getError()Ljava/lang/Exception;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 121
    :catch_1
    move-exception v12

    .line 122
    .local v12, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compat >> getAppTrackingTask error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 116
    .end local v12    # "ex":Ljava/lang/Exception;
    :cond_6
    :try_start_4
    invoke-virtual {v13}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 117
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_3

    .line 118
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igaworks/dao/tracking/TrackingActivityModel;

    invoke-virtual {v3}, Lcom/igaworks/dao/tracking/TrackingActivityModel;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 117
    add-int/lit8 v14, v14, 0x1

    goto :goto_2
.end method

.method public static getImpListParam(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    invoke-static {}, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->getInstance()Lcom/igaworks/dao/CPEPromotionImpressionDAO;

    move-result-object v2

    .line 217
    .local v2, "impressionDao":Lcom/igaworks/dao/CPEPromotionImpressionDAO;
    invoke-virtual {v2, p0}, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->getImpressionData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 219
    .local v1, "imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p0}, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->clearImpressionData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v1    # "imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "impressionDao":Lcom/igaworks/dao/CPEPromotionImpressionDAO;
    :goto_0
    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
