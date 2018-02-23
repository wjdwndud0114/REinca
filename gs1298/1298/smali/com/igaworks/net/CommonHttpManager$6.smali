.class Lcom/igaworks/net/CommonHttpManager$6;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager;->restoreConversionInfo(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/CommonHttpManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/CommonHttpManager;

    .prologue
    .line 937
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$6;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iput-object p2, p0, Lcom/igaworks/net/CommonHttpManager$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/net/CommonHttpManager$6;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 937
    invoke-virtual {p0, p1}, Lcom/igaworks/net/CommonHttpManager$6;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 941
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$6;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    move-result-object v0

    .line 943
    .local v0, "dao":Lcom/igaworks/dao/DeeplinkConversionRetryDAO;
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$6;->val$items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/model/DeeplinkConversionItem;

    .line 945
    .local v1, "item":Lcom/igaworks/model/DeeplinkConversionItem;
    invoke-virtual {v1}, Lcom/igaworks/model/DeeplinkConversionItem;->getRetryCnt()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    .line 946
    invoke-virtual {v1}, Lcom/igaworks/model/DeeplinkConversionItem;->getKey()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->removeRetryCount(I)Z

    goto :goto_0

    .line 948
    :cond_0
    invoke-virtual {v1}, Lcom/igaworks/model/DeeplinkConversionItem;->getKey()I

    move-result v3

    invoke-virtual {v1}, Lcom/igaworks/model/DeeplinkConversionItem;->getConversionKey()I

    move-result v4

    invoke-virtual {v1}, Lcom/igaworks/model/DeeplinkConversionItem;->getCommerceClickID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->updateOrInsertConversionForRetry(IILjava/lang/String;)V

    goto :goto_0

    .line 952
    .end local v1    # "item":Lcom/igaworks/model/DeeplinkConversionItem;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
