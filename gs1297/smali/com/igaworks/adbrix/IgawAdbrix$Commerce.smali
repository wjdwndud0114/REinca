.class public Lcom/igaworks/adbrix/IgawAdbrix$Commerce;
.super Ljava/lang/Object;
.source "IgawAdbrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adbrix/IgawAdbrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Commerce"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    .line 780
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :goto_0
    return-void

    .line 782
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.addToCart error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 4
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1077
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    :goto_0
    return-void

    .line 1079
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.addToCart error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static addToCartBulk(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
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
    .line 793
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->addToCartBulk(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.addToCartBulk error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static addToCartBulk(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 4
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1090
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->addToCartBulk(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    :goto_0
    return-void

    .line 1092
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.addToCartBulk error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    .line 821
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.addToWishList error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 4
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1118
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :goto_0
    return-void

    .line 1120
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.addToWishList error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    .prologue
    .line 834
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :goto_0
    return-void

    .line 836
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.categoryView error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;)V
    .locals 4
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
    .line 848
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.categoryView error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;Ljava/util/Map;)V
    .locals 4
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1145
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :goto_0
    return-void

    .line 1147
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.categoryView error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/Map;)V
    .locals 4
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1131
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :goto_0
    return-void

    .line 1133
    :catch_0
    move-exception v0

    .line 1135
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.categoryView error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deeplinkOpen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deeplinkUrl"    # Ljava/lang/String;

    .prologue
    .line 726
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->deeplinkOpen(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.deeplinkOpen error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deeplinkOpen(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1023
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->deeplinkOpen(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    return-void

    .line 1025
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.deeplinkOpen error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static login(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "usn"    # Ljava/lang/String;

    .prologue
    .line 806
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->login(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :goto_0
    return-void

    .line 808
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.login error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static login(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "usn"    # Ljava/lang/String;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1103
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->login(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    :goto_0
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .line 1107
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.login error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V
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
            ")V"
        }
    .end annotation

    .prologue
    .line 890
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :goto_0
    return-void

    .line 892
    :catch_0
    move-exception v6

    .line 894
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.paymentView error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 8
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1187
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p5, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    :goto_0
    return-void

    .line 1189
    :catch_0
    move-exception v7

    .line 1191
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.paymentView error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    .line 739
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.productView error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 4
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1036
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    :goto_0
    return-void

    .line 1038
    :catch_0
    move-exception v0

    .line 1040
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.productView error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "purchaseDetail"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # Ljava/lang/Double;
    .param p5, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .prologue
    .line 687
    :try_start_0
    invoke-virtual {p5}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    move-result-object v6

    .line 688
    .local v6, "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .end local v6    # "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    :goto_0
    return-void

    .line 690
    :catch_0
    move-exception v7

    .line 692
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.purchase II error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    .locals 9
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 984
    .local p6, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p5}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    move-result-object v6

    .line 985
    .local v6, "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    .end local v6    # "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    :goto_0
    return-void

    .line 987
    :catch_0
    move-exception v8

    .line 989
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.purchase II error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/adbrix/IgawAdbrix$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/Double;
    .param p3, "currency"    # Lcom/igaworks/adbrix/IgawAdbrix$Currency;
    .param p4, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .prologue
    .line 653
    :try_start_0
    invoke-virtual {p3}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCurrencyByCountryCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v4

    .line 654
    .local v4, "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    invoke-virtual {p4}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    move-result-object v5

    .line 655
    .local v5, "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v4    # "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    .end local v5    # "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v6

    .line 659
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.purchase I error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/adbrix/IgawAdbrix$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/Double;
    .param p3, "currency"    # Lcom/igaworks/adbrix/IgawAdbrix$Currency;
    .param p4, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Lcom/igaworks/adbrix/IgawAdbrix$Currency;",
            "Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 950
    .local p5, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p3}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCurrencyByCountryCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v4

    .line 951
    .local v4, "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    invoke-virtual {p4}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    move-result-object v5

    .line 952
    .local v5, "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    .end local v4    # "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    .end local v5    # "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    :goto_0
    return-void

    .line 954
    :catch_0
    move-exception v7

    .line 956
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.purchase I error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/Double;
    .param p3, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p4, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .prologue
    .line 670
    :try_start_0
    invoke-virtual {p3}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCurrencyByCountryCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v4

    .line 671
    .local v4, "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    invoke-virtual {p4}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    move-result-object v5

    .line 672
    .local v5, "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v4    # "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    .end local v5    # "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v6

    .line 676
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.purchase I error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    .locals 8
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 967
    .local p5, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p3}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCurrencyByCountryCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v4

    .line 968
    .local v4, "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    invoke-virtual {p4}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    move-result-object v5

    .line 969
    .local v5, "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    .end local v4    # "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    .end local v5    # "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    :goto_0
    return-void

    .line 971
    :catch_0
    move-exception v7

    .line 973
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.purchase I error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
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
            ")V"
        }
    .end annotation

    .prologue
    .line 702
    .local p2, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    invoke-virtual {p5}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    move-result-object v6

    .line 703
    .local v6, "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .end local v6    # "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v7

    .line 707
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.purchase III error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    .locals 9
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 999
    .local p2, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p6, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p5}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    move-result-object v6

    .line 1000
    .local v6, "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    .end local v6    # "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    :goto_0
    return-void

    .line 1002
    :catch_0
    move-exception v8

    .line 1004
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.purchase III error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p3, "penaltyCharge"    # Ljava/lang/Double;

    .prologue
    .line 752
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_0
    return-void

    .line 754
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.refund error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 7
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1049
    .local p4, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_0
    return-void

    .line 1051
    :catch_0
    move-exception v6

    .line 1054
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.refund error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;)V
    .locals 4
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
    .line 767
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.refund_bulk error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 7
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1064
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p4, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    :goto_0
    return-void

    .line 1066
    :catch_0
    move-exception v6

    .line 1068
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.refund_bulk error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # Ljava/lang/Double;

    .prologue
    .line 861
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_0
    return-void

    .line 863
    :catch_0
    move-exception v6

    .line 865
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.categoryView error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 8
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1158
    .local p5, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v7

    .line 1162
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.categoryView error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;D)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # D
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
            "D)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_0
    return-void

    .line 878
    :catch_0
    move-exception v6

    .line 880
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.categoryView error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;DLjava/util/Map;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "deliveryCharge"    # D
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
            "D",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1173
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p6, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    :goto_0
    return-void

    .line 1175
    :catch_0
    move-exception v7

    .line 1177
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.categoryView error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
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
    .line 904
    .local p2, "resultProducts":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :goto_0
    return-void

    .line 906
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.search error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 4
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1201
    .local p2, "resultProducts":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    :goto_0
    return-void

    .line 1203
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.paymentView error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharingChennel"    # Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    .line 918
    :try_start_0
    invoke-virtual {p1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannelByChannelCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    move-result-object v0

    .line 919
    .local v0, "commerceChannel":Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v2

    invoke-interface {v2, p0, v0, p2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    .end local v0    # "commerceChannel":Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;
    :goto_0
    return-void

    .line 921
    :catch_0
    move-exception v1

    .line 923
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adbrix.Commerce.share error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 5
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1215
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannelByChannelCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    move-result-object v0

    .line 1216
    .local v0, "commerceChannel":Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v2

    invoke-interface {v2, p0, v0, p2, p3}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    .end local v0    # "commerceChannel":Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;
    :goto_0
    return-void

    .line 1218
    :catch_0
    move-exception v1

    .line 1220
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adbrix.Commerce.paymentView error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static viewHome(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 932
    :try_start_0
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->viewHome(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :goto_0
    return-void

    .line 934
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.Commerce.viewHome error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
