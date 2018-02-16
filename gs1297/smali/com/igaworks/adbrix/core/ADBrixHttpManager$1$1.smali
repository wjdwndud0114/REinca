.class Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;
.super Ljava/lang/Object;
.source "ADBrixHttpManager.java"

# interfaces
.implements Lcom/igaworks/interfaces/HttpCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 36
    .param p1, "resultStr"    # Ljava/lang/String;

    .prologue
    .line 161
    const-wide/16 v6, -0x1

    .line 162
    .local v6, "baseTime":J
    if-nez p1, :cond_1

    .line 163
    :try_start_0
    new-instance v31, Ljava/lang/Exception;

    const-string v32, "complete CPE null Error"

    invoke-direct/range {v31 .. v32}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v31
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :catch_0
    move-exception v16

    .line 296
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    const-string v31, "IGAW_QA"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "completeCPECallForADBrix Callback error: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$activity_info_list:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$imp_info_list:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static/range {v31 .. v34}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$400(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$complete_conversion_list:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreCPEConversionList(Landroid/content/Context;Ljava/util/ArrayList;)V
    invoke-static/range {v31 .. v33}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$300(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 302
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "IGAW_QA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "ADBrixTracer, callbackReferrerADBrix > responseString : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x3

    const/16 v35, 0x0

    invoke-static/range {v31 .. v35}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v4

    .line 170
    .local v4, "atParam":Lcom/igaworks/core/RequestParameter;
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    .local v22, "jsonObject":Lorg/json/JSONObject;
    :try_start_2
    const-string v31, "BaseTime"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 173
    const-string v31, "BaseTime"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 175
    .local v10, "currentMs":J
    sub-long v28, v6, v10

    .line 176
    .local v28, "serverOffset":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/igaworks/dao/AppImpressionDAO;->setServerBaseTimeOffset(Landroid/content/Context;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 182
    .end local v10    # "currentMs":J
    .end local v28    # "serverOffset":J
    :cond_2
    :goto_1
    :try_start_3
    const-string v31, "Result"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    const-string v31, "Data"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_f

    .line 184
    const-string v31, "Data"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 185
    .local v13, "dataInfo":Ljava/lang/String;
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    .local v14, "dataObject":Lorg/json/JSONObject;
    const-string v31, "conversion_result"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_0

    const-string v31, "conversion_result"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_0

    .line 189
    const-string v31, "conversion_result"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 190
    .local v27, "results":Lorg/json/JSONArray;
    const/16 v25, 0x0

    .line 191
    .local v25, "result":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "completeConversions"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 192
    .local v9, "conversionPref":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 194
    .local v21, "inputConversionKey":Landroid/content/SharedPreferences$Editor;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v31

    move/from16 v0, v20

    move/from16 v1, v31

    if-ge v0, v1, :cond_0

    .line 196
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 198
    const-string v31, "conversion_key"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_a

    const-string v31, "conversion_key"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_a

    const-string v31, "result_code"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_a

    const-string v31, "result_code"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_a

    .line 200
    const-string v31, "conversion_key"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 201
    .local v8, "conversionKey":I
    const-string v31, "result_code"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 204
    .local v26, "resultCode":I
    const/16 v18, 0x0

    .line 205
    .local v18, "engagement":Lcom/igaworks/adbrix/model/Engagement;
    const/4 v12, 0x0

    .line 207
    .local v12, "dailyPlay":Lcom/igaworks/adbrix/model/DailyPlay;
    sget-object v31, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual/range {v31 .. v31}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/igaworks/adbrix/model/Schedule;->getEngagements()Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_3
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_4

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/igaworks/adbrix/model/Engagement;

    .line 209
    .local v17, "eng":Lcom/igaworks/adbrix/model/Engagement;
    invoke-virtual/range {v17 .. v17}, Lcom/igaworks/adbrix/model/Engagement;->getConversionKey()I

    move-result v32

    move/from16 v0, v32

    if-ne v0, v8, :cond_3

    .line 210
    move-object/from16 v18, v17

    .line 216
    .end local v17    # "eng":Lcom/igaworks/adbrix/model/Engagement;
    :cond_4
    sget-object v31, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual/range {v31 .. v31}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/igaworks/adbrix/model/Schedule;->getReEngagement()Lcom/igaworks/adbrix/model/ReEngagement;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/igaworks/adbrix/model/ReEngagement;->getDailyPlay()Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_5
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/igaworks/adbrix/model/DailyPlay;

    .line 217
    .local v15, "dp":Lcom/igaworks/adbrix/model/DailyPlay;
    invoke-virtual {v15}, Lcom/igaworks/adbrix/model/DailyPlay;->getConversionKey()I

    move-result v32

    move/from16 v0, v32

    if-ne v0, v8, :cond_5

    .line 218
    move-object v12, v15

    .line 224
    .end local v15    # "dp":Lcom/igaworks/adbrix/model/DailyPlay;
    :cond_6
    const/16 v31, 0x1

    move/from16 v0, v26

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    .line 226
    invoke-virtual {v4, v8}, Lcom/igaworks/core/RequestParameter;->setConversionCache(I)V

    .line 227
    invoke-virtual {v4, v8, v6, v7}, Lcom/igaworks/core/RequestParameter;->setConversionCacheHistory(IJ)V

    .line 228
    invoke-virtual {v4, v8}, Lcom/igaworks/core/RequestParameter;->setRetainedConversionCache(I)V

    .line 230
    if-eqz v18, :cond_8

    .line 231
    move-object/from16 v5, v18

    .line 232
    .local v5, "cEng":Lcom/igaworks/adbrix/model/Engagement;
    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/Engagement;->getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/igaworks/adbrix/model/EngagementDisplay;->getCompleteMessage()Ljava/lang/String;

    move-result-object v23

    .line 234
    .local v23, "msg":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/igaworks/adbrix/model/Engagement;->getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/igaworks/adbrix/model/EngagementDisplay;->getCompleteToastMSec()I

    move-result v31

    if-lez v31, :cond_7

    if-eqz v23, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_7

    const-string v31, "null"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_7

    .line 235
    new-instance v19, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 236
    .local v19, "handler":Landroid/os/Handler;
    new-instance v31, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v5}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1$1;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;Ljava/lang/String;Lcom/igaworks/adbrix/model/Engagement;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    .end local v19    # "handler":Landroid/os/Handler;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "IGAW_QA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "callback complete cpe > key : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x3

    const/16 v35, 0x0

    invoke-static/range {v31 .. v35}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 252
    .end local v5    # "cEng":Lcom/igaworks/adbrix/model/Engagement;
    .end local v23    # "msg":Ljava/lang/String;
    :cond_8
    if-eqz v12, :cond_9

    .line 254
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    const/16 v33, -0x1

    invoke-virtual/range {v31 .. v33}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->setPendingConversionKey(Landroid/content/Context;I)V

    .line 255
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual {v12}, Lcom/igaworks/adbrix/model/DailyPlay;->getConversionKey()I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->setLatestConversionKey(Landroid/content/Context;I)V

    .line 278
    :cond_9
    :goto_3
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    .end local v8    # "conversionKey":I
    .end local v12    # "dailyPlay":Lcom/igaworks/adbrix/model/DailyPlay;
    .end local v18    # "engagement":Lcom/igaworks/adbrix/model/Engagement;
    .end local v26    # "resultCode":I
    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 178
    .end local v9    # "conversionPref":Landroid/content/SharedPreferences;
    .end local v13    # "dataInfo":Ljava/lang/String;
    .end local v14    # "dataObject":Lorg/json/JSONObject;
    .end local v20    # "i":I
    .end local v21    # "inputConversionKey":Landroid/content/SharedPreferences$Editor;
    .end local v25    # "result":Lorg/json/JSONObject;
    .end local v27    # "results":Lorg/json/JSONArray;
    :catch_1
    move-exception v16

    .line 180
    .restart local v16    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 260
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v8    # "conversionKey":I
    .restart local v9    # "conversionPref":Landroid/content/SharedPreferences;
    .restart local v12    # "dailyPlay":Lcom/igaworks/adbrix/model/DailyPlay;
    .restart local v13    # "dataInfo":Ljava/lang/String;
    .restart local v14    # "dataObject":Lorg/json/JSONObject;
    .restart local v18    # "engagement":Lcom/igaworks/adbrix/model/Engagement;
    .restart local v20    # "i":I
    .restart local v21    # "inputConversionKey":Landroid/content/SharedPreferences$Editor;
    .restart local v25    # "result":Lorg/json/JSONObject;
    .restart local v26    # "resultCode":I
    .restart local v27    # "results":Lorg/json/JSONArray;
    :cond_b
    const/16 v31, 0x1b58

    move/from16 v0, v26

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    .line 261
    if-eqz v12, :cond_9

    .line 262
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getPendingConversionKey(Landroid/content/Context;)I

    move-result v24

    .line 263
    .local v24, "pendingKey":I
    invoke-virtual {v12}, Lcom/igaworks/adbrix/model/DailyPlay;->getConversionKey()I

    move-result v31

    move/from16 v0, v24

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    .line 264
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    const/16 v33, -0x1

    invoke-virtual/range {v31 .. v33}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->setPendingConversionKey(Landroid/content/Context;I)V

    .line 266
    :cond_c
    const/16 v30, -0x1

    .line 267
    .local v30, "waiting_time":I
    const-string v31, "waiting_time"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_d

    const-string v31, "waiting_time"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_d

    const-string v31, "waiting_time"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 268
    :cond_d
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->setWaitingTime(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 272
    .end local v24    # "pendingKey":I
    .end local v30    # "waiting_time":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v26

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreCPESingleConversion(Landroid/content/Context;II)V
    invoke-static {v0, v1, v8, v2}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$100(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;II)V

    goto/16 :goto_3

    .line 289
    .end local v8    # "conversionKey":I
    .end local v9    # "conversionPref":Landroid/content/SharedPreferences;
    .end local v12    # "dailyPlay":Lcom/igaworks/adbrix/model/DailyPlay;
    .end local v13    # "dataInfo":Ljava/lang/String;
    .end local v14    # "dataObject":Lorg/json/JSONObject;
    .end local v18    # "engagement":Lcom/igaworks/adbrix/model/Engagement;
    .end local v20    # "i":I
    .end local v21    # "inputConversionKey":Landroid/content/SharedPreferences$Editor;
    .end local v25    # "result":Lorg/json/JSONObject;
    .end local v26    # "resultCode":I
    .end local v27    # "results":Lorg/json/JSONArray;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$activity_info_list:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$imp_info_list:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static/range {v31 .. v34}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$200(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$complete_conversion_list:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreCPEConversionList(Landroid/content/Context;Ljava/util/ArrayList;)V
    invoke-static/range {v31 .. v33}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$300(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "IGAW_QA"

    const-string v33, "complete cpe error : result false"

    const/16 v34, 0x3

    const/16 v35, 0x0

    invoke-static/range {v31 .. v35}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
