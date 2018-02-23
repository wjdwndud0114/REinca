.class public Lcom/igaworks/commerce/core/CommerceRequestParameter;
.super Ljava/lang/Object;
.source "CommerceRequestParameter.java"


# static fields
.field private static parameter:Lcom/igaworks/core/RequestParameter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommerceEventParameter(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;I)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adid"    # Ljava/lang/String;
    .param p2, "adidOptOut"    # Z
    .param p4, "ServerType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/igaworks/commerce/core/CommerceRequestParameter;->parameter:Lcom/igaworks/core/RequestParameter;

    if-nez v0, :cond_0

    .line 24
    invoke-static {p0}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v0

    sput-object v0, Lcom/igaworks/commerce/core/CommerceRequestParameter;->parameter:Lcom/igaworks/core/RequestParameter;

    .line 28
    :cond_0
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    sget-object v0, Lcom/igaworks/commerce/core/CommerceRequestParameter;->parameter:Lcom/igaworks/core/RequestParameter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/igaworks/core/RequestParameter;->getTrackingParameterForADBrix(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v8, "base":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 32
    .local v7, "arr":Lorg/json/JSONArray;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    .local v10, "item":Ljava/lang/String;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 35
    :catch_0
    move-exception v9

    .line 36
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 47
    .end local v7    # "arr":Lorg/json/JSONArray;
    .end local v8    # "base":Lorg/json/JSONObject;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "item":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 48
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 49
    const-string v0, "{}"

    .end local v9    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v0

    .line 41
    .restart local v7    # "arr":Lorg/json/JSONArray;
    .restart local v8    # "base":Lorg/json/JSONObject;
    :cond_1
    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    :try_start_3
    const-string v0, "commerce_events"

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :goto_2
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommerceParameter > commerce event Parameter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 42
    :cond_2
    const-string v0, "commerce_event_info"

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public static getCommerceV2EventParameter(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;I)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adid"    # Ljava/lang/String;
    .param p2, "adidOptOut"    # Z
    .param p4, "ServerType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/model/CommerceV2EventItem;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    sget-object v1, Lcom/igaworks/commerce/core/CommerceRequestParameter;->parameter:Lcom/igaworks/core/RequestParameter;

    if-nez v1, :cond_0

    .line 57
    invoke-static {p0}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v1

    sput-object v1, Lcom/igaworks/commerce/core/CommerceRequestParameter;->parameter:Lcom/igaworks/core/RequestParameter;

    .line 61
    :cond_0
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    sget-object v1, Lcom/igaworks/commerce/core/CommerceRequestParameter;->parameter:Lcom/igaworks/core/RequestParameter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/igaworks/core/RequestParameter;->getTrackingParameterForADBrix(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v9, "base":Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 65
    .local v8, "arr":Lorg/json/JSONArray;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/igaworks/commerce/model/CommerceV2EventItem;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    .local v11, "item":Lcom/igaworks/commerce/model/CommerceV2EventItem;
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;->getJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    .local v12, "obj":Lorg/json/JSONObject;
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 72
    .end local v12    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 74
    .local v10, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 93
    .end local v8    # "arr":Lorg/json/JSONArray;
    .end local v9    # "base":Lorg/json/JSONObject;
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v11    # "item":Lcom/igaworks/commerce/model/CommerceV2EventItem;
    :catch_1
    move-exception v10

    .line 94
    .restart local v10    # "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    .line 95
    const-string v1, "{}"

    .end local v10    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v1

    .line 87
    .restart local v8    # "arr":Lorg/json/JSONArray;
    .restart local v9    # "base":Lorg/json/JSONObject;
    :cond_1
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_2

    :try_start_3
    const-string v1, "commerce_events"

    invoke-virtual {v9, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :goto_2
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCommerceV2EventParameter > commerceV2 event Parameter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 88
    :cond_2
    const-string v1, "commerce_event_info"

    invoke-virtual {v9, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method
