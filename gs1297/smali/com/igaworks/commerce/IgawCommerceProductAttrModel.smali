.class public Lcom/igaworks/commerce/IgawCommerceProductAttrModel;
.super Lcom/igaworks/commerce/IgawCommerceProductModel;
.source "IgawCommerceProductAttrModel.java"


# static fields
.field private static context:Landroid/content/Context;


# instance fields
.field key:[Ljava/lang/String;

.field value:[Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 20
    invoke-direct {p0}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>()V

    .line 16
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->key:[Ljava/lang/String;

    .line 17
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->value:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x5

    .line 24
    invoke-direct {p0}, Lcom/igaworks/commerce/IgawCommerceProductModel;-><init>()V

    .line 16
    new-array v3, v4, [Ljava/lang/String;

    iput-object v3, p0, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->key:[Ljava/lang/String;

    .line 17
    new-array v3, v4, [Ljava/lang/String;

    iput-object v3, p0, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->value:[Ljava/lang/String;

    .line 26
    if-eqz p1, :cond_3

    .line 28
    :try_start_0
    sget-object v3, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->context:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 30
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->context:Landroid/content/Context;

    .line 33
    :cond_0
    sget-object v3, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->context:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 35
    const-string v3, "IGAW_QA"

    const-string v4, "eventFired >> Context is null. check start session is called."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    .local v0, "i":I
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 40
    .local v2, "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->key:[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 43
    iget-object v5, p0, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->value:[Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v5, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    const/4 v3, 0x4

    if-le v0, v3, :cond_2

    .line 47
    sget-object v3, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;->context:Landroid/content/Context;

    const-string v4, "IGAW_QA"

    const-string v5, "IgawCommerceProductAttr parmater counts must set less then 5, data from the 6th to the end gonna be missed!!"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "treeMapAttrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static create(Ljava/util/Map;)Lcom/igaworks/commerce/IgawCommerceProductAttrModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/igaworks/commerce/IgawCommerceProductAttrModel;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;

    invoke-direct {v0, p0}, Lcom/igaworks/commerce/IgawCommerceProductAttrModel;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
