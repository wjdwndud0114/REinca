.class public Lcom/igaworks/commerce/impl/CommerceImpl;
.super Ljava/lang/Object;
.source "CommerceImpl.java"

# interfaces
.implements Lcom/igaworks/commerce/interfaces/CommerceInterface;
.implements Lcom/igaworks/interfaces/ExtendedCommonActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/commerce/impl/CommerceImpl$ApiCommerce;
    }
.end annotation


# static fields
.field public static final CATEGORY_EVENT:Ljava/lang/String; = "category"

.field public static final CV2_ADD_TO_CART:Ljava/lang/String; = "add_to_cart"

.field public static final CV2_ADD_TO_WISHLIST:Ljava/lang/String; = "add_to_wishlist"

.field public static final CV2_APP_OPEN:Ljava/lang/String; = "app_open"

.field public static final CV2_CATEGORY_VIEW:Ljava/lang/String; = "category_view"

.field public static final CV2_DEEPLINK_OPEN:Ljava/lang/String; = "deeplink_open"

.field public static final CV2_LOGIN:Ljava/lang/String; = "login"

.field public static final CV2_PAYMENT_VIEW:Ljava/lang/String; = "payment_view"

.field public static final CV2_PRDUCT_VIEW:Ljava/lang/String; = "product_view"

.field public static final CV2_PURCHASE:Ljava/lang/String; = "purchase"

.field public static final CV2_REFUND:Ljava/lang/String; = "refund"

.field public static final CV2_REVIEW_ORDER:Ljava/lang/String; = "review_order"

.field public static final CV2_SERACH:Ljava/lang/String; = "search"

.field public static final CV2_SHARE:Ljava/lang/String; = "share"

.field public static final CV2_VIEW_HOME:Ljava/lang/String; = "view_home"

.field public static final DOMAIN_AB4C:I = 0x0

.field public static final DOMAIN_NEW_COMMERCEV2:I = 0x1

.field public static final HOME_EVENT:Ljava/lang/String; = "home"

.field public static final LOGIN_EVENT:Ljava/lang/String; = "login"

.field public static final LOGOUT_EVENT:Ljava/lang/String; = "logout"

.field public static final ORDER_CONFIRMATION_EVENT:Ljava/lang/String; = "orderConfirmation"

.field public static final ORDER_REVIEW_EVENT:Ljava/lang/String; = "orderReview"

.field public static final PAYMENT_MODE_EVENT:Ljava/lang/String; = "paymentModeSelection"

.field public static final PRODUCT_DETAIL_EVENT:Ljava/lang/String; = "productDetail"

.field public static final SHOPPING_CART_EVENT:Ljava/lang/String; = "shoppingCart"

.field public static final SUB_CATEGORY_EVENT:Ljava/lang/String; = "subCategory"

.field public static final SUB_SUB_CATEGORY_EVENT:Ljava/lang/String; = "subSubCategory"

.field public static final WISH_LIST_EVENT:Ljava/lang/String; = "wishList"

.field private static httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-direct {v0}, Lcom/igaworks/commerce/net/CommerceHttpManager;-><init>()V

    sput-object v0, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$000()Lcom/igaworks/commerce/net/CommerceHttpManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    return-object v0
.end method

