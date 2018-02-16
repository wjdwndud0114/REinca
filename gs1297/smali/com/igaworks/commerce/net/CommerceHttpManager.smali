.class public Lcom/igaworks/commerce/net/CommerceHttpManager;
.super Lcom/igaworks/net/CommonHttpManager;
.source "CommerceHttpManager.java"


# static fields
.field public static final ERR_MSG:Ljava/lang/String; = "errMsg"

.field public static cmc_domain:Ljava/lang/String;


# instance fields
.field public EVENT_REQUEST_URL_FOR_Commerce:Ljava/lang/String;

.field public EVENT_REQUEST_URL_FOR_Commerce_V2:Ljava/lang/String;

.field public PURCHASE_REQUEST_URL_FOR_Commerce:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "https://apiab4c.ad-brix.com/v1/"

    sput-object v0, Lcom/igaworks/commerce/net/CommerceHttpManager;->cmc_domain:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/igaworks/net/CommonHttpManager;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igaworks/commerce/net/CommerceHttpManager;->cmc_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tracking/purchases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager;->PURCHASE_REQUEST_URL_FOR_Commerce:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igaworks/commerce/net/CommerceHttpManager;->cmc_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tracking/customEvents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager;->EVENT_REQUEST_URL_FOR_Commerce:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igaworks/commerce/net/CommerceHttpManager;->cmc_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager;->EVENT_REQUEST_URL_FOR_Commerce_V2:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/commerce/net/CommerceHttpManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->restoreCV2EventInfo(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/commerce/net/CommerceHttpManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->restoreCEventInfo(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private restoreCEventInfo(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/igaworks/commerce/db/CommerceEventDAO;->addEvents(Landroid/content/Context;Ljava/util/List;)V

    .line 419
    return-void
.end method

.method private restoreCV2EventInfo(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/model/CommerceV2EventItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CommerceV2 > saved failed commerceV2Events, saved item : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {p1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 424
    invoke-static {p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 426
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/commerce/model/CommerceV2EventItem;

    .line 428
    .local v1, "item":Lcom/igaworks/commerce/model/CommerceV2EventItem;
    invoke-virtual {v1}, Lcom/igaworks/commerce/model/CommerceV2EventItem;->getRetryCnt()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    .line 430
    invoke-virtual {v1}, Lcom/igaworks/commerce/model/CommerceV2EventItem;->getKey()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->removeRetryCount(I)Z

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {v1}, Lcom/igaworks/commerce/model/CommerceV2EventItem;->getKey()I

    move-result v3

    invoke-virtual {v1}, Lcom/igaworks/commerce/model/CommerceV2EventItem;->getJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->updateOrInsertConversion(ILjava/lang/String;)V

    goto :goto_0

    .line 441
    .end local v1    # "item":Lcom/igaworks/commerce/model/CommerceV2EventItem;
    :cond_1
    return-void
.end method


# virtual methods
.method public customEventForCommerce(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "ServerType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/core/RequestParameter;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/igaworks/commerce/net/CommerceHttpManager$3;-><init>(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;ILjava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method

.method public eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/core/RequestParameter;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/commerce/model/CommerceV2EventItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    sget-object v0, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/igaworks/commerce/net/CommerceHttpManager$2;-><init>(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public purchaseForCommerce(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/core/RequestParameter;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/commerce/model/PurchaseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    sget-object v0, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/igaworks/commerce/net/CommerceHttpManager$1;-><init>(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/core/RequestParameter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public restorePurchaseInfo(Landroid/content/Context;Ljava/util/List;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/model/PurchaseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    invoke-static {p1}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/PurchaseRetryDAO;

    move-result-object v1

    .line 402
    .local v1, "dao":Lcom/igaworks/commerce/db/PurchaseRetryDAO;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/commerce/model/PurchaseItem;

    .line 404
    .local v0, "item":Lcom/igaworks/commerce/model/PurchaseItem;
    invoke-virtual {v0}, Lcom/igaworks/commerce/model/PurchaseItem;->getRetryCnt()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/igaworks/commerce/model/PurchaseItem;->getKey()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->removeRetryCount(I)Z

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {v0}, Lcom/igaworks/commerce/model/PurchaseItem;->getKey()I

    move-result v2

    invoke-virtual {v0}, Lcom/igaworks/commerce/model/PurchaseItem;->getOrderID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/igaworks/commerce/model/PurchaseItem;->getProductID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/igaworks/commerce/model/PurchaseItem;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/igaworks/commerce/model/PurchaseItem;->getPrice()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/igaworks/commerce/model/PurchaseItem;->getQuantity()I

    move-result v8

    .line 408
    invoke-virtual {v0}, Lcom/igaworks/commerce/model/PurchaseItem;->getCurrency()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/igaworks/commerce/model/PurchaseItem;->getCategory()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/igaworks/commerce/model/PurchaseItem;->getCreatedAt()Ljava/lang/String;

    move-result-object v11

    .line 407
    invoke-virtual/range {v1 .. v11}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->updateOrInsertConversionForRetry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    .end local v0    # "item":Lcom/igaworks/commerce/model/PurchaseItem;
    :cond_1
    return-void
.end method
