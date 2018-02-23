.class Lcom/igaworks/net/CommonHttpManager$2$1;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/interfaces/HttpCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager$2;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/net/CommonHttpManager$2;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/net/CommonHttpManager$2;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 51
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 399
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$2;->val$activity_info_list:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/igaworks/dao/ActivityInfoDAO;->restoreReferralTrackingInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    const-string v4, "ADBrixTracer, responseResult null Error"

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->this$0:Lcom/igaworks/net/CommonHttpManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/igaworks/net/CommonHttpManager;->setOnReferrerCall(Z)V

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->this$0:Lcom/igaworks/net/CommonHttpManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/igaworks/net/CommonHttpManager;->setOnCPIReferrerCall(Z)V

    .line 616
    :goto_0
    return-void

    .line 403
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/dao/AppImpressionDAO;->setSynAdbrix(Landroid/content/Context;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, getReferral response String : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v12

    .line 407
    .local v12, "atParam":Lcom/igaworks/core/RequestParameter;
    new-instance v33, Lorg/json/JSONObject;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    .local v33, "jsonObject":Lorg/json/JSONObject;
    :try_start_2
    const-string v2, "BaseTime"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    const-string v2, "BaseTime"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 411
    .local v14, "baseTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 412
    .local v24, "currentMs":J
    sub-long v48, v14, v24

    .line 413
    .local v48, "serverOffset":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    move-wide/from16 v0, v48

    invoke-static {v2, v0, v1}, Lcom/igaworks/dao/AppImpressionDAO;->setServerBaseTimeOffset(Landroid/content/Context;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    .end local v14    # "baseTime":J
    .end local v24    # "currentMs":J
    .end local v48    # "serverOffset":J
    :cond_1
    :goto_1
    const-wide/16 v44, -0x1

    .line 420
    .local v44, "referralKey":J
    :try_start_3
    const-string v27, ""

    .line 421
    .local v27, "deeplink":Ljava/lang/String;
    const-string v2, "Result"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 422
    const-string v2, "Data"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 423
    const-string v2, "Data"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 424
    .local v23, "dataInfo":Ljava/lang/String;
    new-instance v26, Lorg/json/JSONObject;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 425
    .local v26, "dataObject":Lorg/json/JSONObject;
    const/16 v21, 0x0

    .line 426
    .local v21, "conversionHistory":Lorg/json/JSONObject;
    const-string v2, "conversion_history"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "conversion_history"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 427
    new-instance v21, Lorg/json/JSONObject;

    .end local v21    # "conversionHistory":Lorg/json/JSONObject;
    const-string v2, "conversion_history"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 429
    .restart local v21    # "conversionHistory":Lorg/json/JSONObject;
    :cond_2
    new-instance v18, Lorg/json/JSONArray;

    const-string v2, "conversion_key_list"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 430
    .local v18, "conversionArray":Lorg/json/JSONArray;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v20, "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/Hashtable;

    invoke-direct/range {v19 .. v19}, Ljava/util/Hashtable;-><init>()V

    .line 432
    .local v19, "conversionCacheHistoryList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_6

    .line 433
    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v34

    .line 434
    .local v34, "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 435
    const/4 v2, -0x1

    move/from16 v0, v34

    if-eq v0, v2, :cond_4

    .line 438
    invoke-virtual {v12}, Lcom/igaworks/core/RequestParameter;->getConversionCache()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 439
    const-wide/16 v16, -0x1

    .line 440
    .local v16, "completeTime":J
    if-eqz v21, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 442
    :cond_3
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .end local v16    # "completeTime":J
    :cond_4
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2

    .line 415
    .end local v18    # "conversionArray":Lorg/json/JSONArray;
    .end local v19    # "conversionCacheHistoryList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "conversionHistory":Lorg/json/JSONObject;
    .end local v23    # "dataInfo":Ljava/lang/String;
    .end local v26    # "dataObject":Lorg/json/JSONObject;
    .end local v27    # "deeplink":Ljava/lang/String;
    .end local v29    # "i":I
    .end local v34    # "key":I
    .end local v44    # "referralKey":J
    :catch_0
    move-exception v28

    .line 417
    .local v28, "e":Ljava/lang/Exception;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 606
    .end local v12    # "atParam":Lcom/igaworks/core/RequestParameter;
    .end local v28    # "e":Ljava/lang/Exception;
    .end local v33    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v28

    .line 607
    .restart local v28    # "e":Ljava/lang/Exception;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$2;->val$activity_info_list:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/igaworks/dao/ActivityInfoDAO;->restoreReferralTrackingInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 608
    if-eqz v28, :cond_5

    .line 609
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->printStackTrace()V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 613
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->this$0:Lcom/igaworks/net/CommonHttpManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/igaworks/net/CommonHttpManager;->setOnReferrerCall(Z)V

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->this$0:Lcom/igaworks/net/CommonHttpManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/igaworks/net/CommonHttpManager;->setOnCPIReferrerCall(Z)V

    goto/16 :goto_0

    .line 449
    .end local v28    # "e":Ljava/lang/Exception;
    .restart local v12    # "atParam":Lcom/igaworks/core/RequestParameter;
    .restart local v18    # "conversionArray":Lorg/json/JSONArray;
    .restart local v19    # "conversionCacheHistoryList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "conversionHistory":Lorg/json/JSONObject;
    .restart local v23    # "dataInfo":Ljava/lang/String;
    .restart local v26    # "dataObject":Lorg/json/JSONObject;
    .restart local v27    # "deeplink":Ljava/lang/String;
    .restart local v29    # "i":I
    .restart local v33    # "jsonObject":Lorg/json/JSONObject;
    .restart local v44    # "referralKey":J
    :cond_6
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->this$0:Lcom/igaworks/net/CommonHttpManager;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v12}, Lcom/igaworks/net/CommonHttpManager;->setConversionCacheWithOutCommit(Ljava/util/ArrayList;Lcom/igaworks/core/RequestParameter;)V

    .line 451
    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->this$0:Lcom/igaworks/net/CommonHttpManager;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/igaworks/net/CommonHttpManager;->setConversionCacheHistoryWithOneCommit(Ljava/util/Map;)V

    .line 454
    :cond_8
    const-string v2, "referralKey"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v44

    .line 455
    const-string v2, "deeplink"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 456
    const-string v2, "deeplink"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v27

    .line 461
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://igaworks.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3f

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v30

    .line 465
    .local v30, "iUri":Landroid/net/Uri;
    :goto_3
    if-eqz v30, :cond_9

    .line 466
    :try_start_7
    const-string v2, "ck"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 467
    .local v22, "conversionKey":I
    invoke-virtual {v12}, Lcom/igaworks/core/RequestParameter;->getProcessedConversions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 468
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deferrer Link: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v27, ""
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 478
    .end local v22    # "conversionKey":I
    .end local v30    # "iUri":Landroid/net/Uri;
    :cond_9
    :goto_4
    :try_start_8
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchDeferredLinkData >> referralKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v44

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Deeplink: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v13, -0x1

    .line 482
    .local v13, "channelType":I
    const-string v2, "channel_type"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "channel_type"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 483
    const-string v2, "channel_type"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 486
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > referralKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 488
    const-wide/16 v2, -0x1

    cmp-long v2, v44, v2

    if-eqz v2, :cond_b

    .line 489
    move-wide/from16 v0, v44

    invoke-virtual {v12, v0, v1}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_ReferralKey(J)V

    .line 491
    :cond_b
    const-string v2, "subreferralKey"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 492
    const-string v2, "subreferralKey"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 493
    .local v50, "subreferralKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > subreferralKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 494
    move-object/from16 v0, v50

    invoke-virtual {v12, v0}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_SubReferralKey(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 498
    .end local v50    # "subreferralKey":Ljava/lang/String;
    :cond_c
    :try_start_9
    const-string v2, "referral_data"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 499
    const-string v2, "referral_data"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 500
    .local v46, "referral_data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > referral_data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 501
    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_referral_data(Ljava/lang/String;)V

    .line 503
    .end local v46    # "referral_data":Ljava/lang/String;
    :cond_d
    const-string v2, "reengagement_datetime"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "reengagement_datetime"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 504
    const-string v2, "reengagement_datetime"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 505
    .local v37, "reEngDatetime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > reengagement_datetime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 506
    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_reengagment_datetime(Ljava/lang/String;)V

    .line 508
    .end local v37    # "reEngDatetime":Ljava/lang/String;
    :cond_e
    const-string v2, "reengagement_conversion_key"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 509
    const-string v2, "reengagement_conversion_key"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v40

    .line 510
    .local v40, "reengagement_conversion_key":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > REENGAGEMENT_CONVERSION_KEY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 511
    move-wide/from16 v0, v40

    invoke-virtual {v12, v0, v1}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_reengagement_conversion_key(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 519
    .end local v40    # "reengagement_conversion_key":J
    :cond_f
    :goto_5
    :try_start_a
    const-string v2, "reengagement_data"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 520
    const-string v2, "reengagement_data"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 521
    .local v42, "reengagement_data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > POSTBACK_REENGAGEMENT_DATA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 522
    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_reengagement_data(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 529
    .end local v42    # "reengagement_data":Ljava/lang/String;
    :cond_10
    :goto_6
    :try_start_b
    const-string v2, "last_referral_data"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 530
    const-string v2, "last_referral_data"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 531
    .local v35, "last_referral_data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > LAST_REFERRAL_DATA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 532
    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_last_referral_data(Ljava/lang/String;)V

    .line 534
    .end local v35    # "last_referral_data":Ljava/lang/String;
    :cond_11
    const-string v2, "last_referral_datetime"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 535
    const-string v2, "last_referral_datetime"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 536
    .local v36, "last_referral_datetime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > LAST_REFERRAL_DATETIME : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 537
    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_last_referral_datetime(Ljava/lang/String;)V

    .line 539
    .end local v36    # "last_referral_datetime":Ljava/lang/String;
    :cond_12
    const-string v2, "last_referral_key"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 540
    const-string v2, "last_referral_key"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v38

    .line 541
    .local v38, "last_referral_key":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > LAST_REFERRAL_KEY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 542
    move-wide/from16 v0, v38

    invoke-virtual {v12, v0, v1}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_last_referral_key(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 549
    .end local v38    # "last_referral_key":J
    :cond_13
    :goto_7
    :try_start_c
    const-string v2, "refusn"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "refusn"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 550
    const-string v2, "refusn"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 551
    .local v43, "refUsn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > refusn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 552
    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_Refusn(Ljava/lang/String;)V

    .line 555
    .end local v43    # "refUsn":Ljava/lang/String;
    :cond_14
    const-string v2, "shard_no"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "shard_no"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 556
    const-string v2, "shard_no"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v47

    .line 557
    .local v47, "shardNo":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > shard_no : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 558
    move/from16 v0, v47

    invoke-virtual {v12, v0}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_ShardNo(I)V

    .line 561
    .end local v47    # "shardNo":I
    :cond_15
    const-string v2, "install_datetime"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "install_datetime"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 562
    const-string v2, "install_datetime"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 563
    .local v31, "installDatetime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > install_datetime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 564
    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_install_datetime(Ljava/lang/String;)V

    .line 567
    .end local v31    # "installDatetime":Ljava/lang/String;
    :cond_16
    const/4 v2, -0x1

    if-eq v13, v2, :cond_17

    .line 568
    invoke-virtual {v12, v13}, Lcom/igaworks/core/RequestParameter;->setChannelType(I)V

    .line 570
    :cond_17
    const-string v2, "user_no"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 572
    .local v10, "adbrix_user_no":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, callbackReferrerADBrix > adbrix_user_no : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v12, v10, v11, v2, v3}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo(JJ)V

    .line 576
    .end local v10    # "adbrix_user_no":J
    .end local v13    # "channelType":I
    .end local v18    # "conversionArray":Lorg/json/JSONArray;
    .end local v19    # "conversionCacheHistoryList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "conversionHistory":Lorg/json/JSONObject;
    .end local v23    # "dataInfo":Ljava/lang/String;
    .end local v26    # "dataObject":Lorg/json/JSONObject;
    .end local v29    # "i":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/dao/ReferralInfoDAO;->clearOnReceiveReferralFlag(Landroid/content/Context;)V

    .line 578
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getActivityListener()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 579
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getActivityListener()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/igaworks/interfaces/CommonActivityListener;

    .line 580
    .local v32, "item":Lcom/igaworks/interfaces/CommonActivityListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Lcom/igaworks/interfaces/CommonActivityListener;->onGetReferralResponse(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    .line 613
    .end local v12    # "atParam":Lcom/igaworks/core/RequestParameter;
    .end local v27    # "deeplink":Ljava/lang/String;
    .end local v32    # "item":Lcom/igaworks/interfaces/CommonActivityListener;
    .end local v33    # "jsonObject":Lorg/json/JSONObject;
    .end local v44    # "referralKey":J
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$2;->this$0:Lcom/igaworks/net/CommonHttpManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/igaworks/net/CommonHttpManager;->setOnReferrerCall(Z)V

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$2;->this$0:Lcom/igaworks/net/CommonHttpManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/igaworks/net/CommonHttpManager;->setOnCPIReferrerCall(Z)V

    throw v2

    .line 462
    .restart local v12    # "atParam":Lcom/igaworks/core/RequestParameter;
    .restart local v18    # "conversionArray":Lorg/json/JSONArray;
    .restart local v19    # "conversionCacheHistoryList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "conversionHistory":Lorg/json/JSONObject;
    .restart local v23    # "dataInfo":Ljava/lang/String;
    .restart local v26    # "dataObject":Lorg/json/JSONObject;
    .restart local v27    # "deeplink":Ljava/lang/String;
    .restart local v29    # "i":I
    .restart local v33    # "jsonObject":Lorg/json/JSONObject;
    .restart local v44    # "referralKey":J
    :catch_2
    move-exception v28

    .line 463
    .restart local v28    # "e":Ljava/lang/Exception;
    const/16 v30, 0x0

    .restart local v30    # "iUri":Landroid/net/Uri;
    goto/16 :goto_3

    .line 471
    .end local v28    # "e":Ljava/lang/Exception;
    .restart local v22    # "conversionKey":I
    :cond_19
    :try_start_d
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/igaworks/core/RequestParameter;->setProcessedConversions(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_4

    .line 475
    .end local v22    # "conversionKey":I
    :catch_3
    move-exception v2

    goto/16 :goto_4

    .line 513
    .end local v30    # "iUri":Landroid/net/Uri;
    .restart local v13    # "channelType":I
    :catch_4
    move-exception v28

    .line 515
    .restart local v28    # "e":Ljava/lang/Exception;
    :try_start_e
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "POSTBACK_REFERRER_DATA error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 524
    .end local v28    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v28

    .line 525
    .restart local v28    # "e":Ljava/lang/Exception;
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "POSTBACK_REENGAGEMENT_DATA error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 545
    .end local v28    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v28

    .line 546
    .restart local v28    # "e":Ljava/lang/Exception;
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LAST_REFERRAL_DATA error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 583
    .end local v13    # "channelType":I
    .end local v18    # "conversionArray":Lorg/json/JSONArray;
    .end local v19    # "conversionCacheHistoryList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "conversionHistory":Lorg/json/JSONObject;
    .end local v23    # "dataInfo":Ljava/lang/String;
    .end local v26    # "dataObject":Lorg/json/JSONObject;
    .end local v28    # "e":Ljava/lang/Exception;
    .end local v29    # "i":I
    :cond_1a
    sget-object v2, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    if-nez v2, :cond_1b

    .line 584
    new-instance v2, Lcom/igaworks/net/CommonHttpManager;

    invoke-direct {v2}, Lcom/igaworks/net/CommonHttpManager;-><init>()V

    sput-object v2, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    .line 586
    :cond_1b
    invoke-static {}, Lcom/igaworks/impl/InternalAction;->getInstance()Lcom/igaworks/impl/InternalAction;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    sget-boolean v4, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    const-string v6, "n/a"

    const-string v7, "n/a"

    const-wide/16 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/igaworks/impl/InternalAction;->trackingForAdbrixCall(Landroid/content/Context;ZLcom/igaworks/net/CommonHttpManager;Ljava/lang/String;Ljava/lang/String;J)V

    .line 589
    if-eqz v27, :cond_1c

    const-string v2, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "null"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    # getter for: Lcom/igaworks/net/CommonHttpManager;->isReturnDL:Z
    invoke-static {}, Lcom/igaworks/net/CommonHttpManager;->access$100()Z

    move-result v2

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/dao/AppImpressionDAO;->getDeferrerlink(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 590
    const/4 v2, 0x1

    # setter for: Lcom/igaworks/net/CommonHttpManager;->isReturnDL:Z
    invoke-static {v2}, Lcom/igaworks/net/CommonHttpManager;->access$102(Z)Z

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/igaworks/dao/AppImpressionDAO;->setDeferrerlink(Landroid/content/Context;Ljava/lang/String;)V

    .line 592
    # getter for: Lcom/igaworks/net/CommonHttpManager;->mDeferredLinkListener:Lcom/igaworks/interfaces/DeferredLinkListener;
    invoke-static {}, Lcom/igaworks/net/CommonHttpManager;->access$200()Lcom/igaworks/interfaces/DeferredLinkListener;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 593
    # getter for: Lcom/igaworks/net/CommonHttpManager;->mDeferredLinkListener:Lcom/igaworks/interfaces/DeferredLinkListener;
    invoke-static {}, Lcom/igaworks/net/CommonHttpManager;->access$200()Lcom/igaworks/interfaces/DeferredLinkListener;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v2, v0}, Lcom/igaworks/interfaces/DeferredLinkListener;->onReceiveDeeplink(Ljava/lang/String;)V

    .line 594
    const/4 v2, 0x0

    # setter for: Lcom/igaworks/net/CommonHttpManager;->mDeferredLinkListener:Lcom/igaworks/interfaces/DeferredLinkListener;
    invoke-static {v2}, Lcom/igaworks/net/CommonHttpManager;->access$202(Lcom/igaworks/interfaces/DeferredLinkListener;)Lcom/igaworks/interfaces/DeferredLinkListener;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 613
    :cond_1c
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->this$0:Lcom/igaworks/net/CommonHttpManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/igaworks/net/CommonHttpManager;->setOnReferrerCall(Z)V

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->this$0:Lcom/igaworks/net/CommonHttpManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/igaworks/net/CommonHttpManager;->setOnCPIReferrerCall(Z)V

    goto/16 :goto_0

    .line 596
    :cond_1d
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    const-string v4, "mDeferredLinkListener is not null"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_9

    .line 600
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$2;->val$activity_info_list:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/igaworks/dao/ActivityInfoDAO;->restoreReferralTrackingInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$2$1;->this$1:Lcom/igaworks/net/CommonHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$2;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    const-string v4, "callbackReferrerADBrix result false"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_9
.end method
