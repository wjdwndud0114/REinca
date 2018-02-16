.class Lcom/igaworks/commerce/impl/CommerceImpl$5;
.super Ljava/lang/Object;
.source "CommerceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/impl/CommerceImpl;->flushForCommerceV2(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/commerce/impl/CommerceImpl;

.field final synthetic val$_context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/impl/CommerceImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/impl/CommerceImpl;

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/igaworks/commerce/impl/CommerceImpl$5;->this$0:Lcom/igaworks/commerce/impl/CommerceImpl;

    iput-object p2, p0, Lcom/igaworks/commerce/impl/CommerceImpl$5;->val$_context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1621
    :try_start_0
    iget-object v3, p0, Lcom/igaworks/commerce/impl/CommerceImpl$5;->val$_context:Landroid/content/Context;

    invoke-static {v3}, Lcom/igaworks/util/CommonHelper;->checkInternetConnection(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 1626
    :try_start_1
    iget-object v3, p0, Lcom/igaworks/commerce/impl/CommerceImpl$5;->val$_context:Landroid/content/Context;

    invoke-static {v3}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    move-result-object v0

    .line 1627
    .local v0, "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;

    move-result-object v2

    .line 1629
    .local v2, "itemsForCommerceV2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1631
    iget-object v3, p0, Lcom/igaworks/commerce/impl/CommerceImpl$5;->val$_context:Landroid/content/Context;

    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "( premium flush )events for commerceV2 - count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1632
    # getter for: Lcom/igaworks/commerce/impl/CommerceImpl;->httpManager:Lcom/igaworks/commerce/net/CommerceHttpManager;
    invoke-static {}, Lcom/igaworks/commerce/impl/CommerceImpl;->access$000()Lcom/igaworks/commerce/net/CommerceHttpManager;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/commerce/impl/CommerceImpl$5;->val$_context:Landroid/content/Context;

    invoke-static {v4}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/commerce/impl/CommerceImpl$5;->val$_context:Landroid/content/Context;

    invoke-virtual {v3, v4, v5, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1645
    .end local v0    # "dao":Lcom/igaworks/commerce/db/CommerceEventV2DAO;
    .end local v2    # "itemsForCommerceV2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/commerce/model/CommerceV2EventItem;>;"
    :cond_0
    :goto_0
    return-void

    .line 1635
    :catch_0
    move-exception v1

    .line 1637
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/igaworks/commerce/impl/CommerceImpl$5;->val$_context:Landroid/content/Context;

    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "( premium flush )events for commerceV2 error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1641
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1643
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/igaworks/commerce/impl/CommerceImpl$5;->val$_context:Landroid/content/Context;

    const-string v4, "IGAW_QA"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v8, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method
