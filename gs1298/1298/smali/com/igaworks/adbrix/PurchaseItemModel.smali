.class public Lcom/igaworks/adbrix/PurchaseItemModel;
.super Ljava/lang/Object;
.source "PurchaseItemModel.java"


# instance fields
.field protected category:Ljava/lang/String;

.field protected currency:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

.field protected orderId:Ljava/lang/String;

.field protected price:D

.field protected productId:Ljava/lang/String;

.field protected productName:Ljava/lang/String;

.field protected quantity:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->orderId:Ljava/lang/String;

    .line 6
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productId:Ljava/lang/String;

    .line 7
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productName:Ljava/lang/String;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->price:D

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->quantity:I

    .line 11
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->category:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/adbrix/IgawAdbrix$Currency;Ljava/lang/String;)V
    .locals 2
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "productName"    # Ljava/lang/String;
    .param p3, "price"    # D
    .param p5, "quantity"    # I
    .param p6, "currency"    # Lcom/igaworks/adbrix/IgawAdbrix$Currency;
    .param p7, "category"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->orderId:Ljava/lang/String;

    .line 6
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productId:Ljava/lang/String;

    .line 7
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productName:Ljava/lang/String;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->price:D

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->quantity:I

    .line 11
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->category:Ljava/lang/String;

    .line 33
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productId:Ljava/lang/String;

    .line 34
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iput-object p2, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productName:Ljava/lang/String;

    .line 35
    :cond_1
    iput p5, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->quantity:I

    .line 36
    iput-object p6, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->currency:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    .line 37
    if-eqz p7, :cond_2

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iput-object p7, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->category:Ljava/lang/String;

    .line 38
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/adbrix/IgawAdbrix$Currency;Ljava/lang/String;)V
    .locals 2
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;
    .param p4, "price"    # D
    .param p6, "quantity"    # I
    .param p7, "currency"    # Lcom/igaworks/adbrix/IgawAdbrix$Currency;
    .param p8, "category"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->orderId:Ljava/lang/String;

    .line 6
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productId:Ljava/lang/String;

    .line 7
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productName:Ljava/lang/String;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->price:D

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->quantity:I

    .line 11
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->category:Ljava/lang/String;

    .line 19
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->orderId:Ljava/lang/String;

    .line 20
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iput-object p2, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productId:Ljava/lang/String;

    .line 21
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iput-object p3, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productName:Ljava/lang/String;

    .line 22
    :cond_2
    iput-wide p4, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->price:D

    .line 23
    iput p6, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->quantity:I

    .line 24
    iput-object p7, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->currency:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    .line 25
    if-eqz p8, :cond_3

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iput-object p8, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->category:Ljava/lang/String;

    .line 26
    :cond_3
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/adbrix/IgawAdbrix$Currency;Ljava/lang/String;)Lcom/igaworks/adbrix/PurchaseItemModel;
    .locals 9
    .param p0, "orderID"    # Ljava/lang/String;
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "productName"    # Ljava/lang/String;
    .param p3, "price"    # D
    .param p5, "quantity"    # I
    .param p6, "currency"    # Lcom/igaworks/adbrix/IgawAdbrix$Currency;
    .param p7, "category"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/igaworks/adbrix/PurchaseItemModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/igaworks/adbrix/PurchaseItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/adbrix/IgawAdbrix$Currency;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Lcom/igaworks/adbrix/IgawAdbrix$Currency;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->currency:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    return-object v0
.end method

.method public getOrderID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->price:D

    return-wide v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->quantity:I

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->category:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setCurrency(Lcom/igaworks/adbrix/IgawAdbrix$Currency;)V
    .locals 0
    .param p1, "currency"    # Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->currency:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    .line 87
    return-void
.end method

.method public setOrderID(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderID"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->orderId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPrice(D)V
    .locals 1
    .param p1, "price"    # D

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->price:D

    .line 81
    return-void
.end method

.method public setProductID(Ljava/lang/String;)V
    .locals 0
    .param p1, "productID"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->productName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/igaworks/adbrix/PurchaseItemModel;->quantity:I

    .line 68
    return-void
.end method
