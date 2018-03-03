.class public Lcom/igaworks/commerce/IgawCommerceProductModel;
.super Ljava/lang/Object;
.source "IgawCommerceProductModel.java"


# static fields
.field private static context:Landroid/content/Context;


# instance fields
.field protected category:Ljava/lang/String;

.field protected currency:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field protected discount:Ljava/lang/Double;

.field protected extraAttrsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected price:Ljava/lang/Double;

.field protected productID:Ljava/lang/String;

.field protected productName:Ljava/lang/String;

.field protected quantity:Ljava/lang/Integer;

.field protected stringCurrency:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productID:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productName:Ljava/lang/String;

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->price:Ljava/lang/Double;

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->discount:Ljava/lang/Double;

    .line 20
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->quantity:Ljava/lang/Integer;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->stringCurrency:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Lcom/igaworks/commerce/IgawCommerceProductAttrModel;)V
    .locals 4
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "productName"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/Double;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "quantity"    # Ljava/lang/Integer;
    .param p6, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p7, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .param p8, "attr"    # Lcom/igaworks/commerce/IgawCommerceProductAttrModel;

    .prologue
    const-wide/16 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v1, ""

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productID:Ljava/lang/String;

    .line 17
    const-string v1, ""

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productName:Ljava/lang/String;

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->price:Ljava/lang/Double;

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->discount:Ljava/lang/Double;

    .line 20
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->quantity:Ljava/lang/Integer;

    .line 22
    const-string v1, ""

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->stringCurrency:Ljava/lang/String;

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    .line 39
    if-eqz p8, :cond_1

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 43
    iget-object v1, p8, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->key:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p8, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->key:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    iget-object v2, p8, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->key:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p8, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->value:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "i":I
    :cond_1
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productID:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->price:Ljava/lang/Double;

    .line 57
    iput-object p4, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->discount:Ljava/lang/Double;

    .line 58
    iput-object p5, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->quantity:Ljava/lang/Integer;

    .line 59
    iput-object p6, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->currency:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 60
    if-eqz p7, :cond_2

    .line 61
    invoke-virtual {p7}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->getCategoryFullString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->category:Ljava/lang/String;

    .line 62
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Lcom/igaworks/commerce/IgawCommerceProductAttrModel;)V
    .locals 4
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "productName"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/Double;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "quantity"    # Ljava/lang/Integer;
    .param p6, "currency"    # Ljava/lang/String;
    .param p7, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .param p8, "attr"    # Lcom/igaworks/commerce/IgawCommerceProductAttrModel;

    .prologue
    const-wide/16 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v1, ""

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productID:Ljava/lang/String;

    .line 17
    const-string v1, ""

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productName:Ljava/lang/String;

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->price:Ljava/lang/Double;

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->discount:Ljava/lang/Double;

    .line 20
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->quantity:Ljava/lang/Integer;

    .line 22
    const-string v1, ""

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->stringCurrency:Ljava/lang/String;

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    .line 72
    if-eqz p8, :cond_1

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 76
    iget-object v1, p8, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->key:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p8, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->key:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    iget-object v2, p8, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->key:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p8, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->value:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    :cond_1
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productID:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productName:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->price:Ljava/lang/Double;

    .line 90
    iput-object p4, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->discount:Ljava/lang/Double;

    .line 91
    iput-object p5, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->quantity:Ljava/lang/Integer;

    .line 92
    iput-object p6, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->stringCurrency:Ljava/lang/String;

    .line 93
    if-eqz p7, :cond_2

    .line 94
    invoke-virtual {p7}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->getCategoryFullString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->category:Ljava/lang/String;

    .line 95
    :cond_2
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Lcom/igaworks/commerce/IgawCommerceProductAttrModel;)Lcom/igaworks/commerce/IgawCommerceProductModel;
    .locals 9
    .param p0, "productID"    # Ljava/lang/String;
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/Double;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "quantity"    # Ljava/lang/Integer;
    .param p5, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p6, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .param p7, "attr"    # Lcom/igaworks/commerce/IgawCommerceProductAttrModel;

    .prologue
    .line 99
    new-instance v0, Lcom/igaworks/commerce/IgawCommerceProductModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Lcom/igaworks/commerce/IgawCommerceProductAttrModel;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Lcom/igaworks/commerce/IgawCommerceProductAttrModel;)Lcom/igaworks/commerce/IgawCommerceProductModel;
    .locals 9
    .param p0, "productID"    # Ljava/lang/String;
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/Double;
    .param p3, "discount"    # Ljava/lang/Double;
    .param p4, "quantity"    # Ljava/lang/Integer;
    .param p5, "currency"    # Ljava/lang/String;
    .param p6, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .param p7, "attr"    # Lcom/igaworks/commerce/IgawCommerceProductAttrModel;

    .prologue
    .line 105
    new-instance v0, Lcom/igaworks/commerce/IgawCommerceProductModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Lcom/igaworks/commerce/IgawCommerceProductAttrModel;)V

    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Lcom/igaworks/commerce/IgawCommerce$Currency;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->currency:Lcom/igaworks/commerce/IgawCommerce$Currency;

    return-object v0
