.class public interface abstract Lcom/igaworks/commerce/interfaces/CommerceInterface;
.super Ljava/lang/Object;
.source "CommerceInterface.java"


# virtual methods
.method public abstract addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
.end method

.method public abstract addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
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
.end method

.method public abstract addToCartBulk(Landroid/content/Context;Ljava/util/List;)V
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
.end method

.method public abstract addToCartBulk(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
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
.end method

.method public abstract addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
.end method

.method public abstract addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
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
.end method

.method public abstract appOpen(Landroid/content/Context;)V
.end method

.method public abstract appOpen(Landroid/content/Context;Ljava/util/Map;)V
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
.end method

.method public abstract category(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;)V
.end method

.method public abstract categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;)V
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
.end method

.method public abstract categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;Ljava/util/Map;)V
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
.end method

.method public abstract categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/Map;)V
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
.end method

.method public abstract deeplinkOpen(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract deeplinkOpen(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method public abstract home(Landroid/content/Context;)V
.end method

.method public abstract login(Landroid/content/Context;)V
.end method

.method public abstract login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract login(Landroid/content/Context;Ljava/util/Map;)V
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
.end method

.method public abstract logout(Landroid/content/Context;)V
.end method

.method public abstract orderConfirmation(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract orderReview(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V
.end method

.method public abstract paymentModeSelection(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V
.end method

.method public abstract paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V
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
.end method

.method public abstract paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
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
.end method

.method public abstract productDetail(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
.end method

.method public abstract productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
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
.end method

.method public abstract purchase(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
.end method

.method public abstract purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
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
.end method

.method public abstract purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
.end method

.method public abstract purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
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
.end method

.method public abstract purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract purchase(Landroid/content/Context;Ljava/util/List;)V
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
.end method

.method public abstract purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
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
.end method

.method public abstract purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
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
.end method

.method public abstract refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;)V
.end method

.method public abstract refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/util/Map;)V
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
.end method

.method public abstract refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;)V
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
.end method

.method public abstract refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/util/Map;)V
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
.end method

.method public abstract reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;)V
.end method

.method public abstract reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
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
.end method

.method public abstract reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V
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
.end method

.method public abstract reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
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
.end method

.method public abstract search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
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
.end method

.method public abstract search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
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
.end method

.method public abstract share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
.end method

.method public abstract share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
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
.end method

.method public abstract shoppingCart(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V
.end method

.method public abstract subCategory(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract subSubCategory(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract viewHome(Landroid/content/Context;)V
.end method

.method public abstract wishList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/igaworks/commerce/IgawCommerce$Currency;)V
.end method
