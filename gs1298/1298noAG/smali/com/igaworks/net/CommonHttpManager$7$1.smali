.class Lcom/igaworks/net/CommonHttpManager$7$1;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/interfaces/HttpCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager$7;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/net/CommonHttpManager$7;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/net/CommonHttpManager$7;

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$7$1;->this$1:Lcom/igaworks/net/CommonHttpManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 26
    .param p1, "resultStr"    # Ljava/lang/String;

    .prologue
    .line 1036
    const-wide/16 v8, -0x1

    .line 1037
    .local v8, "baseTime":J
    if-nez p1, :cond_1

    .line 1038
    :try_start_0
    new-instance v19, Ljava/lang/Exception;

    const-string v22, "ReEngagementConversion null Error"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :catch_0
    move-exception v15

    .line 1091
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 1092
    const-string v19, "IGAW_QA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ReEngagementConversion Callback error: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7$1;->this$1:Lcom/igaworks/net/CommonHttpManager$7;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7;->this$0:Lcom/igaworks/net/CommonHttpManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7$1;->this$1:Lcom/igaworks/net/CommonHttpManager$7;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7;->val$context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7$1;->this$1:Lcom/igaworks/net/CommonHttpManager$7;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7;->val$dlReEngMntConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    # invokes: Lcom/igaworks/net/CommonHttpManager;->storeForRetryReEngagementConversion(Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    invoke-static {v0, v1, v2}, Lcom/igaworks/net/CommonHttpManager;->access$300(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V

    .line 1096
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7$1;->this$1:Lcom/igaworks/net/CommonHttpManager$7;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v22, "IGAW_QA"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ReEngagementConversion > responseString : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x3

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7$1;->this$1:Lcom/igaworks/net/CommonHttpManager$7;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    .line 1044
    .local v6, "atParam":Lcom/igaworks/core/RequestParameter;
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1046
    .local v16, "jsonObject":Lorg/json/JSONObject;
    :try_start_2
    const-string v19, "BaseTime"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1047
    const-string v19, "BaseTime"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1049
    .local v12, "currentMs":J
    sub-long v20, v8, v12

    .line 1050
    .local v20, "serverOffset":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7$1;->this$1:Lcom/igaworks/net/CommonHttpManager$7;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v21}, Lcom/igaworks/dao/AppImpressionDAO;->setServerBaseTimeOffset(Landroid/content/Context;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1056
    .end local v12    # "currentMs":J
    .end local v20    # "serverOffset":J
    :cond_2
    :goto_1
    :try_start_3
    const-string v19, "Result"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const-string v19, "Data"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 1058
    const-string v19, "Data"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1059
    .local v11, "dataInfo":Ljava/lang/String;
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v14, "dataObject":Lorg/json/JSONObject;
    const-string v19, "conversion_result"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "conversion_result"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1062
    const-string v19, "conversion_result"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1063
    .local v10, "conversion_result":Lorg/json/JSONObject;
    const-string v19, "conversion_key"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1064
    .local v7, "conversionKey":I
    int-to-long v0, v7

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_reengagement_conversion_key(J)V

    .line 1065
    const-string v19, "reengagement_data"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1066
    .local v17, "reengagement_data":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_reengagement_data(Ljava/lang/String;)V

    .line 1067
    const-string v19, "reengagement_datetime"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1068
    .local v18, "reengagement_datetime":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_reengagment_datetime(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v6, v7}, Lcom/igaworks/core/RequestParameter;->setConversionCache(I)V

    .line 1071
    invoke-virtual {v6, v7, v8, v9}, Lcom/igaworks/core/RequestParameter;->setConversionCacheHistory(IJ)V

    .line 1072
    invoke-virtual {v6, v7}, Lcom/igaworks/core/RequestParameter;->setRetainedConversionCache(I)V

    goto/16 :goto_0

    .line 1052
    .end local v7    # "conversionKey":I
    .end local v10    # "conversion_result":Lorg/json/JSONObject;
    .end local v11    # "dataInfo":Ljava/lang/String;
    .end local v14    # "dataObject":Lorg/json/JSONObject;
    .end local v17    # "reengagement_data":Ljava/lang/String;
    .end local v18    # "reengagement_datetime":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 1054
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1077
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_4
    const-string v19, "Result"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "ResultCode"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    const/16 v22, 0x13ec

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 1079
    const-string v19, "IGAW_QA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Skip ReEngagement >> "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ResultMsg"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1084
    :catch_2
    move-exception v15

    .line 1085
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7$1;->this$1:Lcom/igaworks/net/CommonHttpManager$7;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v22, "IGAW_QA"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "RetryReEngagment Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x3

    const/16 v25, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1081
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7$1;->this$1:Lcom/igaworks/net/CommonHttpManager$7;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7;->this$0:Lcom/igaworks/net/CommonHttpManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7$1;->this$1:Lcom/igaworks/net/CommonHttpManager$7;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7;->val$context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7$1;->this$1:Lcom/igaworks/net/CommonHttpManager$7;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7;->val$dlReEngMntConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    # invokes: Lcom/igaworks/net/CommonHttpManager;->storeForRetryReEngagementConversion(Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    invoke-static {v0, v1, v2}, Lcom/igaworks/net/CommonHttpManager;->access$300(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7$1;->this$1:Lcom/igaworks/net/CommonHttpManager$7;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$7;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v22, "IGAW_QA"

    const-string v23, "ReEngagementConversion error : result false"

    const/16 v24, 0x3

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0
.end method
