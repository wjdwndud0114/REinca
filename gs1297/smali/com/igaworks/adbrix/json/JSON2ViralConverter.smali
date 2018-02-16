.class public Lcom/igaworks/adbrix/json/JSON2ViralConverter;
.super Ljava/lang/Object;
.source "JSON2ViralConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert2ViralInfo(Ljava/lang/String;)Lcom/igaworks/adbrix/model/ViralInfoModel;
    .locals 5
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 12
    const/4 v1, 0x0

    .line 16
    .local v1, "result":Lcom/igaworks/adbrix/model/ViralInfoModel;
    :try_start_0
    new-instance v2, Lcom/igaworks/adbrix/model/ViralInfoModel;

    invoke-direct {v2}, Lcom/igaworks/adbrix/model/ViralInfoModel;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .end local v1    # "result":Lcom/igaworks/adbrix/model/ViralInfoModel;
    .local v2, "result":Lcom/igaworks/adbrix/model/ViralInfoModel;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "IsTest"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    const-string v4, "IsTest"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/igaworks/adbrix/model/ViralInfoModel;->setTest(Z)V

    .line 23
    :cond_0
    const-string v4, "Result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    const-string v4, "Result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/igaworks/adbrix/model/ViralInfoModel;->setResult(Z)V

    .line 27
    :cond_1
    const-string v4, "ResultCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 28
    const-string v4, "ResultCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/igaworks/adbrix/model/ViralInfoModel;->setResultCode(I)V

    .line 31
    :cond_2
    const-string v4, "ResultMsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 32
    const-string v4, "ResultMsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/igaworks/adbrix/model/ViralInfoModel;->setResultMsg(Ljava/lang/String;)V

    .line 35
    :cond_3
    const-string v4, "ImageURL"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 36
    const-string v4, "ImageURL"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/igaworks/adbrix/model/ViralInfoModel;->setImageURL(Ljava/lang/String;)V

    .line 39
    :cond_4
    const-string v4, "ItemName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 40
    const-string v4, "ItemName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/igaworks/adbrix/model/ViralInfoModel;->setItemName(Ljava/lang/String;)V

    .line 43
    :cond_5
    const-string v4, "ItemQuantity"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 44
    const-string v4, "ItemQuantity"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/igaworks/adbrix/model/ViralInfoModel;->setItemQuantity(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    move-object v1, v2

    .line 52
    .end local v2    # "result":Lcom/igaworks/adbrix/model/ViralInfoModel;
    .end local v3    # "root":Lorg/json/JSONObject;
    .restart local v1    # "result":Lcom/igaworks/adbrix/model/ViralInfoModel;
    :goto_0
    return-object v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const/4 v2, 0x0

    goto :goto_0

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Lcom/igaworks/adbrix/model/ViralInfoModel;
    .restart local v2    # "result":Lcom/igaworks/adbrix/model/ViralInfoModel;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "result":Lcom/igaworks/adbrix/model/ViralInfoModel;
    .restart local v1    # "result":Lcom/igaworks/adbrix/model/ViralInfoModel;
    goto :goto_1
.end method

.method public static convert2ViralUrl(Ljava/lang/String;)Lcom/igaworks/adbrix/model/ViralUrlModel;
    .locals 5
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 62
    .local v1, "result":Lcom/igaworks/adbrix/model/ViralUrlModel;
    :try_start_0
    new-instance v2, Lcom/igaworks/adbrix/model/ViralUrlModel;

    invoke-direct {v2}, Lcom/igaworks/adbrix/model/ViralUrlModel;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "result":Lcom/igaworks/adbrix/model/ViralUrlModel;
    .local v2, "result":Lcom/igaworks/adbrix/model/ViralUrlModel;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "IsTest"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    const-string v4, "IsTest"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/igaworks/adbrix/model/ViralUrlModel;->setTest(Z)V

    .line 69
    :cond_0
    const-string v4, "Result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    const-string v4, "Result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/igaworks/adbrix/model/ViralUrlModel;->setResult(Z)V

    .line 73
    :cond_1
    const-string v4, "ResultCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    const-string v4, "ResultCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/igaworks/adbrix/model/ViralUrlModel;->setResultCode(I)V

    .line 77
    :cond_2
    const-string v4, "ResultMsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    const-string v4, "ResultMsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/igaworks/adbrix/model/ViralUrlModel;->setResultMsg(Ljava/lang/String;)V

    .line 81
    :cond_3
    const-string v4, "TrackingURL"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 82
    const-string v4, "TrackingURL"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/igaworks/adbrix/model/ViralUrlModel;->setTrackingURL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move-object v1, v2

    .line 90
    .end local v2    # "result":Lcom/igaworks/adbrix/model/ViralUrlModel;
    .end local v3    # "root":Lorg/json/JSONObject;
    .restart local v1    # "result":Lcom/igaworks/adbrix/model/ViralUrlModel;
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const/4 v2, 0x0

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Lcom/igaworks/adbrix/model/ViralUrlModel;
    .restart local v2    # "result":Lcom/igaworks/adbrix/model/ViralUrlModel;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "result":Lcom/igaworks/adbrix/model/ViralUrlModel;
    .restart local v1    # "result":Lcom/igaworks/adbrix/model/ViralUrlModel;
    goto :goto_1
.end method
