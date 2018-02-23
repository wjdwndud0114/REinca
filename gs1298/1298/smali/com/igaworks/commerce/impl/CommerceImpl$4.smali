.class Lcom/igaworks/commerce/impl/CommerceImpl$4;
.super Ljava/lang/Object;
.source "CommerceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/impl/CommerceImpl;->onEndSession(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/commerce/impl/CommerceImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sessionStackCount:I


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/impl/CommerceImpl;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/impl/CommerceImpl;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/igaworks/commerce/impl/CommerceImpl$4;->this$0:Lcom/igaworks/commerce/impl/CommerceImpl;

    iput-object p2, p0, Lcom/igaworks/commerce/impl/CommerceImpl$4;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/igaworks/commerce/impl/CommerceImpl$4;->val$sessionStackCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 516
    :try_start_0
    iget-object v4, p0, Lcom/igaworks/commerce/impl/CommerceImpl$4;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/igaworks/util/CommonHelper;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 517
    iget v4, p0, Lcom/igaworks/commerce/impl/CommerceImpl$4;->val$sessionStackCount:I

    if-nez v4, :cond_1

    .line 519
    iget-object v4, p0, Lcom/igaworks/commerce/impl/CommerceImpl$4;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/igaworks/commerce/db/CommerceEventDAO;->getEvents(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 521
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 524
    # getter for: Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;
    invoke-static {}, Lcom/igaworks/commerce/impl/CommerceImpl;->access$000()Lcom/igaworks/commerce/net/CommerceHttpManager;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/commerce/impl/CommerceImpl$4;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v5

    iget-object v6, p0, Lcom/igaworks/commerce/impl/CommerceImpl$4;->val$context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v2, v7}, Lcom/igaworks/commerce/net/CommerceHttpManager;->customEventForCommerce(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 530
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/igaworks/commerce/impl/CommerceImpl$4;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 531
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v3

    .line 533
    .local v3, "itemsForCommerceV2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 535
    iget-object v4, p0, Lcom/igaworks/commerce/impl/CommerceImpl$4;->val$context:Landroid/content/Context;

    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "events for commerceV2 - count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 536
    # getter for: Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;
    invoke-static {}, Lcom/igaworks/commerce/impl/CommerceImpl;->access$000()Lcom/igaworks/commerce/net/CommerceHttpManager;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/commerce/impl/CommerceImpl$4;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v5

    iget-object v6, p0, Lcom/igaworks/commerce/impl/CommerceImpl$4;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v5, v6, v3}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 550
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "itemsForCommerceV2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :cond_1
    :goto_0
    return-void

    .line 540
    .restart local v2    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lcom/igaworks/commerce/impl/CommerceImpl$4;->val$context:Landroid/content/Context;

    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "events for commerceV2 error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 547
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 548
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
