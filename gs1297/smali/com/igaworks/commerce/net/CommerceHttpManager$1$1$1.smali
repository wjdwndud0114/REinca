.class Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;
.super Ljava/lang/Object;
.source "CommerceHttpManager.java"

# interfaces
.implements Lcom/igaworks/interfaces/HttpCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 111
    if-eqz p1, :cond_0

    :try_start_0
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    :cond_0
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "responseResult null Error"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    iget-object v3, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v4, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    iget-object v5, v5, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v5, v5, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/igaworks/commerce/net/CommerceHttpManager;->restorePurchaseInfo(Landroid/content/Context;Ljava/util/List;)V

    .line 132
    iget-object v3, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    const-string v4, "IGAW_QA"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 115
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADBrixTracer, commerce purchase response result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 116
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "errMsg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "errMsg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    iget-object v3, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/commerce/db/PurchaseRetryDAO;

    move-result-object v0

    .line 123
    .local v0, "dao":Lcom/igaworks/commerce/db/PurchaseRetryDAO;
    iget-object v3, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$items:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v3, v4}, Lcom/igaworks/commerce/db/PurchaseRetryDAO;->removePurchaseItem(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;

    goto :goto_0

    .line 125
    .end local v0    # "dao":Lcom/igaworks/commerce/db/PurchaseRetryDAO;
    :cond_2
    iget-object v3, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v4, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    iget-object v5, v5, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$1;

    iget-object v5, v5, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/igaworks/commerce/net/CommerceHttpManager;->restorePurchaseInfo(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
