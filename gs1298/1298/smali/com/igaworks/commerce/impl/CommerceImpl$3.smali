.class Lcom/igaworks/commerce/impl/CommerceImpl$3;
.super Ljava/lang/Object;
.source "CommerceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/impl/CommerceImpl;->onStartSession(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/commerce/impl/CommerceImpl;

.field final synthetic val$_context:Landroid/content/Context;

.field final synthetic val$parameter:Lcom/igaworks/core/RequestParameter;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/impl/CommerceImpl;Landroid/content/Context;Lcom/igaworks/core/RequestParameter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/impl/CommerceImpl;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->this$0:Lcom/igaworks/commerce/impl/CommerceImpl;

    iput-object p2, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 427
    :try_start_0
    iget-object v5, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    invoke-static {v5}, Lcom/igaworks/util/CommonHelper;->checkInternetConnection(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_2

    .line 430
    :try_start_1
    iget-object v5, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    invoke-static {v5}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/PurchaseRetryDAO;

    move-result-object v0

    .line 431
    .local v0, "dao":Lcom/igaworks/commerce/db/PurchaseRetryDAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->getRetryPurchase()Ljava/util/ArrayList;

    move-result-object v2

    .line 433
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 435
    iget-object v5, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry Purchase - count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 436
    # getter for: Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;
    invoke-static {}, Lcom/igaworks/commerce/impl/CommerceImpl;->access$000()Lcom/igaworks/commerce/net/CommerceHttpManager;

    move-result-object v5

    iget-object v6, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iget-object v7, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    invoke-virtual {v5, v6, v7, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->purchaseForCommerce(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 444
    .end local v0    # "dao":Lcom/igaworks/commerce/db/PurchaseRetryDAO;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/PurchaseItem;>;"
    :cond_0
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    invoke-static {v5}, Lcom/igaworks/commerce/db/CommerceEventDAO;->getEvents(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 446
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 448
    # getter for: Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;
    invoke-static {}, Lcom/igaworks/commerce/impl/CommerceImpl;->access$000()Lcom/igaworks/commerce/net/CommerceHttpManager;

    move-result-object v5

    iget-object v6, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iget-object v7, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v3, v8}, Lcom/igaworks/commerce/net/CommerceHttpManager;->customEventForCommerce(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/List;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 454
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    invoke-static {v5}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 455
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v4

    .line 457
    .local v4, "itemsForCommerceV2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 459
    iget-object v5, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "events for commerceV2 - count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 460
    # getter for: Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;
    invoke-static {}, Lcom/igaworks/commerce/impl/CommerceImpl;->access$000()Lcom/igaworks/commerce/net/CommerceHttpManager;

    move-result-object v5

    iget-object v6, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    invoke-static {v6}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    iget-object v7, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    invoke-virtual {v5, v6, v7, v4}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 486
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "itemsForCommerceV2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :cond_2
    :goto_1
    return-void

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v5, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry Purchase error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 483
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 484
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    const-string v6, "IGAW_QA"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v10, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1

    .line 464
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v1

    .line 465
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v5, p0, Lcom/igaworks/commerce/impl/CommerceImpl$3;->val$_context:Landroid/content/Context;

    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "events for commerceV2 error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method
