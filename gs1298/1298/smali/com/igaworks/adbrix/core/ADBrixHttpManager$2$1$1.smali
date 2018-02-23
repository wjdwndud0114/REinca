.class Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;
.super Ljava/lang/Object;
.source "ADBrixHttpManager.java"

# interfaces
.implements Lcom/igaworks/interfaces/HttpCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 31
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 377
    const/16 v26, 0x0

    # setter for: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->onGetSchedule:Z
    invoke-static/range {v26 .. v26}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$602(Z)Z

    .line 380
    if-nez p1, :cond_1

    .line 381
    :try_start_0
    new-instance v26, Ljava/lang/Exception;

    const-string v27, "responseResult null Error"

    invoke-direct/range {v26 .. v27}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :catch_0
    move-exception v14

    .line 511
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 512
    const/16 v26, 0x0

    # setter for: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->onGetSchedule:Z
    invoke-static/range {v26 .. v26}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$602(Z)Z

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "IGAW_QA"

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 515
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "IGAW_QA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ADBrixTracer, get schedule response result : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x3

    invoke-static/range {v26 .. v29}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    :try_start_2
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 387
    .local v19, "jsonObject":Lorg/json/JSONObject;
    const-string v26, "BaseTime"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 388
    const-string v26, "BaseTime"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 389
    .local v10, "baseTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 390
    .local v12, "currentMs":J
    sub-long v22, v10, v12

    .line 391
    .local v22, "serverOffset":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/igaworks/dao/AppImpressionDAO;->setServerBaseTimeOffset(Landroid/content/Context;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 398
    .end local v10    # "baseTime":J
    .end local v12    # "currentMs":J
    .end local v19    # "jsonObject":Lorg/json/JSONObject;
    .end local v22    # "serverOffset":J
    :cond_2
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/igaworks/adbrix/json/JSON2ScheduleConverter;->json2ScheduleV2(Landroid/content/Context;Ljava/lang/String;)Lcom/igaworks/adbrix/model/ScheduleContainer;

    move-result-object v26

    sput-object v26, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "IGAW_QA"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ADBrixTracer, schedule received, local cache: "

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v26, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-eqz v26, :cond_a

    const-string v26, "exist"

    :goto_2
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v29, 0x3

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 402
    :try_start_4
    sget-object v26, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/Schedule;->getEngagements()Ljava/util/List;

    move-result-object v17

    .line 403
    .local v17, "engagementList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Engagement;>;"
    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_4

    .line 404
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_3
    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/igaworks/adbrix/model/Engagement;

    .line 405
    .local v16, "engagement":Lcom/igaworks/adbrix/model/Engagement;
    invoke-virtual/range {v16 .. v16}, Lcom/igaworks/adbrix/model/Engagement;->isAllowDuplication()Z

    move-result v9

    .line 406
    .local v9, "allowDuplication":Z
    if-eqz v9, :cond_3

    .line 407
    invoke-virtual/range {v16 .. v16}, Lcom/igaworks/adbrix/model/Engagement;->getParentConversionKey()I

    move-result v8

    .line 408
    .local v8, "ParentConversionKey":I
    invoke-virtual/range {v16 .. v16}, Lcom/igaworks/adbrix/model/Engagement;->getConversionKey()I

    move-result v6

    .line 409
    .local v6, "ConversionKey":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$parameter:Lcom/igaworks/core/RequestParameter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v8}, Lcom/igaworks/core/RequestParameter;->setAllowDuplicationConversion(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 414
    .end local v6    # "ConversionKey":I
    .end local v8    # "ParentConversionKey":I
    .end local v9    # "allowDuplication":Z
    .end local v16    # "engagement":Lcom/igaworks/adbrix/model/Engagement;
    .end local v17    # "engagementList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Engagement;>;"
    :catch_1
    move-exception v14

    .line 415
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v26, "IGAW_QA"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Update allowDuplication list error: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 420
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_6
    sget-object v26, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/Schedule;->getReEngagement()Lcom/igaworks/adbrix/model/ReEngagement;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/ReEngagement;->getDailyPlay()Ljava/util/List;

    move-result-object v7

    .line 421
    .local v7, "DailyPlayStepList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/DailyPlay;>;"
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_5

    .line 422
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/igaworks/adbrix/model/DailyPlay;

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/DailyPlay;->getPlayTime()I

    move-result v25

    .line 423
    .local v25, "waitTime":I
    const-string v26, "IGAW_QA"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DL Play time = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->setPlayTime(Landroid/content/Context;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 429
    .end local v7    # "DailyPlayStepList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/DailyPlay;>;"
    .end local v25    # "waitTime":I
    :cond_5
    :goto_4
    :try_start_7
    sget-object v26, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->onGetScheduleEvent:Lcom/igaworks/adbrix/core/OnGetSchedule;

    if-eqz v26, :cond_6

    sget-object v26, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->onGetScheduleEvent:Lcom/igaworks/adbrix/core/OnGetSchedule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-interface/range {v26 .. v28}, Lcom/igaworks/adbrix/core/OnGetSchedule;->onGetSchedule(Landroid/content/Context;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 436
    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v20

    .line 439
    .local v20, "parameter":Lcom/igaworks/core/RequestParameter;
    invoke-virtual/range {v20 .. v20}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v26

    const-wide/16 v28, -0x1

    cmp-long v26, v26, v28

    if-eqz v26, :cond_7

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->restoreCPEAction(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;)V

    .line 445
    :cond_7
    sget-object v26, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-eqz v26, :cond_0

    .line 448
    sget-object v26, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v26

    if-eqz v26, :cond_8

    sget-object v26, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/Schedule;->getMedia()Lcom/igaworks/adbrix/model/Media;

    move-result-object v26

    if-eqz v26, :cond_8

    sget-object v26, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/Schedule;->getMedia()Lcom/igaworks/adbrix/model/Media;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v26

    if-eqz v26, :cond_8

    .line 450
    sget-object v26, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/Schedule;->getMedia()Lcom/igaworks/adbrix/model/Media;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v24

    .line 451
    .local v24, "theme":Lcom/igaworks/adbrix/model/Theme;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v24}, Lcom/igaworks/adbrix/model/Theme;->getCirclePlayBtn()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static/range {v26 .. v28}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$700(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v24}, Lcom/igaworks/adbrix/model/Theme;->getCloseBtn()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static/range {v26 .. v28}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$700(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v24}, Lcom/igaworks/adbrix/model/Theme;->getMissionCheckOff()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static/range {v26 .. v28}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$700(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v24}, Lcom/igaworks/adbrix/model/Theme;->getMissionCheckOn()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static/range {v26 .. v28}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$700(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v24}, Lcom/igaworks/adbrix/model/Theme;->getPlayBtnAreaBG()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static/range {v26 .. v28}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$700(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v24}, Lcom/igaworks/adbrix/model/Theme;->getSelectedAppArrow()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static/range {v26 .. v28}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$700(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v24}, Lcom/igaworks/adbrix/model/Theme;->getSlideLeftBtn()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static/range {v26 .. v28}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$700(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v24}, Lcom/igaworks/adbrix/model/Theme;->getSlideRightBtn()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static/range {v26 .. v28}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$700(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v24}, Lcom/igaworks/adbrix/model/Theme;->getSquarePlayBtn()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static/range {v26 .. v28}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$700(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v24}, Lcom/igaworks/adbrix/model/Theme;->getStepArrow()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static/range {v26 .. v28}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$700(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    .end local v24    # "theme":Lcom/igaworks/adbrix/model/Theme;
    :cond_8
    sget-object v26, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/igaworks/adbrix/model/Schedule;->getPromotions()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_9
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/igaworks/adbrix/model/Promotion;

    .line 465
    .local v21, "promotion":Lcom/igaworks/adbrix/model/Promotion;
    invoke-virtual/range {v21 .. v21}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v27

    if-eqz v27, :cond_9

    .line 473
    :try_start_9
    invoke-virtual/range {v21 .. v21}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getSlide()Lcom/igaworks/adbrix/model/SlideModel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/SlideModel;->getResource()Ljava/util/List;

    move-result-object v27

    if-eqz v27, :cond_b

    .line 474
    invoke-virtual/range {v21 .. v21}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getSlide()Lcom/igaworks/adbrix/model/SlideModel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/SlideModel;->getResource()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_6
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 475
    .local v18, "item":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v18

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$700(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_6

    .line 499
    .end local v18    # "item":Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 500
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 393
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v20    # "parameter":Lcom/igaworks/core/RequestParameter;
    .end local v21    # "promotion":Lcom/igaworks/adbrix/model/Promotion;
    :catch_3
    move-exception v14

    .line 395
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    .line 399
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_b
    const-string v26, "null"

    goto/16 :goto_2

    .line 426
    :catch_4
    move-exception v15

    .line 427
    .local v15, "e_wt":Ljava/lang/Exception;
    const-string v26, "IGAW_QA"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Update DL waiting time error: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_4

    .line 430
    .end local v15    # "e_wt":Ljava/lang/Exception;
    :catch_5
    move-exception v14

    .line 431
    .restart local v14    # "e":Ljava/lang/Exception;
    const/16 v26, 0x0

    :try_start_c
    sput-object v26, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "IGAW_QA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ADBrixTracer, schedule received, but parsing error occurred -> "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x3

    const/16 v30, 0x0

    invoke-static/range {v26 .. v30}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 478
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v20    # "parameter":Lcom/igaworks/core/RequestParameter;
    .restart local v21    # "promotion":Lcom/igaworks/adbrix/model/Promotion;
    :cond_b
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v21 .. v21}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getIcon()Lcom/igaworks/adbrix/model/IconModel;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/igaworks/adbrix/model/IconModel;->getResource()Ljava/lang/String;

    move-result-object v29

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static/range {v27 .. v29}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$700(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_5
.end method
