.class public Lcom/igaworks/commerce/model/PurchaseItem;
.super Lcom/igaworks/commerce/IgawPurchaseItem;
.source "PurchaseItem.java"


# instance fields
.field private createdAt:Ljava/lang/String;

.field private isDirty:I

.field private key:I

.field private retryCnt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/igaworks/commerce/IgawPurchaseItem;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;
    .param p4, "price"    # D
    .param p6, "quantity"    # I
    .param p7, "currency"    # Ljava/lang/String;
    .param p8, "category"    # Ljava/lang/String;
    .param p9, "createdAt"    # Ljava/lang/String;
    .param p10, "retryCnt"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/igaworks/commerce/IgawPurchaseItem;-><init>()V

    .line 41
    iput p1, p0, Lcom/igaworks/commerce/model/PurchaseItem;->key:I

    .line 42
    iput-object p2, p0, Lcom/igaworks/commerce/model/PurchaseItem;->productID:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/igaworks/commerce/model/PurchaseItem;->productName:Ljava/lang/String;

    .line 44
    iput-wide p4, p0, Lcom/igaworks/commerce/model/PurchaseItem;->price:D

    .line 45
    iput p6, p0, Lcom/igaworks/commerce/model/PurchaseItem;->quantity:I

    .line 46
    iput-object p7, p0, Lcom/igaworks/commerce/model/PurchaseItem;->currency:Ljava/lang/String;

    .line 47
    iput-object p8, p0, Lcom/igaworks/commerce/model/PurchaseItem;->category:Ljava/lang/String;

    .line 48
    iput-object p9, p0, Lcom/igaworks/commerce/model/PurchaseItem;->createdAt:Ljava/lang/String;

    .line 49
    iput p10, p0, Lcom/igaworks/commerce/model/PurchaseItem;->retryCnt:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/igaworks/commerce/model/PurchaseItem;->isDirty:I

    .line 51
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "orderID"    # Ljava/lang/String;
    .param p3, "productID"    # Ljava/lang/String;
    .param p4, "productName"    # Ljava/lang/String;
    .param p5, "price"    # D
    .param p7, "quantity"    # I
    .param p8, "currency"    # Ljava/lang/String;
    .param p9, "category"    # Ljava/lang/String;
    .param p10, "createdAt"    # Ljava/lang/String;
    .param p11, "retryCnt"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/igaworks/commerce/IgawPurchaseItem;-><init>()V

    .line 25
    iput p1, p0, Lcom/igaworks/commerce/model/PurchaseItem;->key:I

    .line 26
    iput-object p2, p0, Lcom/igaworks/commerce/model/PurchaseItem;->orderID:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/igaworks/commerce/model/PurchaseItem;->productID:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/igaworks/commerce/model/PurchaseItem;->productName:Ljava/lang/String;

    .line 29
    iput-wide p5, p0, Lcom/igaworks/commerce/model/PurchaseItem;->price:D

    .line 30
    iput p7, p0, Lcom/igaworks/commerce/model/PurchaseItem;->quantity:I

    .line 31
    iput-object p8, p0, Lcom/igaworks/commerce/model/PurchaseItem;->currency:Ljava/lang/String;

    .line 32
    iput-object p9, p0, Lcom/igaworks/commerce/model/PurchaseItem;->category:Ljava/lang/String;

    .line 33
    iput-object p10, p0, Lcom/igaworks/commerce/model/PurchaseItem;->createdAt:Ljava/lang/String;

    .line 34
    iput p11, p0, Lcom/igaworks/commerce/model/PurchaseItem;->retryCnt:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/igaworks/commerce/model/PurchaseItem;->isDirty:I

    .line 36
    return-void
.end method


# virtual methods
.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/igaworks/commerce/model/PurchaseItem;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDirty()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/igaworks/commerce/model/PurchaseItem;->isDirty:I

    return v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/igaworks/commerce/model/PurchaseItem;->key:I

    return v0
.end method

.method public getRetryCnt()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/igaworks/commerce/model/PurchaseItem;->retryCnt:I

    return v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/igaworks/commerce/model/PurchaseItem;->createdAt:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setIsDirty(I)V
    .locals 0
    .param p1, "isDirty"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/igaworks/commerce/model/PurchaseItem;->isDirty:I

    .line 18
    return-void
.end method

.method public setKey(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/igaworks/commerce/model/PurchaseItem;->key:I

    .line 67
    return-void
.end method

.method public setRetryCnt(I)V
    .locals 0
    .param p1, "retryCnt"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/igaworks/commerce/model/PurchaseItem;->retryCnt:I

    .line 75
    return-void
.end method