.method private restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/igaworks/commerce/model/CommerceV2EventItem;

    .prologue
    const/4 v7, 0x0

    .line 1583
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 1584
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v2

    .line 1586
    .local v2, "itemsForCommerceV2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 1590
    :try_start_0
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "events for commerceV2 - count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {p1, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1591
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    sget-object v3, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v4

    invoke-virtual {v3, v4, p1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1610
    :goto_0
    return-void

    .line 1594
    :catch_0
    move-exception v1

    .line 1596
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "events for commerceV2 error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4, v7, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1601
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p2}, Lcom/igaworks/commerce/model/CommerceV2EventItem;->getRetryCnt()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_1

    .line 1603
    invoke-virtual {p2}, Lcom/igaworks/commerce/model/CommerceV2EventItem;->getKey()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->removeRetryCount(I)Z

    goto :goto_0

    .line 1607
    :cond_1
    invoke-virtual {p2}, Lcom/igaworks/commerce/model/CommerceV2EventItem;->getKey()I

    move-result v3

    invoke-virtual {p2}, Lcom/igaworks/commerce/model/CommerceV2EventItem;->getJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->updateOrInsertConversion(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 914
    sget-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v2, :cond_1

    .line 916
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 917
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v1

    .line 919
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 921
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry event for CommerceV2 - count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {p1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 924
    :cond_0
    new-instance v2, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const-string v3, "add_to_cart"

    invoke-virtual {p0, p1, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3, v7}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    sget-object v2, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v1}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 932
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_0
    return-void

    .line 930
    :cond_1
    new-instance v2, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const-string v3, "add_to_cart"

    invoke-virtual {p0, p1, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3, v7}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_0
.end method

.method public addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2192
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "add_to_cart"

    invoke-virtual {p0, p1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2196
    .local v6, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "attributes"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2197
    .local v4, "jAttributes":Lorg/json/JSONObject;
    if-nez v4, :cond_0

    .line 2199
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2200
    .restart local v4    # "jAttributes":Lorg/json/JSONObject;
    const-string v8, "attributes"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2203
    :cond_0
    if-eqz p3, :cond_1

    .line 2205
    const/4 v0, 0x0

    .line 2206
    .local v0, "attrCount":I
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2207
    .local v7, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2209
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 2210
    const/4 v9, 0x5

    if-le v0, v9, :cond_3

    .line 2212
    const-string v8, "IGAW_QA"

    const-string v9, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {p1, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2226
    .end local v0    # "attrCount":I
    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    sget-boolean v8, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v8, :cond_4

    .line 2228
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v1

    .line 2229
    .local v1, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v3

    .line 2231
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 2233
    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Retry event for CommerceV2 - count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {p1, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2236
    :cond_2
    new-instance v8, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v9, -0x1

    invoke-virtual {p0, p2, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2238
    sget-object v8, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v9

    invoke-virtual {v8, v9, p1, v3}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2244
    .end local v1    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_2
    return-void

    .line 2217
    .restart local v0    # "attrCount":I
    .restart local v4    # "jAttributes":Lorg/json/JSONObject;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2221
    .end local v0    # "attrCount":I
    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 2223
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 2242
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_4
    new-instance v8, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v9, -0x1

    invoke-virtual {p0, p2, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_2
.end method

.method public addToCartBulk(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 937
    const-string v3, "add_to_cart"

    invoke-virtual {p0, p1, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 939
    .local v2, "pObj":Lorg/json/JSONObject;
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 959
    :goto_0
    return-void

    .line 941
    :cond_0
    sget-boolean v3, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v3, :cond_2

    .line 943
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 944
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v1

    .line 946
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 948
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry event for CommerceV2 - count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {p1, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 951
    :cond_1
    new-instance v3, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    invoke-virtual {p0, p2, v2}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    sget-object v3, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v4

    invoke-virtual {v3, v4, p1, v1}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 957
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :cond_2
    new-instance v3, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    invoke-virtual {p0, p2, v2}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_0
.end method

.method public addToCartBulk(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2249
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "add_to_cart"

    invoke-virtual {p0, p1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2251
    .local v6, "pObj":Lorg/json/JSONObject;
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2303
    :goto_0
    return-void

    .line 2255
    :cond_0
    :try_start_0
    const-string v8, "attributes"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2256
    .local v4, "jAttributes":Lorg/json/JSONObject;
    if-nez v4, :cond_1

    .line 2258
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2259
    .restart local v4    # "jAttributes":Lorg/json/JSONObject;
    const-string v8, "attributes"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2262
    :cond_1
    if-eqz p3, :cond_2

    .line 2264
    const/4 v0, 0x0

    .line 2265
    .local v0, "attrCount":I
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2266
    .local v7, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2268
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 2269
    const/4 v9, 0x5

    if-le v0, v9, :cond_4

    .line 2271
    const-string v8, "IGAW_QA"

    const-string v9, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {p1, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2285
    .end local v0    # "attrCount":I
    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_2
    sget-boolean v8, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v8, :cond_5

    .line 2287
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v1

    .line 2288
    .local v1, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v3

    .line 2290
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 2292
    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Retry event for CommerceV2 - count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {p1, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2295
    :cond_3
    new-instance v8, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v9, -0x1

    invoke-virtual {p0, p2, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2297
    sget-object v8, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v9

    invoke-virtual {v8, v9, p1, v3}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 2276
    .end local v1    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    .restart local v0    # "attrCount":I
    .restart local v4    # "jAttributes":Lorg/json/JSONObject;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2280
    .end local v0    # "attrCount":I
    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 2282
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 2301
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_5
    new-instance v8, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v9, -0x1

    invoke-virtual {p0, p2, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto/16 :goto_0
.end method

.method public addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 964
    const-string v3, "add_to_wishlist"

    invoke-virtual {p0, p1, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 966
    .local v2, "pObj":Lorg/json/JSONObject;
    invoke-virtual {p0, p2, v2}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 968
    sget-boolean v3, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v3, :cond_1

    .line 970
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 971
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v1

    .line 973
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 975
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry event for CommerceV2 - count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {p1, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 978
    :cond_0
    new-instance v3, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    sget-object v3, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v4

    invoke-virtual {v3, v4, p1, v1}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 986
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_0
    return-void

    .line 984
    :cond_1
    new-instance v3, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_0
.end method

.method public addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2308
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "add_to_wishlist"

    invoke-virtual {p0, p1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2312
    .local v6, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "attributes"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2313
    .local v4, "jAttributes":Lorg/json/JSONObject;
    if-nez v4, :cond_0

    .line 2315
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2316
    .restart local v4    # "jAttributes":Lorg/json/JSONObject;
    const-string v8, "attributes"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2319
    :cond_0
    if-eqz p3, :cond_1

    .line 2321
    const/4 v0, 0x0

    .line 2322
    .local v0, "attrCount":I
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2323
    .local v7, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2325
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 2326
    const/4 v9, 0x5

    if-le v0, v9, :cond_3

    .line 2328
    const-string v8, "IGAW_QA"

    const-string v9, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {p1, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2342
    .end local v0    # "attrCount":I
    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    sget-boolean v8, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v8, :cond_4

    .line 2344
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v1

    .line 2345
    .local v1, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v3

    .line 2347
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 2349
    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Retry event for CommerceV2 - count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {p1, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2352
    :cond_2
    new-instance v8, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v9, -0x1

    invoke-virtual {p0, p2, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2354
    sget-object v8, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v9

    invoke-virtual {v8, v9, p1, v3}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2360
    .end local v1    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_2
    return-void

    .line 2333
    .restart local v0    # "attrCount":I
    .restart local v4    # "jAttributes":Lorg/json/JSONObject;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2337
    .end local v0    # "attrCount":I
    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 2339
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 2358
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_4
    new-instance v8, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v9, -0x1

    invoke-virtual {p0, p2, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_2
.end method

.method public appOpen(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 719
    new-instance v0, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "app_open"

    invoke-virtual {p0, p1, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    .line 720
    sget-boolean v0, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/igaworks/commerce/impl/CommerceImpl;->flushForCommerceV2(Landroid/content/Context;)V

    .line 721
    :cond_0
    return-void
.end method

.method public appOpen(Landroid/content/Context;Ljava/util/Map;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1874
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "app_open"

    invoke-virtual {p0, p1, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1878
    .local v4, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "attributes"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1879
    .local v2, "jAttributes":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 1881
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1882
    .restart local v2    # "jAttributes":Lorg/json/JSONObject;
    const-string v6, "attributes"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1885
    :cond_0
    if-eqz p2, :cond_1

    .line 1887
    const/4 v0, 0x0

    .line 1888
    .local v0, "attrCount":I
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 1889
    .local v5, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1891
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 1892
    const/4 v7, 0x5

    if-le v0, v7, :cond_3

    .line 1894
    const-string v6, "IGAW_QA"

    const-string v7, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {p1, v6, v7, v8, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1908
    .end local v0    # "attrCount":I
    .end local v2    # "jAttributes":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    new-instance v6, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    .line 1909
    sget-boolean v6, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0, p1}, Lcom/igaworks/commerce/impl/CommerceImpl;->flushForCommerceV2(Landroid/content/Context;)V

    .line 1910
    :cond_2
    return-void

    .line 1899
    .restart local v0    # "attrCount":I
    .restart local v2    # "jAttributes":Lorg/json/JSONObject;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1903
    .end local v0    # "attrCount":I
    .end local v2    # "jAttributes":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 1905
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public category(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "catID"    # Ljava/lang/String;

    .prologue
    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "catid"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v1, Lcom/igaworks/commerce/model/CustomEventModel;

    const-string v2, "category"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/igaworks/commerce/model/CustomEventModel;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {p0, p1, v1}, Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V

    .line 298
    return-void
.end method

.method public categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    .prologue
    .line 1014
    const-string v12, "category_view"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1019
    .local v8, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v12, "attributes"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1020
    .local v7, "jAttributes":Lorg/json/JSONObject;
    if-nez v7, :cond_0

    .line 1022
    new-instance v7, Lorg/json/JSONObject;

    .end local v7    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1023
    .restart local v7    # "jAttributes":Lorg/json/JSONObject;
    const-string v12, "attributes"

    invoke-virtual {v8, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1025
    :cond_0
    const/4 v12, 0x5

    new-array v2, v12, [Ljava/lang/String;

    .line 1026
    .local v2, "categories":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->getCategoryFullString()Ljava/lang/String;

    move-result-object v10

    .line 1028
    .local v10, "str_category":Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v12, "\\."

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1030
    .local v11, "temp":[Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v12, v11

    if-ge v5, v12, :cond_2

    .line 1032
    aget-object v12, v11, v5

    aput-object v12, v2, v5

    .line 1033
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "category%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v16, v5, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1035
    .local v9, "pStr":Ljava/lang/String;
    aget-object v12, v2, v5

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1030
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1028
    .end local v5    # "i":I
    .end local v9    # "pStr":Ljava/lang/String;
    .end local v11    # "temp":[Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    new-array v11, v12, [Ljava/lang/String;

    goto :goto_0

    .line 1038
    .restart local v5    # "i":I
    .restart local v11    # "temp":[Ljava/lang/String;
    :cond_2
    sget-boolean v12, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v12, :cond_4

    .line 1040
    invoke-static/range {p1 .. p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v3

    .line 1041
    .local v3, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v3}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v6

    .line 1043
    .local v6, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 1045
    const-string v12, "IGAW_QA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Retry event for CommerceV2 - count : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v14, v15}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1048
    :cond_3
    new-instance v12, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    sget-object v12, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0, v6}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1062
    .end local v2    # "categories":[Ljava/lang/String;
    .end local v3    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v5    # "i":I
    .end local v6    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    .end local v7    # "jAttributes":Lorg/json/JSONObject;
    .end local v10    # "str_category":Ljava/lang/String;
    .end local v11    # "temp":[Ljava/lang/String;
    :goto_2
    return-void

    .line 1054
    .restart local v2    # "categories":[Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v7    # "jAttributes":Lorg/json/JSONObject;
    .restart local v10    # "str_category":Ljava/lang/String;
    .restart local v11    # "temp":[Ljava/lang/String;
    :cond_4
    new-instance v12, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1058
    .end local v2    # "categories":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "jAttributes":Lorg/json/JSONObject;
    .end local v10    # "str_category":Ljava/lang/String;
    .end local v11    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1060
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1067
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    const-string v12, "category_view"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1072
    .local v8, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v12, "attributes"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1073
    .local v7, "jAttributes":Lorg/json/JSONObject;
    if-nez v7, :cond_0

    .line 1075
    new-instance v7, Lorg/json/JSONObject;

    .end local v7    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1076
    .restart local v7    # "jAttributes":Lorg/json/JSONObject;
    const-string v12, "attributes"

    invoke-virtual {v8, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1078
    :cond_0
    const/4 v12, 0x5

    new-array v2, v12, [Ljava/lang/String;

    .line 1079
    .local v2, "categories":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->getCategoryFullString()Ljava/lang/String;

    move-result-object v10

    .line 1081
    .local v10, "str_category":Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v12, "\\."

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1083
    .local v11, "temp":[Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v12, v11

    if-ge v5, v12, :cond_2

    .line 1085
    aget-object v12, v11, v5

    aput-object v12, v2, v5

    .line 1086
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "category%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v16, v5, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1088
    .local v9, "pStr":Ljava/lang/String;
    aget-object v12, v2, v5

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1083
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1081
    .end local v5    # "i":I
    .end local v9    # "pStr":Ljava/lang/String;
    .end local v11    # "temp":[Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    new-array v11, v12, [Ljava/lang/String;

    goto :goto_0

    .line 1091
    .restart local v5    # "i":I
    .restart local v11    # "temp":[Ljava/lang/String;
    :cond_2
    sget-boolean v12, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v12, :cond_4

    .line 1093
    invoke-static/range {p1 .. p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v3

    .line 1094
    .local v3, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v3}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v6

    .line 1096
    .local v6, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 1098
    const-string v12, "IGAW_QA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Retry event for CommerceV2 - count : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v14, v15}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1101
    :cond_3
    new-instance v12, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v13, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    sget-object v12, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0, v6}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1115
    .end local v2    # "categories":[Ljava/lang/String;
    .end local v3    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v5    # "i":I
    .end local v6    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    .end local v7    # "jAttributes":Lorg/json/JSONObject;
    .end local v10    # "str_category":Ljava/lang/String;
    .end local v11    # "temp":[Ljava/lang/String;
    :goto_2
    return-void

    .line 1107
    .restart local v2    # "categories":[Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v7    # "jAttributes":Lorg/json/JSONObject;
    .restart local v10    # "str_category":Ljava/lang/String;
    .restart local v11    # "temp":[Ljava/lang/String;
    :cond_4
    new-instance v12, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v13, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1111
    .end local v2    # "categories":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "jAttributes":Lorg/json/JSONObject;
    .end local v10    # "str_category":Ljava/lang/String;
    .end local v11    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1113
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;Ljava/util/Map;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2494
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p4, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "category_view"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 2499
    .local v13, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v18, "attributes"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 2500
    .local v11, "jAttributes":Lorg/json/JSONObject;
    if-nez v11, :cond_0

    .line 2502
    new-instance v11, Lorg/json/JSONObject;

    .end local v11    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2503
    .restart local v11    # "jAttributes":Lorg/json/JSONObject;
    const-string v18, "attributes"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2506
    :cond_0
    if-eqz p4, :cond_1

    .line 2508
    const/4 v5, 0x0

    .line 2509
    .local v5, "attrCount":I
    new-instance v17, Ljava/util/TreeMap;

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2510
    .local v17, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2512
    .local v12, "key":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 2513
    const/16 v19, 0x5

    move/from16 v0, v19

    if-le v5, v0, :cond_2

    .line 2515
    const-string v18, "IGAW_QA"

    const-string v19, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2524
    .end local v5    # "attrCount":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v17    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v6, v0, [Ljava/lang/String;

    .line 2525
    .local v6, "categories":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->getCategoryFullString()Ljava/lang/String;

    move-result-object v15

    .line 2527
    .local v15, "str_category":Ljava/lang/String;
    if-eqz p2, :cond_3

    const-string v18, "\\."

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2529
    .local v16, "temp":[Ljava/lang/String;
    :goto_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_4

    .line 2531
    aget-object v18, v16, v9

    aput-object v18, v6, v9

    .line 2532
    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v19, "category%d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v9, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2534
    .local v14, "pStr":Ljava/lang/String;
    aget-object v18, v6, v9

    move-object/from16 v0, v18

    invoke-virtual {v11, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2529
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2520
    .end local v6    # "categories":[Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "pStr":Ljava/lang/String;
    .end local v15    # "str_category":Ljava/lang/String;
    .end local v16    # "temp":[Ljava/lang/String;
    .restart local v5    # "attrCount":I
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v17    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2556
    .end local v5    # "attrCount":I
    .end local v11    # "jAttributes":Lorg/json/JSONObject;
    .end local v12    # "key":Ljava/lang/String;
    .end local v17    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 2558
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 2560
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_3
    return-void

    .line 2527
    .restart local v6    # "categories":[Ljava/lang/String;
    .restart local v11    # "jAttributes":Lorg/json/JSONObject;
    .restart local v15    # "str_category":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_1

    .line 2537
    .restart local v9    # "i":I
    .restart local v16    # "temp":[Ljava/lang/String;
    :cond_4
    sget-boolean v18, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v18, :cond_6

    .line 2539
    invoke-static/range {p1 .. p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v7

    .line 2540
    .local v7, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v7}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v10

    .line 2542
    .local v10, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_5

    .line 2544
    const-string v18, "IGAW_QA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Retry event for CommerceV2 - count : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2547
    :cond_5
    new-instance v18, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2549
    sget-object v18, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v10}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 2553
    .end local v7    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v10    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :cond_6
    new-instance v18, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/Map;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2422
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "category_view"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 2427
    .local v13, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v18, "attributes"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 2428
    .local v11, "jAttributes":Lorg/json/JSONObject;
    if-nez v11, :cond_0

    .line 2430
    new-instance v11, Lorg/json/JSONObject;

    .end local v11    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2431
    .restart local v11    # "jAttributes":Lorg/json/JSONObject;
    const-string v18, "attributes"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2434
    :cond_0
    if-eqz p3, :cond_1

    .line 2436
    const/4 v5, 0x0

    .line 2437
    .local v5, "attrCount":I
    new-instance v17, Ljava/util/TreeMap;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2438
    .local v17, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2440
    .local v12, "key":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 2441
    const/16 v19, 0x5

    move/from16 v0, v19

    if-le v5, v0, :cond_2

    .line 2443
    const-string v18, "IGAW_QA"

    const-string v19, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2452
    .end local v5    # "attrCount":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v17    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v6, v0, [Ljava/lang/String;

    .line 2453
    .local v6, "categories":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->getCategoryFullString()Ljava/lang/String;

    move-result-object v15

    .line 2455
    .local v15, "str_category":Ljava/lang/String;
    if-eqz p2, :cond_3

    const-string v18, "\\."

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2457
    .local v16, "temp":[Ljava/lang/String;
    :goto_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_4

    .line 2459
    aget-object v18, v16, v9

    aput-object v18, v6, v9

    .line 2460
    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v19, "category%d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v9, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2462
    .local v14, "pStr":Ljava/lang/String;
    aget-object v18, v6, v9

    move-object/from16 v0, v18

    invoke-virtual {v11, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2457
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2448
    .end local v6    # "categories":[Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "pStr":Ljava/lang/String;
    .end local v15    # "str_category":Ljava/lang/String;
    .end local v16    # "temp":[Ljava/lang/String;
    .restart local v5    # "attrCount":I
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v17    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2485
    .end local v5    # "attrCount":I
    .end local v11    # "jAttributes":Lorg/json/JSONObject;
    .end local v12    # "key":Ljava/lang/String;
    .end local v17    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 2487
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 2489
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_3
    return-void

    .line 2455
    .restart local v6    # "categories":[Ljava/lang/String;
    .restart local v11    # "jAttributes":Lorg/json/JSONObject;
    .restart local v15    # "str_category":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_1

    .line 2465
    .restart local v9    # "i":I
    .restart local v16    # "temp":[Ljava/lang/String;
    :cond_4
    sget-boolean v18, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v18, :cond_6

    .line 2467
    invoke-static/range {p1 .. p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v7

    .line 2468
    .local v7, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v7}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v10

    .line 2470
    .local v10, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_5

    .line 2472
    const-string v18, "IGAW_QA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Retry event for CommerceV2 - count : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2475
    :cond_5
    new-instance v18, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2477
    sget-object v18, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v10}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 2481
    .end local v7    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v10    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :cond_6
    new-instance v18, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public deeplinkOpen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deeplinkUrl"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 726
    if-nez p2, :cond_0

    .line 728
    const-string p2, ""

    .line 729
    const-string v5, "IGAW_QA"

    const-string v6, "Commerce >> deeplinkOpen for commerceV2 Param deeplink Url is \'null\'"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    const-string v5, "deeplink_open"

    invoke-virtual {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 735
    .local v4, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "attributes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 736
    .local v3, "jAttributes":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 738
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 739
    .restart local v3    # "jAttributes":Lorg/json/JSONObject;
    const-string v5, "attributes"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    :cond_1
    const-string v5, "deeplink_url"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    :goto_0
    sget-boolean v5, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v5, :cond_3

    .line 750
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 751
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v2

    .line 753
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 755
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry event for CommerceV2 - count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {p1, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 758
    :cond_2
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    invoke-virtual {p0, v11, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6, v10}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    sget-object v5, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    invoke-virtual {v5, v6, p1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 767
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_1
    return-void

    .line 743
    :catch_0
    move-exception v1

    .line 745
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 764
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    invoke-virtual {p0, v11, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6, v10}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_1
.end method

.method public deeplinkOpen(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deeplinkUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1915
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 1917
    const-string p2, ""

    .line 1918
    const-string v8, "IGAW_QA"

    const-string v9, "Commerce >> deeplinkOpen for commerceV2 Param deeplink Url is \'null\'"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :cond_0
    const-string v8, "deeplink_open"

    invoke-virtual {p0, p1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1924
    .local v6, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "attributes"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1925
    .local v4, "jAttributes":Lorg/json/JSONObject;
    if-nez v4, :cond_1

    .line 1927
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1928
    .restart local v4    # "jAttributes":Lorg/json/JSONObject;
    const-string v8, "attributes"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1931
    :cond_1
    if-eqz p3, :cond_2

    .line 1933
    const/4 v0, 0x0

    .line 1934
    .local v0, "attrCount":I
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 1935
    .local v7, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1937
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 1938
    const/4 v9, 0x5

    if-le v0, v9, :cond_4

    .line 1940
    const-string v8, "IGAW_QA"

    const-string v9, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {p1, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1949
    .end local v0    # "attrCount":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v8, "deeplink_url"

    invoke-virtual {v4, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1956
    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    :goto_1
    sget-boolean v8, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v8, :cond_5

    .line 1958
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v1

    .line 1959
    .local v1, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v3

    .line 1961
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 1963
    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Retry event for CommerceV2 - count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {p1, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1966
    :cond_3
    new-instance v8, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    sget-object v8, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v9

    invoke-virtual {v8, v9, p1, v3}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1974
    .end local v1    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_2
    return-void

    .line 1945
    .restart local v0    # "attrCount":I
    .restart local v4    # "jAttributes":Lorg/json/JSONObject;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1951
    .end local v0    # "attrCount":I
    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1953
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1972
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_5
    new-instance v8, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_2
.end method

.method public fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/igaworks/commerce/model/CustomEventModel;

    .prologue
    .line 216
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/commerce/impl/CommerceImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/commerce/impl/CommerceImpl$1;-><init>(Lcom/igaworks/commerce/impl/CommerceImpl;Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method public fireEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 238
    if-nez p2, :cond_0

    .line 239
    const-string v0, "IGAW_QA"

    const-string v1, "eventFired >> event is null"

    invoke-static {p1, v0, v1, v2, v2}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 242
    :cond_0
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/commerce/impl/CommerceImpl$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/igaworks/commerce/impl/CommerceImpl$2;-><init>(Lcom/igaworks/commerce/impl/CommerceImpl;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method public flushForCommerceV2(Landroid/content/Context;)V
    .locals 2
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 1615
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/commerce/impl/CommerceImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/commerce/impl/CommerceImpl$5;-><init>(Lcom/igaworks/commerce/impl/CommerceImpl;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1649
    return-void
.end method

.method public home(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    new-instance v0, Lcom/igaworks/commerce/model/CustomEventModel;

    const-string v1, "home"

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/igaworks/commerce/model/CustomEventModel;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V

    .line 266
    return-void
.end method

.method public login(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 772
    sget-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v2, :cond_1

    .line 774
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 775
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v1

    .line 777
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 779
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry event for CommerceV2 - count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {p1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 782
    :cond_0
    new-instance v2, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const-string v3, "login"

    invoke-virtual {p0, p1, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v8, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3, v7}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    sget-object v2, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v1}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 791
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_0
    return-void

    .line 788
    :cond_1
    new-instance v2, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const-string v3, "login"

    invoke-virtual {p0, p1, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v8, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3, v7}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_0
.end method

.method public login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usn"    # Ljava/lang/String;
    .param p3, "hashedEmail"    # Ljava/lang/String;

    .prologue
    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "usn"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v1, Landroid/util/Pair;

    const-string v2, "emailhash"

    invoke-direct {v1, v2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v1, Lcom/igaworks/commerce/model/CustomEventModel;

    const-string v2, "login"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/igaworks/commerce/model/CustomEventModel;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {p0, p1, v1}, Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V

    .line 277
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "userId"

    invoke-static {v1, v2, p2}, Lcom/igaworks/commerce/db/DemographicDAO;->saveDemographic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "email"

    invoke-static {v1, v2, p3}, Lcom/igaworks/commerce/db/DemographicDAO;->saveDemographic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public login(Landroid/content/Context;Ljava/util/Map;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1979
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "login"

    invoke-virtual {p0, p1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1983
    .local v6, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "attributes"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1984
    .local v4, "jAttributes":Lorg/json/JSONObject;
    if-nez v4, :cond_0

    .line 1986
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1987
    .restart local v4    # "jAttributes":Lorg/json/JSONObject;
    const-string v8, "attributes"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1990
    :cond_0
    if-eqz p2, :cond_1

    .line 1992
    const/4 v0, 0x0

    .line 1993
    .local v0, "attrCount":I
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 1994
    .local v7, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1996
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 1997
    const/4 v9, 0x5

    if-le v0, v9, :cond_3

    .line 1999
    const-string v8, "IGAW_QA"

    const-string v9, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {p1, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2013
    .end local v0    # "attrCount":I
    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    sget-boolean v8, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v8, :cond_4

    .line 2015
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v1

    .line 2016
    .local v1, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v3

    .line 2018
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 2020
    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Retry event for CommerceV2 - count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {p1, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2023
    :cond_2
    new-instance v8, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2025
    sget-object v8, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v9

    invoke-virtual {v8, v9, p1, v3}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2031
    .end local v1    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_2
    return-void

    .line 2004
    .restart local v0    # "attrCount":I
    .restart local v4    # "jAttributes":Lorg/json/JSONObject;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2008
    .end local v0    # "attrCount":I
    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 2010
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 2029
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_4
    new-instance v8, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_2
.end method

.method public logout(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    new-instance v0, Lcom/igaworks/commerce/model/CustomEventModel;

    const-string v1, "logout"

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/igaworks/commerce/model/CustomEventModel;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V

    .line 287
    return-void
.end method

.method public makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pEventType"    # Ljava/lang/String;

    .prologue
    .line 1414
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1415
    .local v1, "pObj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1417
    .local v2, "pObj_att":Lorg/json/JSONObject;
    if-nez p1, :cond_0

    .line 1418
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1421
    :cond_0
    if-nez p1, :cond_1

    .line 1422
    const-string v4, "IGAW_QA"

    const-string v5, "makeCommonJsonForCommerceV2 >> Context is null. check start session is called."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_1
    :try_start_0
    const-string v4, "event_type"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1427
    const-string v4, "event_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1428
    const-string v4, "created_at"

    invoke-static {p1}, Lcom/igaworks/util/CommonHelper;->GetKSTServerTimeAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1429
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    .end local v2    # "pObj_att":Lorg/json/JSONObject;
    .local v3, "pObj_att":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "attributes"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 1436
    .end local v3    # "pObj_att":Lorg/json/JSONObject;
    .restart local v2    # "pObj_att":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 1432
    :catch_0
    move-exception v0

    .line 1434
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1432
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "pObj_att":Lorg/json/JSONObject;
    .restart local v3    # "pObj_att":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "pObj_att":Lorg/json/JSONObject;
    .restart local v2    # "pObj_att":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 16
    .param p1, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p2, "pObj"    # Lorg/json/JSONObject;

    .prologue
    .line 1443
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1444
    .local v6, "jObj_product":Lorg/json/JSONObject;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1447
    .local v9, "product_attrs":Lorg/json/JSONObject;
    :try_start_0
    const-string v11, "products"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1449
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1450
    .local v5, "jArr_products":Lorg/json/JSONArray;
    const-string v11, "products"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1456
    :goto_0
    if-eqz p1, :cond_5

    .line 1458
    const-string v11, "product_id"

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getProductID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1459
    const-string v11, "product_name"

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getProductName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1460
    const-string v11, "price"

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getPrice()D

    move-result-wide v12

    invoke-virtual {v6, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1461
    const-string v11, "discount"

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getDiscount()D

    move-result-wide v12

    invoke-virtual {v6, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1462
    const-string v11, "quantity"

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getQuantity()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1463
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getCurrency()Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v11

    if-eqz v11, :cond_3

    const-string v11, "currency"

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getCurrency()Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1467
    :cond_0
    :goto_1
    const/4 v11, 0x5

    new-array v2, v11, [Ljava/lang/String;

    .line 1468
    .local v2, "categories":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getCategory()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getCategory()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\."

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1470
    .local v10, "temp":[Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v11, v10

    if-ge v4, v11, :cond_7

    .line 1472
    aget-object v11, v10, v4

    aput-object v11, v2, v4

    .line 1473
    aget-object v11, v10, v4

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1475
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "category%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int/lit8 v15, v4, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1476
    .local v8, "pStr":Ljava/lang/String;
    aget-object v11, v2, v4

    invoke-virtual {v9, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1470
    .end local v8    # "pStr":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1454
    .end local v2    # "categories":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jArr_products":Lorg/json/JSONArray;
    .end local v10    # "temp":[Ljava/lang/String;
    :cond_2
    const-string v11, "products"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .restart local v5    # "jArr_products":Lorg/json/JSONArray;
    goto/16 :goto_0

    .line 1464
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getStandardCurrency()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getStandardCurrency()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_4
    const-string v11, "currency"

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getStandardCurrency()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1494
    .end local v5    # "jArr_products":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 1497
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 1500
    const/16 p2, 0x0

    .end local v3    # "e":Lorg/json/JSONException;
    .end local p2    # "pObj":Lorg/json/JSONObject;
    :cond_5
    :goto_4
    return-object p2

    .line 1468
    .restart local v2    # "categories":[Ljava/lang/String;
    .restart local v5    # "jArr_products":Lorg/json/JSONArray;
    .restart local p2    # "pObj":Lorg/json/JSONObject;
    :cond_6
    const/4 v11, 0x0

    :try_start_1
    new-array v10, v11, [Ljava/lang/String;

    goto :goto_2

    .line 1481
    .restart local v4    # "i":I
    .restart local v10    # "temp":[Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getExtraAttrs()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 1483
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getExtraAttrs()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1484
    .local v7, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getExtraAttrs()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 1487
    .end local v7    # "key":Ljava/lang/String;
    :cond_8
    const-string v11, "extra_attrs"

    invoke-virtual {v6, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1488
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1489
    const-string v11, "products"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 18
    .param p2, "pObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 1511
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    const-string v13, "products"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1513
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1514
    .local v6, "jArr_products":Lorg/json/JSONArray;
    const-string v13, "products"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1521
    :goto_0
    if-eqz p1, :cond_5

    .line 1523
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_5

    .line 1524
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 1526
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1527
    .local v7, "jObj_product":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 1528
    .local v9, "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    const-string v13, "product_id"

    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getProductID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1529
    const-string v13, "product_name"

    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getProductName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1530
    const-string v13, "price"

    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getPrice()D

    move-result-wide v14

    invoke-virtual {v7, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1531
    const-string v13, "discount"

    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getDiscount()D

    move-result-wide v14

    invoke-virtual {v7, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1532
    const-string v13, "quantity"

    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getQuantity()I

    move-result v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1533
    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getCurrency()Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v13

    if-eqz v13, :cond_3

    const-string v13, "currency"

    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getCurrency()Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1537
    :cond_0
    :goto_2
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1538
    .local v11, "product_attrs":Lorg/json/JSONObject;
    const/4 v13, 0x5

    new-array v2, v13, [Ljava/lang/String;

    .line 1539
    .local v2, "categories":[Ljava/lang/String;
    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getCategory()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getCategory()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\\."

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1541
    .local v12, "temp":[Ljava/lang/String;
    :goto_3
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    array-length v13, v12

    if-ge v5, v13, :cond_7

    .line 1543
    aget-object v13, v12, v5

    aput-object v13, v2, v5

    .line 1544
    aget-object v13, v12, v5

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1546
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "category%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    add-int/lit8 v17, v5, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1547
    .local v10, "pStr":Ljava/lang/String;
    aget-object v13, v2, v5

    invoke-virtual {v11, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1541
    .end local v10    # "pStr":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1518
    .end local v2    # "categories":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "jArr_products":Lorg/json/JSONArray;
    .end local v7    # "jObj_product":Lorg/json/JSONObject;
    .end local v9    # "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    .end local v11    # "product_attrs":Lorg/json/JSONObject;
    .end local v12    # "temp":[Ljava/lang/String;
    :cond_2
    const-string v13, "products"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .restart local v6    # "jArr_products":Lorg/json/JSONArray;
    goto/16 :goto_0

    .line 1534
    .restart local v4    # "i":I
    .restart local v7    # "jObj_product":Lorg/json/JSONObject;
    .restart local v9    # "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    :cond_3
    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getStandardCurrency()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4

    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getStandardCurrency()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_4
    const-string v13, "currency"

    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getStandardCurrency()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1572
    .end local v4    # "i":I
    .end local v6    # "jArr_products":Lorg/json/JSONArray;
    .end local v7    # "jObj_product":Lorg/json/JSONObject;
    .end local v9    # "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    :catch_0
    move-exception v3

    .line 1575
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 1578
    const/16 p2, 0x0

    .end local v3    # "e":Lorg/json/JSONException;
    .end local p2    # "pObj":Lorg/json/JSONObject;
    :cond_5
    :goto_5
    return-object p2

    .line 1539
    .restart local v2    # "categories":[Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "jArr_products":Lorg/json/JSONArray;
    .restart local v7    # "jObj_product":Lorg/json/JSONObject;
    .restart local v9    # "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    .restart local v11    # "product_attrs":Lorg/json/JSONObject;
    .restart local p2    # "pObj":Lorg/json/JSONObject;
    :cond_6
    const/4 v13, 0x0

    :try_start_1
    new-array v12, v13, [Ljava/lang/String;

    goto :goto_3

    .line 1552
    .restart local v5    # "j":I
    .restart local v12    # "temp":[Ljava/lang/String;
    :cond_7
    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getExtraAttrs()Ljava/util/Map;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 1554
    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getExtraAttrs()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1555
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/igaworks/commerce/IgawCommerceProductModel;->getExtraAttrs()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v8, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 1558
    .end local v8    # "key":Ljava/lang/String;
    :cond_8
    const-string v13, "extra_attrs"

    invoke-virtual {v7, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1559
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1560
    const-string v13, "products"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1561
    const/16 v13, 0x9

    if-ne v4, v13, :cond_9

    .line 1563
    const-string v13, "IGAW_QA"

    const-string v14, "makeCommonJsonForCommerceV2 >> Products are too much. From the 11th product to the end product will be discarded!"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 1523
    .end local v2    # "categories":[Ljava/lang/String;
    .end local v5    # "j":I
    .end local v7    # "jObj_product":Lorg/json/JSONObject;
    .end local v9    # "pItem":Lcom/igaworks/commerce/IgawCommerceProductModel;
    .end local v11    # "product_attrs":Lorg/json/JSONObject;
    .end local v12    # "temp":[Ljava/lang/String;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method public onActivityCalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "parameter"    # Lcom/igaworks/core/RequestParameter;

    .prologue
    .line 496
    return-void
.end method

.method public onEndSession(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionStackCount"    # I

    .prologue
    .line 505
    if-nez p1, :cond_0

    .line 506
    const-string v0, "IGAW_QA"

    const-string v1, "Commerce >> onEndSession: null context."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :goto_0
    return-void

    .line 509
    :cond_0
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/commerce/impl/CommerceImpl$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/commerce/impl/CommerceImpl$4;-><init>(Lcom/igaworks/commerce/impl/CommerceImpl;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onGetReferralResponse(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 500
    return-void
.end method

.method public onStartSession(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Z)V
    .locals 2
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p3, "sessionContinue"    # Z

    .prologue
    .line 419
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/commerce/impl/CommerceImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/commerce/impl/CommerceImpl$3;-><init>(Lcom/igaworks/commerce/impl/CommerceImpl;Landroid/content/Context;Lcom/igaworks/core/RequestParameter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 490
    return-void
.end method

.method public orderConfirmation(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderID"    # Ljava/lang/String;
    .param p3, "orderPrice"    # J
    .param p5, "pid1"    # Ljava/lang/String;
    .param p6, "pid2"    # Ljava/lang/String;
    .param p7, "pid3"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "orderid"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v1, Landroid/util/Pair;

    const-string v2, "orderprice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid1"

    invoke-direct {v1, v2, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid2"

    invoke-direct {v1, v2, p6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid3"

    invoke-direct {v1, v2, p7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v1, Lcom/igaworks/commerce/model/CustomEventModel;

    const-string v2, "orderConfirmation"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/igaworks/commerce/model/CustomEventModel;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {p0, p1, v1}, Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V

    .line 397
    return-void
.end method

.method public orderReview(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid1"    # Ljava/lang/String;
    .param p3, "quantity1"    # I
    .param p4, "pid2"    # Ljava/lang/String;
    .param p5, "quantity2"    # I
    .param p6, "pid3"    # Ljava/lang/String;
    .param p7, "quantity3"    # I
    .param p8, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;

    .prologue
    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid1"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v1, Landroid/util/Pair;

    const-string v2, "quantity1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid2"

    invoke-direct {v1, v2, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v1, Landroid/util/Pair;

    const-string v2, "quantity2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid3"

    invoke-direct {v1, v2, p6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v1, Landroid/util/Pair;

    const-string v2, "quantity3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v1, Landroid/util/Pair;

    const-string v2, "currency"

    invoke-virtual {p8}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v1, Lcom/igaworks/commerce/model/CustomEventModel;

    const-string v2, "orderReview"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/igaworks/commerce/model/CustomEventModel;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {p0, p1, v1}, Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V

    .line 365
    return-void
.end method

.method public paymentModeSelection(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid1"    # Ljava/lang/String;
    .param p3, "quantity1"    # I
    .param p4, "pid2"    # Ljava/lang/String;
    .param p5, "quantity2"    # I
    .param p6, "pid3"    # Ljava/lang/String;
    .param p7, "quantity3"    # I
    .param p8, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;

    .prologue
    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid1"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v1, Landroid/util/Pair;

    const-string v2, "quantity1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid2"

    invoke-direct {v1, v2, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v1, Landroid/util/Pair;

    const-string v2, "quantity2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid3"

    invoke-direct {v1, v2, p6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v1, Landroid/util/Pair;

    const-string v2, "quantity3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v1, Landroid/util/Pair;

    const-string v2, "currency"

    invoke-virtual {p8}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v1, Lcom/igaworks/commerce/model/CustomEventModel;

    const-string v2, "paymentModeSelection"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/igaworks/commerce/model/CustomEventModel;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {p0, p1, v1}, Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V

    .line 382
    return-void
.end method

.method public paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1220
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    if-nez p2, :cond_0

    .line 1222
    const-string p2, ""

    .line 1223
    const-string v5, "IGAW_QA"

    const-string v6, "Commerce >> paymentView for commerceV2 Param orderId is \'null\'"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_0
    const-string v5, "payment_view"

    invoke-virtual {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1231
    .local v4, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "attributes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1232
    .local v3, "jAttributes":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 1234
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1235
    .restart local v3    # "jAttributes":Lorg/json/JSONObject;
    const-string v5, "attributes"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1237
    :cond_1
    const-string v5, "order_id"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1238
    const-string v5, "discount"

    invoke-virtual {v3, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1247
    const-string v5, "delivery_charge"

    invoke-virtual {v3, v5, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1274
    :goto_1
    return-void

    .line 1249
    :catch_0
    move-exception v1

    .line 1251
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1256
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    sget-boolean v5, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v5, :cond_4

    .line 1258
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 1259
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v2

    .line 1261
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1263
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry event for CommerceV2 - count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {p1, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1266
    :cond_3
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v6, -0x1

    invoke-virtual {p0, p3, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    sget-object v5, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    invoke-virtual {v5, v6, p1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1272
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :cond_4
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v6, -0x1

    invoke-virtual {p0, p3, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_1
.end method

.method public paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2703
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p6, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 2705
    const-string p2, ""

    .line 2706
    const-string v9, "IGAW_QA"

    const-string v10, "Commerce >> paymentView for commerceV2 Param orderId is \'null\'"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    :cond_0
    const-string v9, "payment_view"

    invoke-virtual {p0, p1, v9}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 2714
    .local v7, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "attributes"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2715
    .local v5, "jAttributes":Lorg/json/JSONObject;
    if-nez v5, :cond_1

    .line 2717
    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2718
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    const-string v9, "attributes"

    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2721
    :cond_1
    if-eqz p6, :cond_2

    .line 2723
    const/4 v1, 0x0

    .line 2724
    .local v1, "attrCount":I
    new-instance v8, Ljava/util/TreeMap;

    move-object/from16 v0, p6

    invoke-direct {v8, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2725
    .local v8, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2727
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 2728
    const/4 v10, 0x5

    if-le v1, v10, :cond_3

    .line 2730
    const-string v9, "IGAW_QA"

    const-string v10, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2739
    .end local v1    # "attrCount":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v9, "order_id"

    invoke-virtual {v5, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2740
    const-string v9, "discount"

    move-object/from16 v0, p4

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2749
    const-string v9, "delivery_charge"

    move-object/from16 v0, p5

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2756
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2776
    :goto_2
    return-void

    .line 2735
    .restart local v1    # "attrCount":I
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2751
    .end local v1    # "attrCount":I
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 2753
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 2758
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_4
    sget-boolean v9, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v9, :cond_6

    .line 2760
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v2

    .line 2761
    .local v2, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v2}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v4

    .line 2763
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 2765
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retry event for CommerceV2 - count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2768
    :cond_5
    new-instance v9, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v10, -0x1

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2770
    sget-object v9, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v10

    invoke-virtual {v9, v10, p1, v4}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 2774
    .end local v2    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :cond_6
    new-instance v9, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v10, -0x1

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v9}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_2
.end method

.method public productDetail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # Ljava/lang/String;

    .prologue
    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v1, Lcom/igaworks/commerce/model/CustomEventModel;

    const-string v2, "productDetail"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/igaworks/commerce/model/CustomEventModel;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {p0, p1, v1}, Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V

    .line 331
    return-void
.end method

.method public productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 991
    sget-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v2, :cond_1

    .line 993
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 994
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v1

    .line 996
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 998
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry event for CommerceV2 - count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {p1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1001
    :cond_0
    new-instance v2, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const-string v3, "product_view"

    invoke-virtual {p0, p1, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3, v7}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    sget-object v2, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v1}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1009
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_0
    return-void

    .line 1007
    :cond_1
    new-instance v2, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const-string v3, "product_view"

    invoke-virtual {p0, p1, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3, v7}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v2}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_0
.end method

.method public productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2365
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "product_view"

    invoke-virtual {p0, p1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2369
    .local v6, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "attributes"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2370
    .local v4, "jAttributes":Lorg/json/JSONObject;
    if-nez v4, :cond_0

    .line 2372
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2373
    .restart local v4    # "jAttributes":Lorg/json/JSONObject;
    const-string v8, "attributes"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2376
    :cond_0
    if-eqz p3, :cond_1

    .line 2378
    const/4 v0, 0x0

    .line 2379
    .local v0, "attrCount":I
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2380
    .local v7, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2382
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 2383
    const/4 v9, 0x5

    if-le v0, v9, :cond_3

    .line 2385
    const-string v8, "IGAW_QA"

    const-string v9, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {p1, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2399
    .end local v0    # "attrCount":I
    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    sget-boolean v8, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v8, :cond_4

    .line 2401
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v1

    .line 2402
    .local v1, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v3

    .line 2404
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 2406
    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Retry event for CommerceV2 - count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {p1, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2409
    :cond_2
    new-instance v8, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v9, -0x1

    invoke-virtual {p0, p2, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2411
    sget-object v8, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v9

    invoke-virtual {v8, v9, p1, v3}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2417
    .end local v1    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_2
    return-void

    .line 2390
    .restart local v0    # "attrCount":I
    .restart local v4    # "jAttributes":Lorg/json/JSONObject;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2394
    .end local v0    # "attrCount":I
    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 2396
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 2415
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_4
    new-instance v8, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v9, -0x1

    invoke-virtual {p0, p2, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_2
.end method

.method public purchase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "purchaseDataJsonString"    # Ljava/lang/String;

    .prologue
    .line 142
    :try_start_0
    new-instance v18, Lorg/json/JSONArray;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 144
    .local v18, "root":Lorg/json/JSONArray;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 145
    const-string v3, "IGAW_QA"

    const-string v4, "purchase error : No purhcase item."

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 211
    .end local v18    # "root":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 149
    .restart local v18    # "root":Lorg/json/JSONArray;
    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v17, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-ge v15, v3, :cond_8

    .line 153
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 155
    .local v16, "item":Lorg/json/JSONObject;
    const-string v5, ""

    .local v5, "orderID":Ljava/lang/String;
    const-string v6, ""

    .local v6, "productID":Ljava/lang/String;
    const-string v7, ""

    .local v7, "productName":Ljava/lang/String;
    const-string v11, ""

    .local v11, "currency":Ljava/lang/String;
    const-string v12, ""

    .line 156
    .local v12, "category":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .local v8, "price":D
    const/4 v10, 0x1

    .line 158
    .local v10, "quantity":I
    const-string v3, "orderId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    const-string v3, "orderId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    :cond_1
    const-string v3, "productId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 163
    const-string v3, "productId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 168
    const-string v3, "productName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    const-string v3, "productName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 172
    :cond_2
    const-string v3, "price"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 173
    const-string v3, "price"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 178
    const-string v3, "currency"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 179
    const-string v3, "currency"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCurrencyByCurrencyCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCode()Ljava/lang/String;

    move-result-object v11

    .line 184
    :goto_2
    const-string v3, "quantity"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 185
    const-string v3, "quantity"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 190
    :goto_3
    const-string v3, "category"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    const-string v3, "category"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 194
    :cond_3
    new-instance v3, Lcom/igaworks/commerce/model/PurchaseItem;

    const/4 v4, -0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct/range {v3 .. v14}, Lcom/igaworks/commerce/model/PurchaseItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v5    # "orderID":Ljava/lang/String;
    .end local v6    # "productID":Ljava/lang/String;
    .end local v7    # "productName":Ljava/lang/String;
    .end local v8    # "price":D
    .end local v10    # "quantity":I
    .end local v11    # "currency":Ljava/lang/String;
    .end local v12    # "category":Ljava/lang/String;
    .end local v16    # "item":Lorg/json/JSONObject;
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 165
    .restart local v5    # "orderID":Ljava/lang/String;
    .restart local v6    # "productID":Ljava/lang/String;
    .restart local v7    # "productName":Ljava/lang/String;
    .restart local v8    # "price":D
    .restart local v10    # "quantity":I
    .restart local v11    # "currency":Ljava/lang/String;
    .restart local v12    # "category":Ljava/lang/String;
    .restart local v16    # "item":Lorg/json/JSONObject;
    :cond_4
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "No productId attribute."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    .end local v5    # "orderID":Ljava/lang/String;
    .end local v6    # "productID":Ljava/lang/String;
    .end local v7    # "productName":Ljava/lang/String;
    .end local v8    # "price":D
    .end local v10    # "quantity":I
    .end local v11    # "currency":Ljava/lang/String;
    .end local v12    # "category":Ljava/lang/String;
    .end local v16    # "item":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "purchase error : invalid item = "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 207
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v15    # "i":I
    .end local v17    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    .end local v18    # "root":Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    .line 208
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "purchase error : "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 175
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "orderID":Ljava/lang/String;
    .restart local v6    # "productID":Ljava/lang/String;
    .restart local v7    # "productName":Ljava/lang/String;
    .restart local v8    # "price":D
    .restart local v10    # "quantity":I
    .restart local v11    # "currency":Ljava/lang/String;
    .restart local v12    # "category":Ljava/lang/String;
    .restart local v15    # "i":I
    .restart local v16    # "item":Lorg/json/JSONObject;
    .restart local v17    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    .restart local v18    # "root":Lorg/json/JSONArray;
    :cond_5
    :try_start_3
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "No price attribute."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 181
    :cond_6
    sget-object v3, Lcom/igaworks/commerce/IgawCommerce$Currency;->KR_KRW:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v3}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCode()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v11

    goto/16 :goto_2

    .line 187
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 202
    .end local v5    # "orderID":Ljava/lang/String;
    .end local v6    # "productID":Ljava/lang/String;
    .end local v7    # "productName":Ljava/lang/String;
    .end local v8    # "price":D
    .end local v10    # "quantity":I
    .end local v11    # "currency":Ljava/lang/String;
    .end local v12    # "category":Ljava/lang/String;
    .end local v16    # "item":Lorg/json/JSONObject;
    :cond_8
    if-eqz v17, :cond_9

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_a

    .line 203
    :cond_9
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "No purchase item."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    :cond_a
    sget-object v3, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v3, v4, v0, v1}, Lcom/igaworks/commerce/net/CommerceHttpManager;->purchaseForCommerce(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method public purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderID"    # Ljava/lang/String;
    .param p3, "purchaseDetail"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .param p6, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .prologue
    .line 613
    const-string v5, "purchase"

    invoke-virtual {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 617
    .local v4, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "attributes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 618
    .local v3, "jAttributes":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 620
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 621
    .restart local v3    # "jAttributes":Lorg/json/JSONObject;
    const-string v5, "attributes"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    :cond_0
    const-string v5, "order_id"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 624
    const-string v5, "discount"

    invoke-virtual {v3, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    const-string v5, "delivery_charge"

    invoke-virtual {v3, v5, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    const-string v5, "payment_method"

    invoke-virtual {p6}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    :goto_0
    if-nez p1, :cond_1

    .line 633
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 636
    :cond_1
    if-nez p1, :cond_2

    .line 638
    const-string v5, "IGAW_QA"

    const-string v6, "purchase CommerceV2 >> Context is null. check start session is called."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 643
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v2

    .line 645
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 647
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry event for CommerceV2 - count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {p1, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 649
    :cond_3
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v6, -0x1

    invoke-virtual {p0, p3, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    sget-object v5, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    invoke-virtual {v5, v6, p1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 658
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_1
    return-void

    .line 627
    :catch_0
    move-exception v1

    .line 629
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 654
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 656
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry Purchase event for CommerceV2 error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p1, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method public purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderID"    # Ljava/lang/String;
    .param p3, "purchaseDetail"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .param p6, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1730
    .local p7, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "purchase"

    invoke-virtual {p0, p1, v9}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1734
    .local v7, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "attributes"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1735
    .local v5, "jAttributes":Lorg/json/JSONObject;
    if-nez v5, :cond_0

    .line 1737
    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1738
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    const-string v9, "attributes"

    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1741
    :cond_0
    if-eqz p7, :cond_1

    .line 1743
    const/4 v1, 0x0

    .line 1744
    .local v1, "attrCount":I
    new-instance v8, Ljava/util/TreeMap;

    move-object/from16 v0, p7

    invoke-direct {v8, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 1745
    .local v8, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1747
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 1748
    const/4 v10, 0x5

    if-le v1, v10, :cond_5

    .line 1750
    const-string v9, "IGAW_QA"

    const-string v10, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1759
    .end local v1    # "attrCount":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v9, "order_id"

    invoke-virtual {v5, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1760
    const-string v9, "discount"

    move-object/from16 v0, p4

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1761
    const-string v9, "delivery_charge"

    move-object/from16 v0, p5

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1762
    const-string v9, "payment_method"

    invoke-virtual/range {p6 .. p6}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1768
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    :goto_1
    if-nez p1, :cond_2

    .line 1769
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1772
    :cond_2
    if-nez p1, :cond_3

    .line 1774
    const-string v9, "IGAW_QA"

    const-string v10, "purchase CommerceV2 >> Context is null. check start session is called."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_3
    :try_start_1
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v2

    .line 1779
    .local v2, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v2}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v4

    .line 1781
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 1783
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retry event for CommerceV2 - count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1785
    :cond_4
    new-instance v9, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v10, -0x1

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    sget-object v9, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v10

    invoke-virtual {v9, v10, p1, v4}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1794
    .end local v2    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_2
    return-void

    .line 1755
    .restart local v1    # "attrCount":I
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :try_start_2
    move-object/from16 v0, p7

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1763
    .end local v1    # "attrCount":I
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 1765
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1790
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 1792
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retry Purchaevent for CommerceV2se error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2
.end method

.method public purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/Double;
    .param p4, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p5, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .prologue
    .line 558
    const-string v1, "purchase"

    invoke-virtual {p0, p1, v1}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 560
    .local v13, "pObj":Lorg/json/JSONObject;
    new-instance v0, Lcom/igaworks/commerce/IgawCommerceProductModel;

    const-string v2, ""

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Lcom/igaworks/commerce/IgawCommerceProductAttrModel;)V

    .line 565
    .local v0, "item":Lcom/igaworks/commerce/IgawCommerceProductModel;
    :try_start_0
    const-string v1, "attributes"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 566
    .local v12, "jAttributes":Lorg/json/JSONObject;
    if-nez v12, :cond_0

    .line 568
    new-instance v12, Lorg/json/JSONObject;

    .end local v12    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 569
    .restart local v12    # "jAttributes":Lorg/json/JSONObject;
    const-string v1, "attributes"

    invoke-virtual {v13, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    :cond_0
    const-string v1, "payment_method"

    invoke-virtual/range {p5 .. p5}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v12    # "jAttributes":Lorg/json/JSONObject;
    :goto_0
    if-nez p1, :cond_1

    .line 581
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 584
    :cond_1
    if-nez p1, :cond_2

    .line 586
    const-string v1, "IGAW_QA"

    const-string v2, "purchase CommerceV2 >> Context is null. check start session is called."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v9

    .line 592
    .local v9, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v9}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v11

    .line 594
    .local v11, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 596
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry event for CommerceV2 - count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {p1, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 599
    :cond_3
    new-instance v1, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v13}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    sget-object v1, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v11}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 608
    .end local v9    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_1
    return-void

    .line 573
    :catch_0
    move-exception v10

    .line 576
    .local v10, "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 604
    .end local v10    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v10

    .line 606
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry Purchase event for CommerceV2 error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method public purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/Double;
    .param p4, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p5, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Lcom/igaworks/commerce/IgawCommerce$Currency;",
            "Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1655
    .local p6, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "purchase"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 1657
    .local v17, "pObj":Lorg/json/JSONObject;
    new-instance v2, Lcom/igaworks/commerce/IgawCommerceProductModel;

    const-string v4, ""

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v10}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Lcom/igaworks/commerce/IgawCommerceProductAttrModel;)V

    .line 1663
    .local v2, "item":Lcom/igaworks/commerce/IgawCommerceProductModel;
    :try_start_0
    const-string v3, "attributes"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 1664
    .local v15, "jAttributes":Lorg/json/JSONObject;
    if-nez v15, :cond_0

    .line 1666
    new-instance v15, Lorg/json/JSONObject;

    .end local v15    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 1667
    .restart local v15    # "jAttributes":Lorg/json/JSONObject;
    const-string v3, "attributes"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1670
    :cond_0
    if-eqz p6, :cond_1

    .line 1672
    const/4 v11, 0x0

    .line 1673
    .local v11, "attrCount":I
    new-instance v18, Ljava/util/TreeMap;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 1674
    .local v18, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1676
    .local v16, "key":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    .line 1677
    const/4 v4, 0x5

    if-le v11, v4, :cond_5

    .line 1679
    const-string v3, "IGAW_QA"

    const-string v4, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1688
    .end local v11    # "attrCount":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v18    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v3, "payment_method"

    invoke-virtual/range {p5 .. p5}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    .end local v15    # "jAttributes":Lorg/json/JSONObject;
    :goto_1
    if-nez p1, :cond_2

    .line 1698
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1701
    :cond_2
    if-nez p1, :cond_3

    .line 1703
    const-string v3, "IGAW_QA"

    const-string v4, "purchase CommerceV2 >> Context is null. check start session is called."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_3
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v12

    .line 1709
    .local v12, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v12}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v14

    .line 1711
    .local v14, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1713
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry event for CommerceV2 - count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1716
    :cond_4
    new-instance v3, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    sget-object v3, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v14}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1725
    .end local v12    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_2
    return-void

    .line 1684
    .restart local v11    # "attrCount":I
    .restart local v15    # "jAttributes":Lorg/json/JSONObject;
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v18    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :try_start_2
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1690
    .end local v11    # "attrCount":I
    .end local v15    # "jAttributes":Lorg/json/JSONObject;
    .end local v16    # "key":Ljava/lang/String;
    .end local v18    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v13

    .line 1693
    .local v13, "e":Lorg/json/JSONException;
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1721
    .end local v13    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v13

    .line 1723
    .local v13, "e":Ljava/lang/Exception;
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry Purchaevent for CommerceV2se error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2
.end method

.method public purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderID"    # Ljava/lang/String;
    .param p3, "productID"    # Ljava/lang/String;
    .param p4, "productName"    # Ljava/lang/String;
    .param p5, "price"    # D
    .param p7, "quantity"    # I
    .param p8, "currency"    # Ljava/lang/String;
    .param p9, "category"    # Ljava/lang/String;

    .prologue
    .line 105
    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v15, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    new-instance v3, Lcom/igaworks/commerce/model/PurchaseItem;

    const/4 v4, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 107
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v3 .. v14}, Lcom/igaworks/commerce/model/PurchaseItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v3, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v15}, Lcom/igaworks/commerce/net/CommerceHttpManager;->purchaseForCommerce(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v15    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public purchase(Landroid/content/Context;Ljava/util/List;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceItemModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceItemModel;>;"
    :try_start_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v16, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/igaworks/commerce/IgawCommerceItemModel;

    .line 125
    .local v15, "item":Lcom/igaworks/commerce/IgawCommerceItemModel;
    new-instance v3, Lcom/igaworks/commerce/model/PurchaseItem;

    const/4 v4, -0x1

    invoke-virtual {v15}, Lcom/igaworks/commerce/IgawCommerceItemModel;->getOrderID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/igaworks/commerce/IgawCommerceItemModel;->getProductID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Lcom/igaworks/commerce/IgawCommerceItemModel;->getProductName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lcom/igaworks/commerce/IgawCommerceItemModel;->getPrice()D

    move-result-wide v8

    invoke-virtual {v15}, Lcom/igaworks/commerce/IgawCommerceItemModel;->getQuantity()I

    move-result v10

    .line 126
    invoke-virtual {v15}, Lcom/igaworks/commerce/IgawCommerceItemModel;->getCurrency()Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v11

    invoke-virtual {v11}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15}, Lcom/igaworks/commerce/IgawCommerceItemModel;->getCategory()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct/range {v3 .. v14}, Lcom/igaworks/commerce/model/PurchaseItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v15    # "item":Lcom/igaworks/commerce/IgawCommerceItemModel;
    .end local v16    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 130
    .restart local v16    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    :cond_0
    :try_start_1
    sget-object v3, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v3, v4, v0, v1}, Lcom/igaworks/commerce/net/CommerceHttpManager;->purchaseForCommerce(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderID"    # Ljava/lang/String;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .param p6, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .line 663
    .local p3, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    const-string v5, "purchase"

    invoke-virtual {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 667
    .local v4, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "attributes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 668
    .local v3, "jAttributes":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 670
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 671
    .restart local v3    # "jAttributes":Lorg/json/JSONObject;
    const-string v5, "attributes"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    :cond_0
    const-string v5, "order_id"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 674
    const-string v5, "discount"

    invoke-virtual {v3, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 675
    const-string v5, "delivery_charge"

    invoke-virtual {v3, v5, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    const-string v5, "payment_method"

    invoke-virtual {p6}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 714
    :goto_1
    return-void

    .line 678
    :catch_0
    move-exception v1

    .line 680
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 685
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    if-nez p1, :cond_2

    .line 687
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 690
    :cond_2
    if-nez p1, :cond_3

    .line 692
    const-string v5, "IGAW_QA"

    const-string v6, "purchase CommerceV2 >> Context is null. check start session is called."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_3
    :try_start_1
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 698
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v2

    .line 700
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 702
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry event for CommerceV2 - count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {p1, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 705
    :cond_4
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v6, -0x1

    invoke-virtual {p0, p3, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    sget-object v5, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    invoke-virtual {v5, v6, p1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 710
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :catch_1
    move-exception v1

    .line 712
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry Purchase event for CommerceV2 error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p1, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method public purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderID"    # Ljava/lang/String;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .param p6, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1799
    .local p3, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p7, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "purchase"

    invoke-virtual {p0, p1, v9}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1803
    .local v7, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "attributes"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1804
    .local v5, "jAttributes":Lorg/json/JSONObject;
    if-nez v5, :cond_0

    .line 1806
    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1807
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    const-string v9, "attributes"

    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1810
    :cond_0
    if-eqz p7, :cond_1

    .line 1812
    const/4 v1, 0x0

    .line 1813
    .local v1, "attrCount":I
    new-instance v8, Ljava/util/TreeMap;

    move-object/from16 v0, p7

    invoke-direct {v8, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 1814
    .local v8, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1816
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 1817
    const/4 v10, 0x5

    if-le v1, v10, :cond_2

    .line 1819
    const-string v9, "IGAW_QA"

    const-string v10, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1828
    .end local v1    # "attrCount":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v9, "order_id"

    invoke-virtual {v5, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1829
    const-string v9, "discount"

    move-object/from16 v0, p4

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1830
    const-string v9, "delivery_charge"

    move-object/from16 v0, p5

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1831
    const-string v9, "payment_method"

    invoke-virtual/range {p6 .. p6}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1838
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1869
    :goto_2
    return-void

    .line 1824
    .restart local v1    # "attrCount":I
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p7

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1833
    .end local v1    # "attrCount":I
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 1835
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1840
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_3
    if-nez p1, :cond_4

    .line 1842
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1845
    :cond_4
    if-nez p1, :cond_5

    .line 1847
    const-string v9, "IGAW_QA"

    const-string v10, "purchase CommerceV2 >> Context is null. check start session is called."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_5
    :try_start_2
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v2

    .line 1853
    .local v2, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v2}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v4

    .line 1855
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 1857
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retry event for CommerceV2 - count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1860
    :cond_6
    new-instance v9, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v10, -0x1

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    sget-object v9, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v10

    invoke-virtual {v9, v10, p1, v4}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1865
    .end local v2    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :catch_1
    move-exception v3

    .line 1867
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retry Purchaevent for CommerceV2se error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_2
.end method

.method public refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p4, "penaltyCharge"    # Ljava/lang/Double;

    .prologue
    const/4 v9, 0x0

    .line 796
    if-nez p2, :cond_0

    .line 798
    const-string p2, ""

    .line 799
    const-string v5, "IGAW_QA"

    const-string v6, "Commerce >> refund for commerceV2 Param orderId is \'null\'"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    const-string v5, "refund"

    invoke-virtual {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 807
    .local v4, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "attributes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 808
    .local v3, "jAttributes":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 810
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 811
    .restart local v3    # "jAttributes":Lorg/json/JSONObject;
    const-string v5, "attributes"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 813
    :cond_1
    const-string v5, "order_id"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 814
    const-string v5, "penalty_charge"

    invoke-virtual {v3, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    :goto_0
    if-nez p1, :cond_2

    .line 823
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 826
    :cond_2
    if-nez p1, :cond_3

    .line 828
    const-string v5, "IGAW_QA"

    const-string v6, "purchase CommerceV2 >> Context is null. check start session is called."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_3
    :try_start_1
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 834
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v2

    .line 836
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 838
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "events for CommerceV2 - count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {p1, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 841
    :cond_4
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v6, -0x1

    invoke-virtual {p0, p3, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    sget-object v5, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    invoke-virtual {v5, v6, p1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 850
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_1
    return-void

    .line 816
    :catch_0
    move-exception v1

    .line 818
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 846
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 848
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refund for CommerceV2se error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6, v9, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method public refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p4, "penaltyCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2036
    .local p5, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 2038
    const-string p2, ""

    .line 2039
    const-string v9, "IGAW_QA"

    const-string v10, "Commerce >> refund for commerceV2 Param orderId is \'null\'"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_0
    const-string v9, "refund"

    invoke-virtual {p0, p1, v9}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 2047
    .local v7, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "attributes"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2048
    .local v5, "jAttributes":Lorg/json/JSONObject;
    if-nez v5, :cond_1

    .line 2050
    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2051
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    const-string v9, "attributes"

    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2054
    :cond_1
    if-eqz p5, :cond_2

    .line 2056
    const/4 v1, 0x0

    .line 2057
    .local v1, "attrCount":I
    new-instance v8, Ljava/util/TreeMap;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2058
    .local v8, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2060
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 2061
    const/4 v10, 0x5

    if-le v1, v10, :cond_6

    .line 2063
    const-string v9, "IGAW_QA"

    const-string v10, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2072
    .end local v1    # "attrCount":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v9, "order_id"

    invoke-virtual {v5, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2073
    const-string v9, "penalty_charge"

    move-object/from16 v0, p4

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2080
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    :goto_1
    if-nez p1, :cond_3

    .line 2082
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2085
    :cond_3
    if-nez p1, :cond_4

    .line 2087
    const-string v9, "IGAW_QA"

    const-string v10, "purchase CommerceV2 >> Context is null. check start session is called."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_4
    :try_start_1
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v2

    .line 2093
    .local v2, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v2}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v4

    .line 2095
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 2097
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "events for CommerceV2 - count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2100
    :cond_5
    new-instance v9, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v10, -0x1

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2102
    sget-object v9, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v10

    invoke-virtual {v9, v10, p1, v4}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2109
    .end local v2    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_2
    return-void

    .line 2068
    .restart local v1    # "attrCount":I
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :try_start_2
    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2075
    .end local v1    # "attrCount":I
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 2077
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 2105
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 2107
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "refund for CommerceV2se error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2
.end method

.method public refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p4, "penaltyCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    const/4 v9, 0x0

    .line 855
    if-nez p2, :cond_0

    .line 857
    const-string p2, ""

    .line 858
    const-string v5, "IGAW_QA"

    const-string v6, "Commerce >> refund_bulk for commerceV2 Param orderId is \'null\'"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_0
    const-string v5, "refund"

    invoke-virtual {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 866
    .local v4, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "attributes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 867
    .local v3, "jAttributes":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 869
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 870
    .restart local v3    # "jAttributes":Lorg/json/JSONObject;
    const-string v5, "attributes"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    :cond_1
    const-string v5, "order_id"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 873
    const-string v5, "penalty_charge"

    invoke-virtual {v3, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 909
    :goto_1
    return-void

    .line 875
    :catch_0
    move-exception v1

    .line 877
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 882
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    if-nez p1, :cond_3

    .line 883
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 886
    :cond_3
    if-nez p1, :cond_4

    .line 887
    const-string v5, "IGAW_QA"

    const-string v6, "purchase CommerceV2 >> Context is null. check start session is called."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_4
    :try_start_1
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 893
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v2

    .line 895
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 897
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "events for CommerceV2 - count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {p1, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 900
    :cond_5
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v6, -0x1

    invoke-virtual {p0, p3, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    sget-object v5, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    invoke-virtual {v5, v6, p1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 905
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :catch_1
    move-exception v1

    .line 907
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refund_bulk for CommerceV2se error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6, v9, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method public refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p4, "penaltyCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2114
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p5, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 2116
    const-string p2, ""

    .line 2117
    const-string v9, "IGAW_QA"

    const-string v10, "Commerce >> refund_bulk for commerceV2 Param orderId is \'null\'"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_0
    const-string v9, "refund"

    invoke-virtual {p0, p1, v9}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 2125
    .local v7, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "attributes"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2126
    .local v5, "jAttributes":Lorg/json/JSONObject;
    if-nez v5, :cond_1

    .line 2128
    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2129
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    const-string v9, "attributes"

    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2132
    :cond_1
    if-eqz p5, :cond_2

    .line 2134
    const/4 v1, 0x0

    .line 2135
    .local v1, "attrCount":I
    new-instance v8, Ljava/util/TreeMap;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2136
    .local v8, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2138
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 2139
    const/4 v10, 0x5

    if-le v1, v10, :cond_3

    .line 2141
    const-string v9, "IGAW_QA"

    const-string v10, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2150
    .end local v1    # "attrCount":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v9, "order_id"

    invoke-virtual {v5, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2151
    const-string v9, "penalty_charge"

    move-object/from16 v0, p4

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2158
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2187
    :goto_2
    return-void

    .line 2146
    .restart local v1    # "attrCount":I
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2153
    .end local v1    # "attrCount":I
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 2155
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 2160
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_4
    if-nez p1, :cond_5

    .line 2161
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2164
    :cond_5
    if-nez p1, :cond_6

    .line 2165
    const-string v9, "IGAW_QA"

    const-string v10, "purchase CommerceV2 >> Context is null. check start session is called."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    :cond_6
    :try_start_2
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v2

    .line 2171
    .local v2, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v2}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v4

    .line 2173
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 2175
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "events for CommerceV2 - count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2178
    :cond_7
    new-instance v9, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v10, -0x1

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2180
    sget-object v9, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v10

    invoke-virtual {v9, v10, p1, v4}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2183
    .end local v2    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :catch_1
    move-exception v3

    .line 2185
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "refund_bulk for CommerceV2se error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_2
.end method

.method public reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;

    .prologue
    .line 1120
    if-nez p2, :cond_0

    .line 1122
    const-string p2, ""

    .line 1123
    const-string v5, "IGAW_QA"

    const-string v6, "Commerce >> reviewOrder for commerceV2 Param orderId is \'null\'"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_0
    const-string v5, "review_order"

    invoke-virtual {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1131
    .local v4, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "attributes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1132
    .local v3, "jAttributes":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 1134
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1135
    .restart local v3    # "jAttributes":Lorg/json/JSONObject;
    const-string v5, "attributes"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1137
    :cond_1
    const-string v5, "order_id"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1138
    const-string v5, "discount"

    invoke-virtual {v3, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1139
    const-string v5, "delivery_charge"

    invoke-virtual {v3, v5, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    :goto_0
    sget-boolean v5, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v5, :cond_3

    .line 1148
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 1149
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v2

    .line 1151
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1153
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry event for CommerceV2 - count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {p1, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1156
    :cond_2
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v6, -0x1

    invoke-virtual {p0, p3, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    sget-object v5, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    invoke-virtual {v5, v6, p1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1164
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_1
    return-void

    .line 1141
    :catch_0
    move-exception v1

    .line 1143
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1162
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v6, -0x1

    invoke-virtual {p0, p3, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_1
.end method

.method public reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2565
    .local p6, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 2567
    const-string p2, ""

    .line 2568
    const-string v9, "IGAW_QA"

    const-string v10, "Commerce >> reviewOrder for commerceV2 Param orderId is \'null\'"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    :cond_0
    const-string v9, "review_order"

    invoke-virtual {p0, p1, v9}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 2576
    .local v7, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "attributes"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2577
    .local v5, "jAttributes":Lorg/json/JSONObject;
    if-nez v5, :cond_1

    .line 2579
    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2580
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    const-string v9, "attributes"

    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2583
    :cond_1
    if-eqz p6, :cond_2

    .line 2585
    const/4 v1, 0x0

    .line 2586
    .local v1, "attrCount":I
    new-instance v8, Ljava/util/TreeMap;

    move-object/from16 v0, p6

    invoke-direct {v8, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2587
    .local v8, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2589
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 2590
    const/4 v10, 0x5

    if-le v1, v10, :cond_4

    .line 2592
    const-string v9, "IGAW_QA"

    const-string v10, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2601
    .end local v1    # "attrCount":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v9, "order_id"

    invoke-virtual {v5, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2602
    const-string v9, "discount"

    move-object/from16 v0, p4

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2603
    const-string v9, "delivery_charge"

    move-object/from16 v0, p5

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2610
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    :goto_1
    sget-boolean v9, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v9, :cond_5

    .line 2612
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v2

    .line 2613
    .local v2, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v2}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v4

    .line 2615
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 2617
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retry event for CommerceV2 - count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2620
    :cond_3
    new-instance v9, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v10, -0x1

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2622
    sget-object v9, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v10

    invoke-virtual {v9, v10, p1, v4}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2628
    .end local v2    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_2
    return-void

    .line 2597
    .restart local v1    # "attrCount":I
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2605
    .end local v1    # "attrCount":I
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 2607
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 2626
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_5
    new-instance v9, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v10, -0x1

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v9}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_2
.end method

.method public reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1169
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    if-nez p2, :cond_0

    .line 1171
    const-string p2, ""

    .line 1172
    const-string v5, "IGAW_QA"

    const-string v6, "Commerce >> reviewOrderBulk for commerceV2 Param orderId is \'null\'"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_0
    const-string v5, "review_order"

    invoke-virtual {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1180
    .local v4, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "attributes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1181
    .local v3, "jAttributes":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 1183
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1184
    .restart local v3    # "jAttributes":Lorg/json/JSONObject;
    const-string v5, "attributes"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1186
    :cond_1
    const-string v5, "order_id"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1187
    const-string v5, "discount"

    invoke-virtual {v3, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1188
    const-string v5, "delivery_charge"

    invoke-virtual {v3, v5, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1215
    :goto_1
    return-void

    .line 1190
    :catch_0
    move-exception v1

    .line 1192
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1197
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    sget-boolean v5, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v5, :cond_4

    .line 1199
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 1200
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v2

    .line 1202
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1204
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry event for CommerceV2 - count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {p1, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1207
    :cond_3
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v6, -0x1

    invoke-virtual {p0, p3, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    sget-object v5, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    invoke-virtual {v5, v6, p1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1213
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :cond_4
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v6, -0x1

    invoke-virtual {p0, p3, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_1
.end method

.method public reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2633
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p6, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 2635
    const-string p2, ""

    .line 2636
    const-string v9, "IGAW_QA"

    const-string v10, "Commerce >> reviewOrderBulk for commerceV2 Param orderId is \'null\'"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    :cond_0
    const-string v9, "review_order"

    invoke-virtual {p0, p1, v9}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 2644
    .local v7, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "attributes"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2645
    .local v5, "jAttributes":Lorg/json/JSONObject;
    if-nez v5, :cond_1

    .line 2647
    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2648
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    const-string v9, "attributes"

    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2651
    :cond_1
    if-eqz p6, :cond_2

    .line 2653
    const/4 v1, 0x0

    .line 2654
    .local v1, "attrCount":I
    new-instance v8, Ljava/util/TreeMap;

    move-object/from16 v0, p6

    invoke-direct {v8, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2655
    .local v8, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2657
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 2658
    const/4 v10, 0x5

    if-le v1, v10, :cond_3

    .line 2660
    const-string v9, "IGAW_QA"

    const-string v10, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2669
    .end local v1    # "attrCount":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v9, "order_id"

    invoke-virtual {v5, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2670
    const-string v9, "discount"

    move-object/from16 v0, p4

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2671
    const-string v9, "delivery_charge"

    move-object/from16 v0, p5

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2678
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2698
    :goto_2
    return-void

    .line 2665
    .restart local v1    # "attrCount":I
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2673
    .end local v1    # "attrCount":I
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 2675
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 2680
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_4
    sget-boolean v9, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v9, :cond_6

    .line 2682
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v2

    .line 2683
    .local v2, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v2}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v4

    .line 2685
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 2687
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retry event for CommerceV2 - count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2690
    :cond_5
    new-instance v9, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v10, -0x1

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2692
    sget-object v9, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v10

    invoke-virtual {v9, v10, p1, v4}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 2696
    .end local v2    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :cond_6
    new-instance v9, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v10, -0x1

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductsJsonForCommerceV2(Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v9}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_2
.end method

.method public search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "resultProducts":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 1279
    if-nez p2, :cond_0

    .line 1281
    const-string p2, ""

    .line 1282
    const-string v6, "IGAW_QA"

    const-string v7, "Commerce >> search for commerceV2 Param keyword is \'null\'"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_0
    const-string v6, "search"

    invoke-virtual {p0, p1, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1290
    .local v5, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "attributes"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1291
    .local v4, "jAttributes":Lorg/json/JSONObject;
    if-nez v4, :cond_1

    .line 1293
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1294
    .restart local v4    # "jAttributes":Lorg/json/JSONObject;
    const-string v6, "attributes"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1296
    :cond_1
    const-string v6, "keyword"

    invoke-virtual {v4, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    .end local v4    # "jAttributes":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1328
    :goto_1
    return-void

    .line 1298
    :catch_0
    move-exception v1

    .line 1300
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1305
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 1307
    .local v2, "item":Lcom/igaworks/commerce/IgawCommerceProductModel;
    invoke-virtual {p0, v2, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1310
    .end local v2    # "item":Lcom/igaworks/commerce/IgawCommerceProductModel;
    :cond_3
    sget-boolean v6, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v6, :cond_5

    .line 1312
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 1313
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v3

    .line 1315
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 1317
    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry event for CommerceV2 - count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {p1, v6, v7, v8, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1320
    :cond_4
    new-instance v6, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v10, v7, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    sget-object v6, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v7

    invoke-virtual {v6, v7, p1, v3}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1326
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :cond_5
    new-instance v6, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v10, v7, v11}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v6}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_1
.end method

.method public search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2781
    .local p3, "resultProducts":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p4, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 2783
    const-string p2, ""

    .line 2784
    const-string v10, "IGAW_QA"

    const-string v11, "Commerce >> search for commerceV2 Param keyword is \'null\'"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :cond_0
    const-string v10, "search"

    invoke-virtual {p0, p1, v10}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 2792
    .local v8, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v10, "attributes"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2793
    .local v6, "jAttributes":Lorg/json/JSONObject;
    if-nez v6, :cond_1

    .line 2795
    new-instance v6, Lorg/json/JSONObject;

    .end local v6    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2796
    .restart local v6    # "jAttributes":Lorg/json/JSONObject;
    const-string v10, "attributes"

    invoke-virtual {v8, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2799
    :cond_1
    if-eqz p4, :cond_2

    .line 2801
    const/4 v1, 0x0

    .line 2802
    .local v1, "attrCount":I
    new-instance v9, Ljava/util/TreeMap;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2803
    .local v9, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2805
    .local v7, "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 2806
    const/4 v11, 0x5

    if-le v1, v11, :cond_3

    .line 2808
    const-string v10, "IGAW_QA"

    const-string v11, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static {p1, v10, v11, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2817
    .end local v1    # "attrCount":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v10, "keyword"

    move-object/from16 v0, p2

    invoke-virtual {v6, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2824
    .end local v6    # "jAttributes":Lorg/json/JSONObject;
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2849
    :goto_2
    return-void

    .line 2813
    .restart local v1    # "attrCount":I
    .restart local v6    # "jAttributes":Lorg/json/JSONObject;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v9    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2819
    .end local v1    # "attrCount":I
    .end local v6    # "jAttributes":Lorg/json/JSONObject;
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 2821
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 2826
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igaworks/commerce/IgawCommerceProductModel;

    .line 2828
    .local v4, "item":Lcom/igaworks/commerce/IgawCommerceProductModel;
    invoke-virtual {p0, v4, v8}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    goto :goto_3

    .line 2831
    .end local v4    # "item":Lcom/igaworks/commerce/IgawCommerceProductModel;
    :cond_5
    sget-boolean v10, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v10, :cond_7

    .line 2833
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v2

    .line 2834
    .local v2, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v2}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v5

    .line 2836
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 2838
    const-string v10, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Retry event for CommerceV2 - count : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-static {p1, v10, v11, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2841
    :cond_6
    new-instance v10, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v11, -0x1

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2843
    sget-object v10, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v11

    invoke-virtual {v10, v11, p1, v5}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 2847
    .end local v2    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :cond_7
    new-instance v10, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v11, -0x1

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v10}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_2
.end method

.method public share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharingChennel"    # Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;
    .param p3, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1333
    const-string v5, "share"

    invoke-virtual {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1338
    .local v4, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "attributes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1339
    .local v3, "jAttributes":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 1341
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1342
    .restart local v3    # "jAttributes":Lorg/json/JSONObject;
    const-string v5, "attributes"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1344
    :cond_0
    const-string v5, "sharing_channel"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    :goto_0
    sget-boolean v5, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v5, :cond_2

    .line 1353
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 1354
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v2

    .line 1356
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1358
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry event for CommerceV2 - count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {p1, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1361
    :cond_1
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    invoke-virtual {p0, p3, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6, v10}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    sget-object v5, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    invoke-virtual {v5, v6, p1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1370
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_1
    return-void

    .line 1346
    :catch_0
    move-exception v1

    .line 1348
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1367
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    invoke-virtual {p0, p3, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6, v10}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_1
.end method

.method public share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharingChennel"    # Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;
    .param p3, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2854
    .local p4, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "share"

    invoke-virtual {p0, p1, v9}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 2859
    .local v7, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "attributes"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2860
    .local v5, "jAttributes":Lorg/json/JSONObject;
    if-nez v5, :cond_0

    .line 2862
    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2863
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    const-string v9, "attributes"

    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2866
    :cond_0
    if-eqz p4, :cond_1

    .line 2868
    const/4 v1, 0x0

    .line 2869
    .local v1, "attrCount":I
    new-instance v8, Ljava/util/TreeMap;

    move-object/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2870
    .local v8, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2872
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 2873
    const/4 v10, 0x5

    if-le v1, v10, :cond_3

    .line 2875
    const-string v9, "IGAW_QA"

    const-string v10, "IgawCommerceEventAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2884
    .end local v1    # "attrCount":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v9, "sharing_channel"

    invoke-virtual {v5, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2891
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    :goto_1
    sget-boolean v9, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v9, :cond_4

    .line 2893
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v2

    .line 2894
    .local v2, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v2}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v4

    .line 2896
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 2898
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retry event for CommerceV2 - count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2901
    :cond_2
    new-instance v9, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v10, -0x1

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2903
    sget-object v9, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v10

    invoke-virtual {v9, v10, p1, v4}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2909
    .end local v2    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_2
    return-void

    .line 2880
    .restart local v1    # "attrCount":I
    .restart local v5    # "jAttributes":Lorg/json/JSONObject;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2886
    .end local v1    # "attrCount":I
    .end local v5    # "jAttributes":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 2888
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 2907
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_4
    new-instance v9, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    const/4 v10, -0x1

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v9}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_2
.end method

.method public shoppingCart(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid1"    # Ljava/lang/String;
    .param p3, "quantity1"    # I
    .param p4, "pid2"    # Ljava/lang/String;
    .param p5, "quantity2"    # I
    .param p6, "pid3"    # Ljava/lang/String;
    .param p7, "quantity3"    # I
    .param p8, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;

    .prologue
    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid1"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v1, Landroid/util/Pair;

    const-string v2, "quantity1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid2"

    invoke-direct {v1, v2, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v1, Landroid/util/Pair;

    const-string v2, "quantity2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid3"

    invoke-direct {v1, v2, p6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v1, Landroid/util/Pair;

    const-string v2, "quantity3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v1, Landroid/util/Pair;

    const-string v2, "currency"

    invoke-virtual {p8}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v1, Lcom/igaworks/commerce/model/CustomEventModel;

    const-string v2, "shoppingCart"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/igaworks/commerce/model/CustomEventModel;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {p0, p1, v1}, Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V

    .line 348
    return-void
.end method

.method public subCategory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subCat1ID"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "subcat1id"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v1, Lcom/igaworks/commerce/model/CustomEventModel;

    const-string v2, "subCategory"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/igaworks/commerce/model/CustomEventModel;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {p0, p1, v1}, Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V

    .line 309
    return-void
.end method

.method public subSubCategory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subCat2ID"    # Ljava/lang/String;

    .prologue
    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "subcat2id"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v1, Lcom/igaworks/commerce/model/CustomEventModel;

    const-string v2, "subSubCategory"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/igaworks/commerce/model/CustomEventModel;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {p0, p1, v1}, Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V

    .line 320
    return-void
.end method

.method public viewHome(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1375
    const-string v5, "view_home"

    invoke-virtual {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeCommonJsonForCommerceV2(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1379
    .local v4, "pObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "attributes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1380
    .local v3, "jAttributes":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 1381
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1382
    .restart local v3    # "jAttributes":Lorg/json/JSONObject;
    const-string v5, "attributes"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    .end local v3    # "jAttributes":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-eqz v5, :cond_2

    .line 1392
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 1393
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v2

    .line 1395
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1397
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry event for CommerceV2 - count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {p1, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1400
    :cond_1
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    invoke-virtual {p0, v11, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6, v10}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    sget-object v5, Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;

    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    invoke-virtual {v5, v6, p1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1409
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :goto_1
    return-void

    .line 1385
    :catch_0
    move-exception v1

    .line 1387
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1406
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    new-instance v5, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    invoke-virtual {p0, v11, v4}, Lcom/igaworks/commerce/impl/CommerceImpl;->makeProductJsonForCommerceV2(Lcom/igaworks/commerce/IgawCommerceProductModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6, v10}, Lcom/igaworks/commerce/model/CommerceV2EventItem;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v5}, Lcom/igaworks/commerce/impl/CommerceImpl;->restoreCV2EventInfo(Landroid/content/Context;Lcom/igaworks/commerce/model/CommerceV2EventItem;)V

    goto :goto_1
.end method

.method public wishList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid1"    # Ljava/lang/String;
    .param p3, "quantity1"    # I
    .param p4, "pid2"    # Ljava/lang/String;
    .param p5, "quantity2"    # I
    .param p6, "pid3"    # Ljava/lang/String;
    .param p7, "quantity3"    # I
    .param p8, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;

    .prologue
    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid1"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v1, Landroid/util/Pair;

    const-string v2, "quantity1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid2"

    invoke-direct {v1, v2, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v1, Landroid/util/Pair;

    const-string v2, "quantity2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid3"

    invoke-direct {v1, v2, p6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v1, Landroid/util/Pair;

    const-string v2, "quantity3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v1, Landroid/util/Pair;

    const-string v2, "currency"

    invoke-virtual {p8}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v1, Lcom/igaworks/commerce/model/CustomEventModel;

    const-string v2, "wishList"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/igaworks/commerce/model/CustomEventModel;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {p0, p1, v1}, Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V

    .line 414
    return-void
.end method
