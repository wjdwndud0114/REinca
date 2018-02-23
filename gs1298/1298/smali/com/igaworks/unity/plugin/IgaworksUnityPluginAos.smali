.class public Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "IgaworksUnityPluginAos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;,
        Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;
    }
.end annotation


# static fields
.field public static couponDialog:Landroid/app/Dialog;

.field public static isLogging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->isLogging:Z

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->couponDialog:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method

.method private static HexToInt(Ljava/lang/String;)I
    .locals 7
    .param p0, "hexStr"    # Ljava/lang/String;

    .prologue
    .line 432
    const/4 v4, 0x0

    .line 433
    .local v4, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "hex":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 441
    return v4

    .line 436
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 437
    .local v1, "c":C
    invoke-static {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->toByte(C)B

    move-result v0

    .line 438
    .local v0, "b":B
    and-int/lit8 v5, v0, 0xf

    mul-int/lit8 v6, v3, 0x4

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    .line 435
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static MakeCategoryFromStringForCommerceV2(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .locals 7
    .param p0, "categoryString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 878
    if-eqz p0, :cond_0

    :try_start_0
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "temp":[Ljava/lang/String;
    :goto_0
    array-length v2, v1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->create(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    move-result-object v2

    .line 891
    .end local v1    # "temp":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 878
    :cond_0
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/String;

    goto :goto_0

    .line 881
    .restart local v1    # "temp":[Ljava/lang/String;
    :cond_1
    array-length v2, v1

    if-ne v2, v4, :cond_2

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v2, v3}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    move-result-object v2

    goto :goto_1

    .line 882
    :cond_2
    array-length v2, v1

    if-ne v2, v5, :cond_3

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v2, v3, v4}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    move-result-object v2

    goto :goto_1

    .line 883
    :cond_3
    array-length v2, v1

    if-ne v2, v6, :cond_4

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    move-result-object v2

    goto :goto_1

    .line 884
    :cond_4
    array-length v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    const/4 v6, 0x4

    aget-object v6, v1, v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 886
    .end local v1    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 891
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static MakeProductFromJsonForCommerceV2(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductModel;
    .locals 21
    .param p0, "purchaseDataJsonString"    # Ljava/lang/String;

    .prologue
    .line 617
    :try_start_0
    new-instance v12, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 620
    .local v12, "root":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 622
    sget-object v16, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v17, "IGAW_QA"

    const-string v18, "commerceV2PlugIn error : No purhcase item."

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v20}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 623
    const/4 v11, 0x0

    .line 739
    .end local v12    # "root":Lorg/json/JSONArray;
    :goto_0
    return-object v11

    .line 626
    .restart local v12    # "root":Lorg/json/JSONArray;
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v16

    move/from16 v0, v16

    if-lt v4, v0, :cond_1

    .line 739
    .end local v4    # "i":I
    .end local v12    # "root":Lorg/json/JSONArray;
    :goto_2
    const/4 v11, 0x0

    goto :goto_0

    .line 629
    .restart local v4    # "i":I
    .restart local v12    # "root":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 631
    .local v5, "item":Lorg/json/JSONObject;
    new-instance v11, Lcom/igaworks/commerce/IgawCommerceProductModel;

    invoke-direct {v11}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>()V

    .line 633
    .local v11, "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    const-string v16, "productId"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 635
    const-string v16, "productId"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setProductID(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 642
    const-string v16, "productName"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 644
    const-string v16, "productName"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setProductName(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 651
    const-string v16, "price"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 653
    const-string v16, "price"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setPrice(D)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 660
    const-string v16, "discount"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 662
    const-string v16, "discount"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setDiscount(D)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 669
    const-string v16, "quantity"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 671
    const-string v16, "quantity"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setQuantity(I)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 678
    const-string v16, "currency"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 680
    const-string v16, "currency"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCurrencyByCurrencyCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setCurrency(Lcom/igaworks/commerce/IgawCommerce$Currency;)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 687
    const-string v16, "category"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 689
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v2, v0, [Ljava/lang/String;

    .line 690
    .local v2, "categories":[Ljava/lang/String;
    const-string v16, "category"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_8

    const-string v16, "category"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "\\."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 692
    .local v14, "temp":[Ljava/lang/String;
    :goto_3
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v6, v0, :cond_9

    .line 697
    const/16 v16, 0x0

    aget-object v16, v2, v16

    const/16 v17, 0x1

    aget-object v17, v2, v17

    const/16 v18, 0x2

    aget-object v18, v2, v18

    const/16 v19, 0x3

    aget-object v19, v2, v19

    const/16 v20, 0x4

    aget-object v20, v2, v20

    invoke-static/range {v16 .. v20}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setCategory(Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 704
    const-string v16, "extra_attrs"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 706
    const-string v16, "extra_attrs"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 707
    .local v13, "subItem":Lorg/json/JSONObject;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 708
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v13}, Lorg/json/JSONObject;->length()I

    move-result v10

    .line 710
    .local v10, "n":I
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 712
    .local v8, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_b

    .line 719
    invoke-static {v9}, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->create(Ljava/util/Map;)Lcom/igaworks/commerce/IgawCommerceProductAttrModel;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setExtraAttrs(Lcom/igaworks/commerce/IgawCommerceProductAttrModel;)Lcom/igaworks/commerce/IgawCommerceProductModel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 728
    .end local v2    # "categories":[Ljava/lang/String;
    .end local v5    # "item":Lorg/json/JSONObject;
    .end local v6    # "j":I
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v9    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "n":I
    .end local v11    # "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    .end local v13    # "subItem":Lorg/json/JSONObject;
    .end local v14    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 730
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v16, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v17, "IGAW_QA"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "purchase error : invalid item = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v20}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 626
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 639
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "item":Lorg/json/JSONObject;
    .restart local v11    # "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    :cond_2
    :try_start_3
    new-instance v16, Ljava/lang/Exception;

    const-string v17, "No productId attribute."

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 734
    .end local v4    # "i":I
    .end local v5    # "item":Lorg/json/JSONObject;
    .end local v11    # "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    .end local v12    # "root":Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    .line 737
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 648
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v4    # "i":I
    .restart local v5    # "item":Lorg/json/JSONObject;
    .restart local v11    # "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    .restart local v12    # "root":Lorg/json/JSONArray;
    :cond_3
    :try_start_4
    new-instance v16, Ljava/lang/Exception;

    const-string v17, "No productName attribute."

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16

    .line 657
    :cond_4
    new-instance v16, Ljava/lang/Exception;

    const-string v17, "No price attribute."

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16

    .line 666
    :cond_5
    new-instance v16, Ljava/lang/Exception;

    const-string v17, "No discount attribute."

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16

    .line 675
    :cond_6
    new-instance v16, Ljava/lang/Exception;

    const-string v17, "No quantity attribute."

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16

    .line 684
    :cond_7
    new-instance v16, Ljava/lang/Exception;

    const-string v17, "No currency attribute."

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16

    .line 690
    .restart local v2    # "categories":[Ljava/lang/String;
    :cond_8
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/String;

    goto/16 :goto_3

    .line 694
    .restart local v6    # "j":I
    .restart local v14    # "temp":[Ljava/lang/String;
    :cond_9
    aget-object v16, v14, v6

    aput-object v16, v2, v6

    .line 692
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 701
    .end local v2    # "categories":[Ljava/lang/String;
    .end local v6    # "j":I
    .end local v14    # "temp":[Ljava/lang/String;
    :cond_a
    new-instance v16, Ljava/lang/Exception;

    const-string v17, "No category attribute."

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16

    .line 714
    .restart local v2    # "categories":[Ljava/lang/String;
    .restart local v6    # "j":I
    .restart local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v9    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "n":I
    .restart local v13    # "subItem":Lorg/json/JSONObject;
    .restart local v14    # "temp":[Ljava/lang/String;
    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 715
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 716
    .local v15, "value":Ljava/lang/String;
    invoke-virtual {v9, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 723
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v9    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "n":I
    .end local v13    # "subItem":Lorg/json/JSONObject;
    .end local v15    # "value":Ljava/lang/String;
    :cond_c
    new-instance v16, Ljava/lang/Exception;

    const-string v17, "No extra_attrs attribute."

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method public static MakeProductsFromJsonForCommerceV2(Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .param p0, "purchaseDataJsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    :try_start_0
    new-instance v13, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 748
    .local v13, "root":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 750
    sget-object v17, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v18, "IGAW_QA"

    const-string v19, "commerceV2PlugIn error : No purhcase item."

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 751
    const/4 v6, 0x0

    .line 871
    .end local v13    # "root":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-object v6

    .line 754
    .restart local v13    # "root":Lorg/json/JSONArray;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v6, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_0

    .line 759
    :try_start_1
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 761
    .local v5, "item":Lorg/json/JSONObject;
    new-instance v12, Lcom/igaworks/commerce/IgawCommerceProductModel;

    invoke-direct {v12}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>()V

    .line 763
    .local v12, "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    const-string v17, "productId"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 765
    sget-object v17, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v18, "IGAW_QA"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Productname is "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "productId"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 766
    const-string v17, "productId"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setProductID(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 773
    const-string v17, "productName"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 775
    const-string v17, "productName"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setProductName(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 782
    const-string v17, "price"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 784
    const-string v17, "price"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setPrice(D)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 791
    const-string v17, "discount"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 793
    const-string v17, "discount"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setDiscount(D)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 800
    const-string v17, "quantity"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 802
    const-string v17, "quantity"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setQuantity(I)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 809
    const-string v17, "currency"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 811
    const-string v17, "currency"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCurrencyByCurrencyCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setCurrency(Lcom/igaworks/commerce/IgawCommerce$Currency;)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 818
    const-string v17, "category"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 820
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v2, v0, [Ljava/lang/String;

    .line 821
    .local v2, "categories":[Ljava/lang/String;
    const-string v17, "category"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    const-string v17, "category"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "\\."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 823
    .local v15, "temp":[Ljava/lang/String;
    :goto_2
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_9

    .line 828
    const/16 v17, 0x0

    aget-object v17, v2, v17

    const/16 v18, 0x1

    aget-object v18, v2, v18

    const/16 v19, 0x2

    aget-object v19, v2, v19

    const/16 v20, 0x3

    aget-object v20, v2, v20

    const/16 v21, 0x4

    aget-object v21, v2, v21

    invoke-static/range {v17 .. v21}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setCategory(Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 835
    const-string v17, "extra_attrs"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 837
    const-string v17, "extra_attrs"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 838
    .local v14, "subItem":Lorg/json/JSONObject;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 839
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v14}, Lorg/json/JSONObject;->length()I

    move-result v11

    .line 841
    .local v11, "n":I
    invoke-virtual {v14}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 843
    .local v9, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_b

    .line 850
    invoke-static {v10}, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->create(Ljava/util/Map;)Lcom/igaworks/commerce/IgawCommerceProductAttrModel;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/igaworks/commerce/IgawCommerceProductModel;->setExtraAttrs(Lcom/igaworks/commerce/IgawCommerceProductAttrModel;)Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 856
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    .end local v2    # "categories":[Ljava/lang/String;
    .end local v5    # "item":Lorg/json/JSONObject;
    .end local v7    # "j":I
    .end local v9    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "n":I
    .end local v12    # "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    .end local v14    # "subItem":Lorg/json/JSONObject;
    .end local v15    # "temp":[Ljava/lang/String;
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 770
    .restart local v5    # "item":Lorg/json/JSONObject;
    .restart local v12    # "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    :cond_2
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "No productId attribute."

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 858
    .end local v5    # "item":Lorg/json/JSONObject;
    .end local v12    # "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    :catch_0
    move-exception v3

    .line 860
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v17, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v18, "IGAW_QA"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "purchase error : invalid item = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 866
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v6    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .end local v13    # "root":Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    .line 869
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 871
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 779
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v4    # "i":I
    .restart local v5    # "item":Lorg/json/JSONObject;
    .restart local v6    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .restart local v12    # "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    .restart local v13    # "root":Lorg/json/JSONArray;
    :cond_3
    :try_start_3
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "No productName attribute."

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 788
    :cond_4
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "No price attribute."

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 797
    :cond_5
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "No discount attribute."

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 806
    :cond_6
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "No quantity attribute."

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 815
    :cond_7
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "No currency attribute."

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 821
    .restart local v2    # "categories":[Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    goto/16 :goto_2

    .line 825
    .restart local v7    # "j":I
    .restart local v15    # "temp":[Ljava/lang/String;
    :cond_9
    aget-object v17, v15, v7

    aput-object v17, v2, v7

    .line 823
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 832
    .end local v2    # "categories":[Ljava/lang/String;
    .end local v7    # "j":I
    .end local v15    # "temp":[Ljava/lang/String;
    :cond_a
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "No category attribute."

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 845
    .restart local v2    # "categories":[Ljava/lang/String;
    .restart local v7    # "j":I
    .restart local v9    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "n":I
    .restart local v14    # "subItem":Lorg/json/JSONObject;
    .restart local v15    # "temp":[Ljava/lang/String;
    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 846
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 847
    .local v16, "value":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v10, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 854
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "n":I
    .end local v14    # "subItem":Lorg/json/JSONObject;
    .end local v16    # "value":Ljava/lang/String;
    :cond_c
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "No extra_attrs attribute."

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public static addToCart(Ljava/lang/String;)V
    .locals 2
    .param p0, "purchaseDataJsonString"    # Ljava/lang/String;

    .prologue
    .line 991
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$26;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$26;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 999
    return-void
.end method

.method public static addToCartBulk(Ljava/lang/String;)V
    .locals 2
    .param p0, "purchaseDataJsonString"    # Ljava/lang/String;

    .prologue
    .line 1003
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$27;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$27;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1011
    return-void
.end method

.method public static addToWishList(Ljava/lang/String;)V
    .locals 2
    .param p0, "purchaseDataJsonString"    # Ljava/lang/String;

    .prologue
    .line 1027
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$29;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$29;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1035
    return-void
.end method

.method public static buy(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1169
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$41;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$41;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1177
    return-void
.end method

.method public static buy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 1179
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$42;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$42;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1187
    return-void
.end method

.method public static cancelClientPushEvent(I)V
    .locals 2
    .param p0, "eventId"    # I

    .prologue
    .line 1591
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$61;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$61;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1600
    return-void
.end method

.method public static categoryView(Ljava/lang/String;)V
    .locals 2
    .param p0, "categoryString"    # Ljava/lang/String;

    .prologue
    .line 1039
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$30;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$30;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1047
    return-void
.end method

.method public static checkCoupon(Ljava/lang/String;)V
    .locals 2
    .param p0, "couponText"    # Ljava/lang/String;

    .prologue
    .line 1400
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$50;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$50;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1443
    return-void
.end method

.method public static deeplinkOpen(Ljava/lang/String;)V
    .locals 2
    .param p0, "deeplinkUrl"    # Ljava/lang/String;

    .prologue
    .line 943
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$22;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$22;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 951
    return-void
.end method

.method public static destroyAllPopups()V
    .locals 2

    .prologue
    .line 1833
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$73;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$73;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1839
    return-void
.end method

.method public static destroyPopup()V
    .locals 2

    .prologue
    .line 1824
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$72;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$72;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1830
    return-void
.end method

.method public static didGiveRewardItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "cv"    # Ljava/lang/String;
    .param p1, "rewardkey"    # Ljava/lang/String;

    .prologue
    .line 586
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$18;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$18;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 594
    return-void
.end method

.method public static enableService(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 1634
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$64;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$64;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1645
    return-void
.end method

.method public static enableServiceWithDelegate(Z)V
    .locals 5
    .param p0, "enable"    # Z

    .prologue
    .line 1648
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "LiveOps"

    const-string v2, "Unity: enableServiceWithDelegate, This Api is deprecated and noting to do"

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/liveops/utils/LiveOpsLogger;->logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1668
    return-void
.end method

.method public static endSession()V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$4;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public static firstTimeExperience(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1125
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$37;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$37;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1133
    return-void
.end method

.method public static firstTimeExperience(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 1136
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$38;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$38;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1144
    return-void
.end method

.method public static flush()V
    .locals 2

    .prologue
    .line 1842
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$74;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$74;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1849
    return-void
.end method

.method public static getClientPendingRewardItems()V
    .locals 2

    .prologue
    .line 572
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$17;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$17;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 581
    return-void
.end method

.method public static getTrackingParameter()V
    .locals 2

    .prologue
    .line 1894
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$76;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$76;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1930
    return-void
.end method

.method public static hideAD()V
    .locals 2

    .prologue
    .line 1292
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$48;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$48;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1300
    return-void
.end method

.method public static initializeLiveOps()V
    .locals 2

    .prologue
    .line 1447
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$51;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$51;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1458
    return-void
.end method

.method public static initializeLiveOps(Ljava/lang/String;)V
    .locals 2
    .param p0, "senderIDs"    # Ljava/lang/String;

    .prologue
    .line 1462
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$52;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$52;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1473
    return-void
.end method

.method public static loadVideoAd()V
    .locals 2

    .prologue
    .line 338
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$12;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$12;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method public static login(Ljava/lang/String;)V
    .locals 2
    .param p0, "usn"    # Ljava/lang/String;

    .prologue
    .line 1015
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$28;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$28;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1023
    return-void
.end method

.method public static openDialogTypeOfferwall()V
    .locals 2

    .prologue
    .line 307
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$9;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$9;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method public static openNanooFanPage(Z)V
    .locals 2
    .param p0, "openAutomatically"    # Z

    .prologue
    .line 1853
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1871
    return-void
.end method

.method public static openOfferwall()V
    .locals 2

    .prologue
    .line 296
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$8;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public static pauseLiveOps()V
    .locals 2

    .prologue
    .line 1507
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$55;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$55;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1514
    return-void
.end method

.method public static paymentView(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 8
    .param p0, "orderID"    # Ljava/lang/String;
    .param p1, "purchaseDataJsonString"    # Ljava/lang/String;
    .param p2, "discount"    # D
    .param p4, "deliveryCharge"    # D

    .prologue
    .line 1075
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$33;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$33;-><init>(Ljava/lang/String;Ljava/lang/String;DD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1083
    return-void
.end method

.method public static productView(Ljava/lang/String;)V
    .locals 2
    .param p0, "purchaseDataJsonString"    # Ljava/lang/String;

    .prologue
    .line 955
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$23;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$23;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 963
    return-void
.end method

.method public static purchase(Ljava/lang/String;)V
    .locals 3
    .param p0, "purchaseDataJsonString"    # Ljava/lang/String;

    .prologue
    .line 1190
    const-string v0, "IGAW_QA_3RD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$43;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$43;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1199
    return-void
.end method

.method public static purchase(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "productID"    # Ljava/lang/String;
    .param p1, "price"    # D
    .param p3, "currency"    # Ljava/lang/String;
    .param p4, "paymentMethod"    # Ljava/lang/String;

    .prologue
    .line 898
    sget-object v6, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$19;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$19;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 909
    return-void
.end method

.method public static purchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 7
    .param p0, "orderID"    # Ljava/lang/String;
    .param p1, "purchaseDataJsonString"    # Ljava/lang/String;
    .param p2, "discount"    # Ljava/lang/Double;
    .param p3, "deliveryCharge"    # Ljava/lang/Double;
    .param p4, "paymentMethod"    # Ljava/lang/String;

    .prologue
    .line 914
    sget-object v6, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$20;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$20;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 925
    return-void
.end method

.method public static purchaseBulk(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V
    .locals 10
    .param p0, "orderID"    # Ljava/lang/String;
    .param p1, "purchaseDataJsonString"    # Ljava/lang/String;
    .param p2, "discount"    # D
    .param p4, "deliveryCharge"    # D
    .param p6, "paymentMethod"    # Ljava/lang/String;

    .prologue
    .line 930
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$21;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$21;-><init>(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 939
    return-void
.end method

.method public static refund(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2
    .param p0, "orderID"    # Ljava/lang/String;
    .param p1, "purchaseDataJsonString"    # Ljava/lang/String;
    .param p2, "penaltyCharge"    # D

    .prologue
    .line 967
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$24;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$24;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 975
    return-void
.end method

.method public static refundBulk(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2
    .param p0, "orderID"    # Ljava/lang/String;
    .param p1, "purchaseDataJsonString"    # Ljava/lang/String;
    .param p2, "penaltyCharge"    # D

    .prologue
    .line 979
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$25;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$25;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 987
    return-void
.end method

.method public static registerFCMToken(Ljava/lang/String;)V
    .locals 2
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 1477
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$53;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$53;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1488
    return-void
.end method

.method public static requestPopupResource()V
    .locals 3

    .prologue
    .line 1720
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/igaworks/liveops/net/LiveOpsNetConfiguration;->IS_NATIVE_ANDROID_SDK:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v2, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$69;

    invoke-direct {v2}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$69;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1742
    return-void

    .line 1721
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1722
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static resumeLiveOps()V
    .locals 2

    .prologue
    .line 1493
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$54;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$54;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1504
    return-void
.end method

.method public static retention(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1147
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$39;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$39;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1155
    return-void
.end method

.method public static retention(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 1158
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$40;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$40;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1166
    return-void
.end method

.method public static reviewOrder(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 8
    .param p0, "orderID"    # Ljava/lang/String;
    .param p1, "purchaseDataJsonString"    # Ljava/lang/String;
    .param p2, "discount"    # D
    .param p4, "deliveryCharge"    # D

    .prologue
    .line 1051
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$31;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$31;-><init>(Ljava/lang/String;Ljava/lang/String;DD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1059
    return-void
.end method

.method public static reviewOrderBulk(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 8
    .param p0, "orderID"    # Ljava/lang/String;
    .param p1, "purchaseDataJsonString"    # Ljava/lang/String;
    .param p2, "discount"    # D
    .param p4, "deliveryCharge"    # D

    .prologue
    .line 1063
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$32;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$32;-><init>(Ljava/lang/String;Ljava/lang/String;DD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1071
    return-void
.end method

.method public static search(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "purchaseDataJsonString"    # Ljava/lang/String;

    .prologue
    .line 1087
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$34;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$34;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1095
    return-void
.end method

.method public static setAdpopcornOfferwallEventListener()V
    .locals 2

    .prologue
    .line 485
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$14;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$14;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method

.method public static setAge(I)V
    .locals 2
    .param p0, "age"    # I

    .prologue
    .line 1202
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$44;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$44;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1210
    return-void
.end method

.method public static setBigTextClientPushEvent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 10
    .param p0, "second"    # J
    .param p2, "contentText"    # Ljava/lang/String;
    .param p3, "bigContentTitle"    # Ljava/lang/String;
    .param p4, "bigText"    # Ljava/lang/String;
    .param p5, "summaryText"    # Ljava/lang/String;
    .param p6, "eventId"    # I
    .param p7, "alwaysIsShown"    # Z

    .prologue
    .line 1619
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1630
    return-void
.end method

.method public static setClientRewardCallbackListener()V
    .locals 2

    .prologue
    .line 514
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$16;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$16;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

.method public static setCustomCohort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "cohortVar"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1224
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$46;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$46;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1231
    return-void
.end method

.method public static setDeferredLinkListener()V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$6;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method public static setExceptionPermissionList(I)V
    .locals 2
    .param p0, "exceptionPermissionList"    # I

    .prologue
    .line 328
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$11;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$11;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method

.method public static setGender(I)V
    .locals 2
    .param p0, "gender"    # I

    .prologue
    .line 1213
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$45;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$45;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1221
    return-void
.end method

.method public static setNormalClientPushEvent(JLjava/lang/String;IZ)V
    .locals 8
    .param p0, "second"    # J
    .param p2, "contentText"    # Ljava/lang/String;
    .param p3, "eventId"    # I
    .param p4, "alwaysIsShown"    # Z

    .prologue
    .line 1603
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$62;

    move-wide v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$62;-><init>(JLjava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1614
    return-void
.end method

.method public static setNotificationIconName(Ljava/lang/String;)V
    .locals 2
    .param p0, "notificationIconName"    # Ljava/lang/String;

    .prologue
    .line 1671
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$65;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$65;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1682
    return-void
.end method

.method public static setNotificationIconStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "smallIcon"    # Ljava/lang/String;
    .param p1, "largeIcon"    # Ljava/lang/String;
    .param p2, "iconbackground_argb"    # Ljava/lang/String;

    .prologue
    .line 1685
    invoke-static {p2}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->HexToInt(Ljava/lang/String;)I

    move-result v0

    .line 1686
    .local v0, "parseColor":I
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v2, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$66;

    invoke-direct {v2, p0, p1, v0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$66;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1694
    return-void
.end method

.method public static setNotificationOption(II)V
    .locals 2
    .param p0, "priority"    # I
    .param p1, "visibility"    # I

    .prologue
    .line 1696
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$67;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$67;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1704
    return-void
.end method

.method public static setOfferwallThemeColor(Ljava/lang/String;)V
    .locals 2
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 400
    :try_start_0
    invoke-static {p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->HexToInt(Ljava/lang/String;)I

    move-result v0

    .line 401
    .local v0, "parseColor":I
    invoke-static {v0}, Lcom/igaworks/adpopcorn/style/ApStyleManager;->setThemeColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v0    # "parseColor":I
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setOfferwallTitle(Ljava/lang/String;)V
    .locals 1
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 407
    :try_start_0
    invoke-static {p0}, Lcom/igaworks/adpopcorn/style/ApStyleManager;->setOfferwallTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setOfferwallTitleBackgroundColor(Ljava/lang/String;)V
    .locals 2
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 420
    :try_start_0
    invoke-static {p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->HexToInt(Ljava/lang/String;)I

    move-result v0

    .line 421
    .local v0, "parseColor":I
    invoke-static {v0}, Lcom/igaworks/adpopcorn/style/ApStyleManager;->setOfferwallTitleBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v0    # "parseColor":I
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setOfferwallTitleColor(Ljava/lang/String;)V
    .locals 2
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 413
    :try_start_0
    invoke-static {p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->HexToInt(Ljava/lang/String;)I

    move-result v0

    .line 414
    .local v0, "parseColor":I
    invoke-static {v0}, Lcom/igaworks/adpopcorn/style/ApStyleManager;->setOfferwallTitleColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v0    # "parseColor":I
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setOfferwallTitleLogo(I)V
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 427
    :try_start_0
    invoke-static {p0}, Lcom/igaworks/adpopcorn/style/ApStyleManager;->setOfferwallTitleLogo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setReferralUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "deeplinkStr"    # Ljava/lang/String;

    .prologue
    .line 174
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$7;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$7;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public static setRegistrationIdEventListener()V
    .locals 2

    .prologue
    .line 1769
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$71;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$71;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1786
    return-void
.end method

.method public static setSensorLandscapeEnable(Z)V
    .locals 2
    .param p0, "isEnable"    # Z

    .prologue
    .line 318
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$10;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$10;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public static setStackingNotificationOption(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "useStacking"    # Z
    .param p1, "useTitleForStacking"    # Z
    .param p2, "ContentTitle"    # Ljava/lang/String;
    .param p3, "ContentText"    # Ljava/lang/String;
    .param p4, "bigContentTitle"    # Ljava/lang/String;
    .param p5, "bigContentSummaryText"    # Ljava/lang/String;

    .prologue
    .line 1706
    sget-object v7, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1714
    return-void
.end method

.method public static setTargetingData(Ljava/lang/String;F)V
    .locals 2
    .param p0, "userGroup"    # Ljava/lang/String;
    .param p1, "userData"    # F

    .prologue
    .line 1561
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$59;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$59;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1572
    return-void
.end method

.method public static setTargetingData(Ljava/lang/String;I)V
    .locals 2
    .param p0, "userGroup"    # Ljava/lang/String;
    .param p1, "userData"    # I

    .prologue
    .line 1532
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$57;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$57;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1543
    return-void
.end method

.method public static setTargetingData(Ljava/lang/String;J)V
    .locals 3
    .param p0, "userGroup"    # Ljava/lang/String;
    .param p1, "userData"    # J

    .prologue
    .line 1546
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$58;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$58;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1557
    return-void
.end method

.method public static setTargetingData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "userGroup"    # Ljava/lang/String;
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 1517
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$56;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$56;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1528
    return-void
.end method

.method public static setTargetingData(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "userGroup"    # Ljava/lang/String;
    .param p1, "userData"    # Z

    .prologue
    .line 1576
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$60;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$60;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1587
    return-void
.end method

.method public static setUnityPlatform()V
    .locals 2

    .prologue
    .line 503
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$15;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$15;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 510
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 145
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$5;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public static share(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "sharingChennelString"    # Ljava/lang/String;
    .param p1, "purchaseDataJsonString"    # Ljava/lang/String;

    .prologue
    .line 1099
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$35;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$35;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1109
    return-void
.end method

.method public static showAD(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1235
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1269
    return-void
.end method

.method public static showCouponDialog(Z)V
    .locals 2
    .param p0, "showResultMsgToast"    # Z

    .prologue
    .line 1342
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$49;

    invoke-direct {v1, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$49;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1396
    return-void
.end method

.method public static showPopUp(Ljava/lang/String;)V
    .locals 3
    .param p0, "spaceKey"    # Ljava/lang/String;

    .prologue
    .line 1747
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/igaworks/liveops/net/LiveOpsNetConfiguration;->IS_NATIVE_ANDROID_SDK:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    :goto_0
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v2, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70;

    invoke-direct {v2, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$70;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1766
    return-void

    .line 1748
    :catch_0
    move-exception v0

    .line 1749
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static showVideoAd()V
    .locals 2

    .prologue
    .line 366
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$13;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$13;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method

.method public static startApplication()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$2;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public static startApplication(Ljava/lang/String;)V
    .locals 2
    .param p0, "IMEI"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v0, "IGAW_QA"

    const-string v1, "Depreciated API since Common SDK version 4.4.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public static startLogging()V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$1;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public static startSession()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$3;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method private static toByte(C)B
    .locals 1
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 445
    packed-switch p0, :pswitch_data_0

    .line 479
    :goto_0
    :pswitch_0
    return v0

    .line 449
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 451
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 453
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 455
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 457
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 459
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 461
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 463
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 465
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 467
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 469
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 471
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 473
    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    .line 475
    :pswitch_e
    const/16 v0, 0xe

    goto :goto_0

    .line 477
    :pswitch_f
    const/16 v0, 0xf

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static viewHome()V
    .locals 2

    .prologue
    .line 1113
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$36;

    invoke-direct {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$36;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1121
    return-void
.end method
