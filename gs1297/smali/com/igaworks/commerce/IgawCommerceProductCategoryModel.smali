.class public Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
.super Lcom/igaworks/commerce/IgawCommerceProductModel;
.source "IgawCommerceProductCategoryModel.java"


# instance fields
.field categories:[Ljava/lang/String;

.field private categoryFullString:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>()V

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categoryFullString:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "category1"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>()V

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categoryFullString:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 15
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->setCategoryFullString([Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "category1"    # Ljava/lang/String;
    .param p2, "category2"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>()V

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categoryFullString:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 22
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 23
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->setCategoryFullString([Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "category1"    # Ljava/lang/String;
    .param p2, "category2"    # Ljava/lang/String;
    .param p3, "category3"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>()V

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categoryFullString:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 30
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 31
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 32
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->setCategoryFullString([Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "category1"    # Ljava/lang/String;
    .param p2, "category2"    # Ljava/lang/String;
    .param p3, "category3"    # Ljava/lang/String;
    .param p4, "category4"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>()V

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categoryFullString:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 39
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 40
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 41
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 42
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->setCategoryFullString([Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "category1"    # Ljava/lang/String;
    .param p2, "category2"    # Ljava/lang/String;
    .param p3, "category3"    # Ljava/lang/String;
    .param p4, "category4"    # Ljava/lang/String;
    .param p5, "category5"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>()V

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categoryFullString:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 49
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 51
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 52
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object p5, v0, v1

    .line 53
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categories:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->setCategoryFullString([Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .locals 1
    .param p0, "category1"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    invoke-direct {v0, p0}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .locals 1
    .param p0, "category1"    # Ljava/lang/String;
    .param p1, "category2"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    invoke-direct {v0, p0, p1}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .locals 1
    .param p0, "category1"    # Ljava/lang/String;
    .param p1, "category2"    # Ljava/lang/String;
    .param p2, "category3"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    invoke-direct {v0, p0, p1, p2}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .locals 1
    .param p0, "category1"    # Ljava/lang/String;
    .param p1, "category2"    # Ljava/lang/String;
    .param p2, "category3"    # Ljava/lang/String;
    .param p3, "category4"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .locals 6
    .param p0, "category1"    # Ljava/lang/String;
    .param p1, "category2"    # Ljava/lang/String;
    .param p2, "category3"    # Ljava/lang/String;
    .param p3, "category4"    # Ljava/lang/String;
    .param p4, "category5"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCategoryFullString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categoryFullString:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryFullString([Ljava/lang/String;)V
    .locals 4
    .param p1, "categories"    # [Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, ""

    .line 88
    .local v0, "fullString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 90
    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 100
    :cond_2
    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;->categoryFullString:Ljava/lang/String;

    .line 101
    return-void
.end method
