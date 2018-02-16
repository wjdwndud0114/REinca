.class public Lcom/igaworks/commerce/IgawCommerce;
.super Ljava/lang/Object;
.source "IgawCommerce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;,
        Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;,
        Lcom/igaworks/commerce/IgawCommerce$Currency;
    }
.end annotation


# static fields
.field private static adbrixFrameWork:Lcom/igaworks/commerce/interfaces/CommerceInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    :try_start_0
    invoke-static {}, Lcom/igaworks/commerce/core/CommerceUpdateLog;->updateVersion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    .line 520
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V

    .line 521
    return-void
.end method

.method public static addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
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
    .line 623
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V

    .line 624
    return-void
.end method

.method public static addToCartBulk(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
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
    .line 525
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->addToCartBulk(Landroid/content/Context;Ljava/util/List;)V

    .line 526
    return-void
.end method

.method public static addToCartBulk(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
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
    .line 628
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->addToCartBulk(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    .line 629
    return-void
.end method

.method public static addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    .line 530
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V

    .line 531
    return-void
.end method

.method public static addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
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
    .line 633
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V

    .line 634
    return-void
.end method

.method public static appOpen(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 495
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->appOpen(Landroid/content/Context;)V

    .line 496
    return-void
.end method

.method public static appOpen(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
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
    .line 598
    .local p1, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->appOpen(Landroid/content/Context;Ljava/util/Map;)V

    .line 599
    return-void
.end method

.method public static category(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "catID"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->category(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    .prologue
    .line 540
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;)V

    .line 541
    return-void
.end method

.method public static categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
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
    .line 545
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;)V

    .line 546
    return-void
.end method

.method public static categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
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
    .line 648
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;Ljava/util/Map;)V

    .line 649
    return-void
.end method

.method public static categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
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
    .line 643
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/Map;)V

    .line 644
    return-void
.end method

.method public static deeplinkOpen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deeplinkUrl"    # Ljava/lang/String;

    .prologue
    .line 500
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->deeplinkOpen(Landroid/content/Context;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public static deeplinkOpen(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deeplinkUrl"    # Ljava/lang/String;
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
    .line 603
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->deeplinkOpen(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 604
    return-void
.end method

.method private static framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce;->adbrixFrameWork:Lcom/igaworks/commerce/interfaces/CommerceInterface;

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/igaworks/commerce/impl/CommerceFrameworkFactory;->getFramework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce;->adbrixFrameWork:Lcom/igaworks/commerce/interfaces/CommerceInterface;

    .line 29
    :cond_0
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce;->adbrixFrameWork:Lcom/igaworks/commerce/interfaces/CommerceInterface;

    return-object v0
.end method

.method public static home(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->home(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public static login(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 505
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->login(Landroid/content/Context;)V

    .line 506
    return-void
.end method

.method public static login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "usn"    # Ljava/lang/String;
    .param p2, "hashedEmail"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static login(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
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
    .line 608
    .local p1, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->login(Landroid/content/Context;Ljava/util/Map;)V

    .line 609
    return-void
.end method

.method public static logout(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->logout(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public static orderConfirmation(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "orderPrice"    # J
    .param p4, "pid1"    # Ljava/lang/String;
    .param p5, "pid2"    # Ljava/lang/String;
    .param p6, "pid3"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->orderConfirmation(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static orderReview(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid1"    # Ljava/lang/String;
    .param p2, "quantity1"    # I
    .param p3, "pid2"    # Ljava/lang/String;
    .param p4, "quantity2"    # I
    .param p5, "pid3"    # Ljava/lang/String;
    .param p6, "quantity3"    # I
    .param p7, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;

    .prologue
    .line 121
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->orderReview(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V

    .line 123
    return-void
.end method

.method public static paymentModeSelection(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid1"    # Ljava/lang/String;
    .param p2, "quantity1"    # I
    .param p3, "pid2"    # Ljava/lang/String;
    .param p4, "quantity2"    # I
    .param p5, "pid3"    # Ljava/lang/String;
    .param p6, "quantity3"    # I
    .param p7, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;

    .prologue
    .line 127
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->paymentModeSelection(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V

    .line 129
    return-void
.end method

.method public static paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # Ljava/lang/Double;
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
    .line 560
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 561
    return-void
.end method

.method public static paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # Ljava/lang/Double;
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
    .line 663
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p5, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V

    .line 664
    return-void
.end method

.method public static productDetail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->productDetail(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    .line 535
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V

    .line 536
    return-void
.end method

.method public static productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
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
    .line 638
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V

    .line 639
    return-void
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "purchaseDataJsonString"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->purchase(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "purchaseDetail"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # Ljava/lang/Double;
    .param p5, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .prologue
    .line 485
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V

    .line 486
    return-void
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "purchaseDetail"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # Ljava/lang/Double;
    .param p5, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
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
    .line 588
    .local p6, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V

    .line 589
    return-void
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/Double;
    .param p3, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p4, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .prologue
    .line 479
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V

    .line 480
    return-void
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/Double;
    .param p3, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p4, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
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
    .line 582
    .local p5, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V

    .line 583
    return-void
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/commerce/IgawCommerce$Currency;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;
    .param p4, "price"    # D
    .param p6, "quantity"    # I
    .param p7, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p8, "category"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v1

    invoke-virtual/range {p7 .. p7}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderID"    # Ljava/lang/String;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # Ljava/lang/Double;
    .param p5, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
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
    .line 490
    .local p2, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V

    .line 491
    return-void
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderID"    # Ljava/lang/String;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # Ljava/lang/Double;
    .param p5, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
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
    .line 593
    .local p2, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p6, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V

    .line 594
    return-void
.end method

.method public static purchase(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
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
    .line 61
    .local p1, "purchaseItems":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceItemModel;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->purchase(Landroid/content/Context;Ljava/util/List;)V

    .line 63
    return-void
.end method

.method public static refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p3, "penaltyCharge"    # Ljava/lang/Double;

    .prologue
    .line 510
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;)V

    .line 511
    return-void
.end method

.method public static refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p3, "penaltyCharge"    # Ljava/lang/Double;
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
    .line 613
    .local p4, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/util/Map;)V

    .line 614
    return-void
.end method

.method public static refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p3, "penaltyCharge"    # Ljava/lang/Double;
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
    .line 515
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;)V

    .line 516
    return-void
.end method

.method public static refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p3, "penaltyCharge"    # Ljava/lang/Double;
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
    .line 618
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p4, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/util/Map;)V

    .line 619
    return-void
.end method

.method public static reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # Ljava/lang/Double;

    .prologue
    .line 550
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 551
    return-void
.end method

.method public static reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # Ljava/lang/Double;
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
    .line 653
    .local p5, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V

    .line 654
    return-void
.end method

.method public static reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # Ljava/lang/Double;
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
    .line 555
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 556
    return-void
.end method

.method public static reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # Ljava/lang/Double;
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
    .line 658
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p5, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V

    .line 659
    return-void
.end method

.method public static search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyword"    # Ljava/lang/String;
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
    .line 565
    .local p2, "resultProducts":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 566
    return-void
.end method

.method public static search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyword"    # Ljava/lang/String;
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
    .line 668
    .local p2, "resultProducts":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 669
    return-void
.end method

.method public static share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharingChennel"    # Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    .line 570
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;)V

    .line 571
    return-void
.end method

.method public static share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharingChennel"    # Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
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
    .line 673
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V

    .line 674
    return-void
.end method

.method public static shoppingCart(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid1"    # Ljava/lang/String;
    .param p2, "quantity1"    # I
    .param p3, "pid2"    # Ljava/lang/String;
    .param p4, "quantity2"    # I
    .param p5, "pid3"    # Ljava/lang/String;
    .param p6, "quantity3"    # I
    .param p7, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;

    .prologue
    .line 115
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->shoppingCart(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V

    .line 117
    return-void
.end method

.method public static subCategory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subCat1ID"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->subCategory(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static subSubCategory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subCat2ID"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->subSubCategory(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static viewHome(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 575
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->viewHome(Landroid/content/Context;)V

    .line 576
    return-void
.end method

.method public static wishList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid1"    # Ljava/lang/String;
    .param p2, "quantity1"    # I
    .param p3, "pid2"    # Ljava/lang/String;
    .param p4, "quantity2"    # I
    .param p5, "pid3"    # Ljava/lang/String;
    .param p6, "quantity3"    # I
    .param p7, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;

    .prologue
    .line 139
    invoke-static {}, Lcom/igaworks/commerce/IgawCommerce;->framework()Lcom/igaworks/commerce/interfaces/CommerceInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/igaworks/commerce/interfaces/CommerceInterface;->wishList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V

    .line 141
    return-void
.end method
