.class Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;
.super Ljava/lang/Object;
.source "CommerceHttpManager.java"

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/net/CommerceHttpManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/net/CommerceHttpManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 19
    .param p1, "adInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v5, v2, Lcom/igaworks/commerce/net/CommerceHttpManager;->PURCHASE_REQUEST_URL_FOR_Commerce:Ljava/lang/String;

    .line 66
    .local v5, "url":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 68
    .local v10, "arr":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/igaworks/commerce/model/PurchaseItem;

    .line 71
    .local v15, "item":Lcom/igaworks/commerce/model/PurchaseItem;
    const/4 v3, 0x5

    :try_start_0
    new-array v11, v3, [Ljava/lang/String;

    .line 72
    .local v11, "categories":[Ljava/lang/String;
    invoke-virtual {v15}, Lcom/igaworks/commerce/model/PurchaseItem;->getCategory()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v15}, Lcom/igaworks/commerce/model/PurchaseItem;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 74
    .local v17, "temp":[Ljava/lang/String;
    :goto_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v14, v3, :cond_1

    .line 75
    aget-object v3, v17, v14

    aput-object v3, v11, v14

    .line 74
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 72
    .end local v14    # "i":I
    .end local v17    # "temp":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_1

    .line 78
    .restart local v14    # "i":I
    .restart local v17    # "temp":[Ljava/lang/String;
    :cond_1
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v16, "obj":Lorg/json/JSONObject;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    .line 80
    .local v13, "event_id":Ljava/lang/String;
    const-string v3, "ak"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v4}, Lcom/igaworks/core/RequestParameter;->getAppkey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v3, "adid"

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v3, "usn"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    const-string v6, "userId"

    invoke-static {v4, v6}, Lcom/igaworks/commerce/db/DemographicDAO;->getDemographic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v3, "emailhash"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    const-string v6, "email"

    invoke-static {v4, v6}, Lcom/igaworks/commerce/db/DemographicDAO;->getDemographic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v3, "orderId"

    invoke-virtual {v15}, Lcom/igaworks/commerce/model/PurchaseItem;->getOrderID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v3, "productId"

    invoke-virtual {v15}, Lcom/igaworks/commerce/model/PurchaseItem;->getProductID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v3, "price"

    invoke-virtual {v15}, Lcom/igaworks/commerce/model/PurchaseItem;->getPrice()D

    move-result-wide v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 87
    const-string v3, "currency"

    invoke-virtual {v15}, Lcom/igaworks/commerce/model/PurchaseItem;->getCurrency()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v3, "category1"

    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v3, "category2"

    const/4 v4, 0x1

    aget-object v4, v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v3, "category3"

    const/4 v4, 0x2

    aget-object v4, v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v3, "category4"

    const/4 v4, 0x3

    aget-object v4, v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v3, "category5"

    const/4 v4, 0x4

    aget-object v4, v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v3, "quantity"

    invoke-virtual {v15}, Lcom/igaworks/commerce/model/PurchaseItem;->getQuantity()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v3, "productName"

    invoke-virtual {v15}, Lcom/igaworks/commerce/model/PurchaseItem;->getProductName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v3, "event_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v3, "mtime"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 97
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 98
    .end local v11    # "categories":[Ljava/lang/String;
    .end local v13    # "event_id":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v16    # "obj":Lorg/json/JSONObject;
    .end local v17    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 99
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 105
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v15    # "item":Lcom/igaworks/commerce/model/PurchaseItem;
    :cond_2
    :try_start_1
    new-instance v18, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    const/4 v4, 0x1

    .line 106
    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;-><init>(Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 136
    .local v18, "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 137
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .end local v18    # "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    :goto_3
    return-void

    .line 142
    :catch_1
    move-exception v12

    .line 143
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/igaworks/commerce/net/CommerceHttpManager;->restorePurchaseInfo(Landroid/content/Context;Ljava/util/List;)V

    .line 144
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3
.end method