.end method

.method public getDiscount()D
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->discount:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtraAttrs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->price:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->quantity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStandardCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->stringCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;)Lcom/igaworks/commerce/IgawCommerceProductModel;
    .locals 1
    .param p1, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->getCategoryFullString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->category:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public setCurrency(Lcom/igaworks/commerce/IgawCommerce$Currency;)Lcom/igaworks/commerce/IgawCommerceProductModel;
    .locals 0
    .param p1, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->currency:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 164
    return-object p0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductModel;
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->stringCurrency:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public setDiscount(D)Lcom/igaworks/commerce/IgawCommerceProductModel;
    .locals 1
    .param p1, "discount"    # D

    .prologue
    .line 149
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->discount:Ljava/lang/Double;

    .line 150
    return-object p0
.end method

.method public setExtraAttrs(Lcom/igaworks/commerce/IgawCommerceProductAttrModel;)Lcom/igaworks/commerce/IgawCommerceProductModel;
    .locals 4
    .param p1, "attr"    # Lcom/igaworks/commerce/IgawCommerceProductAttrModel;

    .prologue
    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    .line 183
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    .line 184
    if-eqz p1, :cond_1

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 188
    iget-object v1, p1, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->key:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p1, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->key:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->key:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->value:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public setExtraAttrs(Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductModel;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 202
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    .line 207
    :cond_0
    sget-object v0, Lcom/igaworks/commerce/IgawCommerceProductModel;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 208
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/igaworks/commerce/IgawCommerceProductModel;->context:Landroid/content/Context;

    .line 211
    :cond_1
    sget-object v0, Lcom/igaworks/commerce/IgawCommerceProductModel;->context:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 212
    const-string v0, "IGAW_QA"

    const-string v1, "eventFired >> Context is null. check start session is called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    .line 218
    sget-object v0, Lcom/igaworks/commerce/IgawCommerceProductModel;->context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "IgawCommerceProductAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    invoke-static {v0, v1, v2, v3, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 226
    :goto_0
    return-object p0

    .line 221
    :cond_3
    if-nez p1, :cond_4

    const-string p1, ""

    .line 222
    :cond_4
    if-nez p2, :cond_5

    const-string p2, ""

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->extraAttrsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPrice(D)Lcom/igaworks/commerce/IgawCommerceProductModel;
    .locals 1
    .param p1, "price"    # D

    .prologue
    .line 141
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->price:Ljava/lang/Double;

    .line 142
    return-object p0
.end method

.method public setProductID(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductModel;
    .locals 0
    .param p1, "productID"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productID:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public setProductName(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductModel;
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->productName:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public setQuantity(I)Lcom/igaworks/commerce/IgawCommerceProductModel;
    .locals 1
    .param p1, "quantity"    # I

    .prologue
    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductModel;->quantity:Ljava/lang/Integer;

    .line 127
    return-object p0
.end method
