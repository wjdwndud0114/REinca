.class Lcom/igaworks/net/CommonHttpManager$9$1;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/interfaces/HttpCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager$9;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/net/CommonHttpManager$9;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/net/CommonHttpManager$9;

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 29
    .param p1, "resultStr"    # Ljava/lang/String;

    .prologue
    .line 1159
    const-wide/16 v8, -0x1

    .line 1160
    .local v8, "baseTime":J
    if-nez p1, :cond_1

    .line 1161
    :try_start_0
    new-instance v24, Ljava/lang/Exception;

    const-string v25, "ThirdPartyConversion null Error"

    invoke-direct/range {v24 .. v25}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    :catch_0
    move-exception v14

    .line 1231
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 1232
    const-string v24, "IGAW_QA"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ThirdPartyConversion Callback error: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->this$0:Lcom/igaworks/net/CommonHttpManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$thirdPartyConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    move-object/from16 v26, v0

    # invokes: Lcom/igaworks/net/CommonHttpManager;->storeForRetryThirdPartyConversion(Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    invoke-static/range {v24 .. v26}, Lcom/igaworks/net/CommonHttpManager;->access$400(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V

    .line 1236
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "IGAW_QA"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ThirdPartyConversion > responseString : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x3

    const/16 v28, 0x0

    invoke-static/range {v24 .. v28}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    .line 1167
    .local v6, "atParam":Lcom/igaworks/core/RequestParameter;
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1169
    .local v16, "jsonObject":Lorg/json/JSONObject;
    :try_start_2
    const-string v24, "BaseTime"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 1170
    const-string v24, "BaseTime"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1172
    .local v10, "currentMs":J
    sub-long v20, v8, v10

    .line 1173
    .local v20, "serverOffset":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/igaworks/dao/AppImpressionDAO;->setServerBaseTimeOffset(Landroid/content/Context;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1179
    .end local v10    # "currentMs":J
    .end local v20    # "serverOffset":J
    :cond_2
    :goto_1
    :try_start_3
    const-string v24, "Result"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    const-string v24, "Data"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 1181
    const-string v24, "Data"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1182
    .local v12, "dataInfo":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v13, "dataObject":Lorg/json/JSONObject;
    const-string v24, "referralKey"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 1186
    .local v18, "referralKey":J
    const/4 v7, -0x1

    .line 1188
    .local v7, "channelType":I
    const-string v24, "channel_type"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    const-string v24, "channel_type"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 1189
    const-string v24, "channel_type"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1192
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "IGAW_QA"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ADBrixTracer, ThirdPartyConversion > referralKey : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x3

    const/16 v28, 0x0

    invoke-static/range {v24 .. v28}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1194
    const-wide/16 v24, -0x1

    cmp-long v24, v18, v24

    if-eqz v24, :cond_4

    .line 1195
    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_ReferralKey(J)V

    .line 1197
    :cond_4
    const-string v24, "subreferralKey"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1198
    const-string v24, "subreferralKey"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1199
    .local v23, "subreferralKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "IGAW_QA"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ADBrixTracer, ThirdPartyConversion > subreferralKey : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x3

    const/16 v28, 0x0

    invoke-static/range {v24 .. v28}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1200
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_SubReferralKey(Ljava/lang/String;)V

    .line 1203
    .end local v23    # "subreferralKey":Ljava/lang/String;
    :cond_5
    const-string v24, "user_no"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1205
    .local v4, "adbrix_user_no":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "IGAW_QA"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ADBrixTracer, ThirdPartyConversion > adbrix_user_no : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x3

    const/16 v28, 0x0

    invoke-static/range {v24 .. v28}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v6, v4, v5, v0, v1}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo(JJ)V

    .line 1208
    const-string v24, "shard_no"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    const-string v24, "shard_no"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 1209
    const-string v24, "shard_no"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1210
    .local v22, "shardNo":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "IGAW_QA"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ADBrixTracer, ThirdPartyConversion > shard_no : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x3

    const/16 v28, 0x0

    invoke-static/range {v24 .. v28}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1211
    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_ShardNo(I)V

    .line 1213
    .end local v22    # "shardNo":I
    :cond_6
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v7, v0, :cond_7

    .line 1214
    invoke-virtual {v6, v7}, Lcom/igaworks/core/RequestParameter;->setChannelType(I)V

    .line 1216
    :cond_7
    const-string v24, "install_datetime"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    const-string v24, "install_datetime"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 1217
    const-string v24, "install_datetime"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1218
    .local v15, "installDatetime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "IGAW_QA"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ADBrixTracer, ThirdPartyConversion > install_datetime : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x3

    const/16 v28, 0x0

    invoke-static/range {v24 .. v28}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->this$0:Lcom/igaworks/net/CommonHttpManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    # invokes: Lcom/igaworks/net/CommonHttpManager;->isNewInstall(Landroid/content/Context;JLjava/lang/String;)Z
    invoke-static {v0, v1, v8, v9, v15}, Lcom/igaworks/net/CommonHttpManager;->access$000(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;JLjava/lang/String;)Z

    move-result v17

    .line 1220
    .local v17, "newIntall":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$parameter:Lcom/igaworks/core/RequestParameter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/igaworks/core/RequestParameter;->setNewInstall(Z)V

    .line 1221
    invoke-virtual {v6, v15}, Lcom/igaworks/core/RequestParameter;->setADBrixUserInfo_install_datetime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1175
    .end local v4    # "adbrix_user_no":J
    .end local v7    # "channelType":I
    .end local v12    # "dataInfo":Ljava/lang/String;
    .end local v13    # "dataObject":Lorg/json/JSONObject;
    .end local v15    # "installDatetime":Ljava/lang/String;
    .end local v17    # "newIntall":Z
    .end local v18    # "referralKey":J
    :catch_1
    move-exception v14

    .line 1177
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1225
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->this$0:Lcom/igaworks/net/CommonHttpManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$thirdPartyConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    move-object/from16 v26, v0

    # invokes: Lcom/igaworks/net/CommonHttpManager;->storeForRetryThirdPartyConversion(Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    invoke-static/range {v24 .. v26}, Lcom/igaworks/net/CommonHttpManager;->access$400(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9$1;->this$1:Lcom/igaworks/net/CommonHttpManager$9;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "IGAW_QA"

    const-string v26, "ThirdPartyConversion error : result false"

    const/16 v27, 0x3

    const/16 v28, 0x0

    invoke-static/range {v24 .. v28}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
