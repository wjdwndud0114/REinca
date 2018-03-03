.class Lcom/igaworks/net/CommonHttpManager$11$1;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/net/CommonHttpManager$11;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/net/CommonHttpManager$11;

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 23
    .param p1, "adInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    .line 1285
    if-nez p1, :cond_1

    const-string v10, ""

    .line 1288
    .local v10, "adid":Ljava/lang/String;
    :goto_0
    const/16 v16, 0x0

    .line 1289
    .local v16, "isOverflowByte":Z
    :try_start_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    .local v20, "remanentErr":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    const-string v4, "reportingCrash"

    const/4 v6, 0x3

    invoke-static {v2, v3, v4, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v5, v2, Lcom/igaworks/net/CommonHttpManager;->TRACKING_REQUEST_URL_FOR_CRASHLTICS:Ljava/lang/String;

    .line 1296
    .local v5, "url":Ljava/lang/String;
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 1297
    .local v18, "pArr":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->val$err:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 1298
    .local v14, "errJObject":Lorg/json/JSONObject;
    if-eqz v16, :cond_2

    .line 1299
    const-string v3, "iga_error"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1300
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1435
    .end local v5    # "url":Ljava/lang/String;
    .end local v14    # "errJObject":Lorg/json/JSONObject;
    .end local v18    # "pArr":Lorg/json/JSONArray;
    .end local v20    # "remanentErr":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :catch_0
    move-exception v13

    .line 1436
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->this$0:Lcom/igaworks/net/CommonHttpManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v4, v4, Lcom/igaworks/net/CommonHttpManager$11;->val$err:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/igaworks/net/CommonHttpManager;->restoreCrashInfo_Common(Landroid/content/Context;Ljava/util/List;)V

    .line 1440
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1285
    .end local v10    # "adid":Ljava/lang/String;
    .end local v16    # "isOverflowByte":Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 1303
    .restart local v5    # "url":Ljava/lang/String;
    .restart local v10    # "adid":Ljava/lang/String;
    .restart local v14    # "errJObject":Lorg/json/JSONObject;
    .restart local v16    # "isOverflowByte":Z
    .restart local v18    # "pArr":Lorg/json/JSONArray;
    .restart local v20    # "remanentErr":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :cond_2
    :try_start_1
    const-string v3, "iga_error"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1304
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 1305
    .local v11, "arrThreadInfos":Lorg/json/JSONArray;
    const-string v21, ""

    .line 1307
    .local v21, "stringExceptionReason":Ljava/lang/String;
    const-string v3, "exception_reason"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1308
    const-string v3, "exception_reason"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1311
    :cond_3
    const-string v3, "thread_information"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1312
    const-string v3, "thread_information"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1315
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$parameter:Lcom/igaworks/core/RequestParameter;

    const-string v4, "iga_error"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v3, v10, v4, v11, v0}, Lcom/igaworks/core/RequestParameter;->getCrashParameter(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1319
    .end local v11    # "arrThreadInfos":Lorg/json/JSONArray;
    .end local v21    # "stringExceptionReason":Ljava/lang/String;
    :cond_5
    const-string v3, "retry_cnt"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1320
    const-string v3, "retry_cnt"

    const-string v4, "retry_cnt"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v14, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1321
    const-string v3, "retry_cnt"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_6

    .line 1322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$err:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1325
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v6, v3

    const-wide v8, 0x40f86a0000000000L    # 100000.0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_0

    .line 1326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    const-string v4, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADBrixTracer, Overflow of limited stringByte, so the remanent crash infos not gonna send to server in this time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v7, v7, Lcom/igaworks/net/CommonHttpManager$11;->val$err:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v3, v4, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1327
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 1332
    .end local v14    # "errJObject":Lorg/json/JSONObject;
    :cond_7
    if-nez v16, :cond_9

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/dao/CrashDAO;->getCrashes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 1335
    .local v12, "crashInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_9

    invoke-interface {v12}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-lez v2, :cond_9

    .line 1338
    :try_start_2
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1339
    .local v19, "pJsonString":Ljava/lang/String;
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1341
    .local v17, "jsonObj":Lorg/json/JSONObject;
    if-eqz v16, :cond_a

    .line 1342
    const-string v3, "iga_error"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1343
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1374
    .end local v17    # "jsonObj":Lorg/json/JSONObject;
    .end local v19    # "pJsonString":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 1375
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 1381
    .end local v12    # "crashInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_9
    if-eqz v16, :cond_f

    .line 1382
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1387
    .local v15, "finalRemanentErr":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total Crash Param "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1390
    :try_start_4
    new-instance v22, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    const/4 v4, 0x1

    .line 1391
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/igaworks/net/CommonHttpManager$11$1$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v15}, Lcom/igaworks/net/CommonHttpManager$11$1$1;-><init>(Lcom/igaworks/net/CommonHttpManager$11$1;Ljava/util/List;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1426
    .local v22, "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1427
    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 1429
    .end local v22    # "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    :catch_2
    move-exception v13

    .line 1430
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->this$0:Lcom/igaworks/net/CommonHttpManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v4, v4, Lcom/igaworks/net/CommonHttpManager$11;->val$err:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/igaworks/net/CommonHttpManager;->restoreCrashInfo_Common(Landroid/content/Context;Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 1346
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v15    # "finalRemanentErr":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v12    # "crashInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "jsonObj":Lorg/json/JSONObject;
    .restart local v19    # "pJsonString":Ljava/lang/String;
    :cond_a
    :try_start_6
    const-string v3, "iga_error"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1347
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 1348
    .restart local v11    # "arrThreadInfos":Lorg/json/JSONArray;
    const-string v21, ""

    .line 1350
    .restart local v21    # "stringExceptionReason":Ljava/lang/String;
    const-string v3, "exception_reason"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1351
    const-string v3, "exception_reason"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1354
    :cond_b
    const-string v3, "thread_information"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1355
    const-string v3, "thread_information"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1357
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$parameter:Lcom/igaworks/core/RequestParameter;

    const-string v4, "iga_error"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v3, v10, v4, v11, v0}, Lcom/igaworks/core/RequestParameter;->getCrashParameter(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1360
    .end local v11    # "arrThreadInfos":Lorg/json/JSONArray;
    .end local v21    # "stringExceptionReason":Ljava/lang/String;
    :cond_d
    const-string v3, "retry_cnt"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1361
    const-string v3, "retry_cnt"

    const-string v4, "retry_cnt"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1362
    const-string v3, "retry_cnt"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_e

    .line 1363
    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1365
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$err:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1367
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v6, v3

    const-wide v8, 0x40f86a0000000000L    # 100000.0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_8

    .line 1368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    const-string v4, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADBrixTracer, Overflow of limited stringByte, so the remanent crash infos not gonna send to server in this time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v7, v7, Lcom/igaworks/net/CommonHttpManager$11;->val$err:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v3, v4, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1369
    const/16 v16, 0x1

    goto/16 :goto_3

    .line 1384
    .end local v12    # "crashInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "jsonObj":Lorg/json/JSONObject;
    .end local v19    # "pJsonString":Ljava/lang/String;
    :cond_f
    :try_start_7
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .restart local v15    # "finalRemanentErr":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    goto/16 :goto_4
.end method
