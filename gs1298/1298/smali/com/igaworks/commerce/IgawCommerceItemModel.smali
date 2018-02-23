.class public Lcom/igaworks/commerce/IgawCommerceItemModel;
.super Ljava/lang/Object;
.source "IgawCommerceItemModel.java"


# instance fields
.field protected category:Ljava/lang/String;

.field protected currency:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field protected orderID:Ljava/lang/String;

.field protected price:D

.field protected productID:Ljava/lang/String;

.field protected productName:Ljava/lang/String;

.field protected quantity:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->orderID:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productID:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productName:Ljava/lang/String;

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->price:D

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->quantity:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->category:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/commerce/IgawCommerce$Currency;Ljava/lang/String;)V
    .locals 3
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "productName"    # Ljava/lang/String;
    .param p3, "price"    # D
    .param p5, "quantity"    # I
    .param p6, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p7, "category"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->orderID:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productID:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productName:Ljava/lang/String;

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->price:D

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->quantity:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->category:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productID:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productName:Ljava/lang/String;

    .line 36
    iput-wide p3, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->price:D

    .line 37
    iput p5, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->quantity:I

    .line 38
    iput-object p6, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->currency:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 39
    iput-object p7, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->category:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/commerce/IgawCommerce$Currency;Ljava/lang/String;)V
    .locals 2
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;
    .param p4, "price"    # D
    .param p6, "quantity"    # I
    .param p7, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p8, "category"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->orderID:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productID:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productName:Ljava/lang/String;

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->price:D

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->quantity:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->category:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->orderID:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productID:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productName:Ljava/lang/String;

    .line 24
    iput-wide p4, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->price:D

    .line 25
    iput p6, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->quantity:I

    .line 26
    iput-object p7, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->currency:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 27
    iput-object p8, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->category:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/commerce/IgawCommerce$Currency;Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceItemModel;
    .locals 9
    .param p0, "orderID"    # Ljava/lang/String;
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "productName"    # Ljava/lang/String;
    .param p3, "price"    # D
    .param p5, "quantity"    # I
    .param p6, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p7, "category"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Lcom/igaworks/commerce/IgawCommerceItemModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/igaworks/commerce/IgawCommerceItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/commerce/IgawCommerce$Currency;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Lcom/igaworks/commerce/IgawCommerce$Currency;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->currency:Lcom/igaworks/commerce/IgawCommerce$Currency;

    return-object v0
.end method

.method public getOrderID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->orderID:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->price:D

    return-wide v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->quantity:I

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->category:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setCurrency(Lcom/igaworks/commerce/IgawCommerce$Currency;)V
    .locals 0
    .param p1, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->currency:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 89
    return-void
.end method

.method public setOrderID(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderID"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->orderID:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPrice(D)V
    .locals 1
    .param p1, "price"    # D

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->price:D

    .line 83
    return-void
.end method

.method public setProductID(Ljava/lang/String;)V
    .locals 0
    .param p1, "productID"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productID:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->productName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/igaworks/commerce/IgawCommerceItemModel;->quantity:I

    .line 70
    return-void
.end method
