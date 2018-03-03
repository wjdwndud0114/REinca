.class public Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;
.super Lcom/unity3d/ads/metadata/MetaData;
.source "InAppPurchaseMetaData.java"


# static fields
.field public static final KEY_CURRENCY:Ljava/lang/String; = "currency"

.field public static final KEY_PRICE:Ljava/lang/String; = "price"

.field public static final KEY_PRODUCT_ID:Ljava/lang/String; = "productId"

.field public static final KEY_RECEIPT_PURCHASE_DATA:Ljava/lang/String; = "receiptPurchaseData"

.field public static final KEY_SIGNATURE:Ljava/lang/String; = "signature"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/unity3d/ads/metadata/MetaData;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v0, "iap"

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->setCategory(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 12

    .prologue
    .line 59
    iget-object v8, p0, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->_context:Landroid/content/Context;

    invoke-static {v8}, Lcom/unity3d/ads/device/StorageManager;->init(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 60
    sget-object v8, Lcom/unity3d/ads/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/ads/device/StorageManager$StorageType;

    invoke-static {v8}, Lcom/unity3d/ads/device/StorageManager;->getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;

    move-result-object v7

    .line 62
    .local v7, "storage":Lcom/unity3d/ads/device/Storage;
    iget-object v8, p0, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->_metaData:Ljava/util/Map;

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    .line 63
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->getCategory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".purchases"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/unity3d/ads/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 64
    .local v5, "purchaseObject":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 66
    .local v6, "purchases":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 68
    :try_start_0
    move-object v0, v5

    check-cast v0, Lorg/json/JSONArray;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 76
    new-instance v6, Lorg/json/JSONArray;

    .end local v6    # "purchases":Lorg/json/JSONArray;
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 79
    .restart local v6    # "purchases":Lorg/json/JSONArray;
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v4, "purchase":Lorg/json/JSONObject;
    :try_start_1
    iget-object v8, p0, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->_metaData:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    .local v3, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->_metaData:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 88
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Lorg/json/JSONException;
    const-string v8, "Error constructing purchase object"

    invoke-static {v8}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 102
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v4    # "purchase":Lorg/json/JSONObject;
    .end local v5    # "purchaseObject":Ljava/lang/Object;
    .end local v6    # "purchases":Lorg/json/JSONArray;
    .end local v7    # "storage":Lcom/unity3d/ads/device/Storage;
    :cond_2
    :goto_2
    return-void

    .line 70
    .restart local v5    # "purchaseObject":Ljava/lang/Object;
    .restart local v6    # "purchases":Lorg/json/JSONArray;
    .restart local v7    # "storage":Lcom/unity3d/ads/device/Storage;
    :catch_1
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "Invalid object type for purchases"

    invoke-static {v8}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "purchase":Lorg/json/JSONObject;
    :cond_3
    :try_start_2
    const-string v8, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->getCategory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".purchases"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/unity3d/ads/device/Storage;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v7}, Lcom/unity3d/ads/device/Storage;->writeStorage()Z

    .line 96
    sget-object v8, Lcom/unity3d/ads/device/StorageEvent;->SET:Lcom/unity3d/ads/device/StorageEvent;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->_metaData:Ljava/util/Map;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/unity3d/ads/device/Storage;->sendEvent(Lcom/unity3d/ads/device/StorageEvent;[Ljava/lang/Object;)V

    goto :goto_2

    .line 100
    .end local v4    # "purchase":Lorg/json/JSONObject;
    .end local v5    # "purchaseObject":Ljava/lang/Object;
    .end local v6    # "purchases":Lorg/json/JSONArray;
    .end local v7    # "storage":Lcom/unity3d/ads/device/Storage;
    :cond_4
    const-string v8, "Unity Ads could not commit metadata due to storage error or the data is null"

    invoke-static {v8}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->_metaData:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->_metaData:Ljava/util/Map;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->_metaData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 1
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "currency"

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 1
    .param p1, "price"    # Ljava/lang/Double;

    .prologue
    .line 33
    const-string v0, "price"

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "productId"

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public setReceiptPurchaseData(Ljava/lang/String;)V
    .locals 1
    .param p1, "receiptPurchaseData"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "receiptPurchaseData"

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 1
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, "signature"

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method
