.class public Lcom/igaworks/commerce/IgawPurchaseItem;
.super Ljava/lang/Object;
.source "IgawPurchaseItem.java"


# instance fields
.field protected category:Ljava/lang/String;

.field protected currency:Ljava/lang/String;

.field protected orderID:Ljava/lang/String;

.field protected price:D

.field protected productID:Ljava/lang/String;

.field protected productName:Ljava/lang/String;

.field protected quantity:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->orderID:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productID:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productName:Ljava/lang/String;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->price:D

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->quantity:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->currency:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->category:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "productName"    # Ljava/lang/String;
    .param p3, "price"    # D
    .param p5, "quantity"    # I
    .param p6, "currency"    # Ljava/lang/String;
    .param p7, "category"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->orderID:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productID:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productName:Ljava/lang/String;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->price:D

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->quantity:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->currency:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->category:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productID:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productName:Ljava/lang/String;

    .line 34
    iput-wide p3, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->price:D

    .line 35
    iput p5, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->quantity:I

    .line 36
    iput-object p6, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->currency:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->category:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;
    .param p4, "price"    # D
    .param p6, "quantity"    # I
    .param p7, "currency"    # Ljava/lang/String;
    .param p8, "category"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->orderID:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productID:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productName:Ljava/lang/String;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->price:D

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->quantity:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->currency:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->category:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->orderID:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productID:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productName:Ljava/lang/String;

    .line 22
    iput-wide p4, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->price:D

    .line 23
    iput p6, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->quantity:I

    .line 24
    iput-object p7, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->currency:Ljava/lang/String;

    .line 25
    iput-object p8, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->category:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)Lcom/igaworks/commerce/IgawPurchaseItem;
    .locals 9
    .param p0, "orderID"    # Ljava/lang/String;
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "productName"    # Ljava/lang/String;
    .param p3, "price"    # D
    .param p5, "quantity"    # I
    .param p6, "currency"    # Ljava/lang/String;
    .param p7, "category"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/igaworks/commerce/IgawPurchaseItem;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/igaworks/commerce/IgawPurchaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->orderID:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->price:D

    return-wide v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->quantity:I

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->category:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->currency:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setOrderID(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderID"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->orderID:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPrice(D)V
    .locals 1
    .param p1, "price"    # D

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->price:D

    .line 81
    return-void
.end method

.method public setProductID(Ljava/lang/String;)V
    .locals 0
    .param p1, "productID"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productID:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->productName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/igaworks/commerce/IgawPurchaseItem;->quantity:I

    .line 68
    return-void
.end method
