.class Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;
.super Ljava/lang/Object;
.source "CommerceHttpManager.java"

# interfaces
.implements Lcom/igaworks/interfaces/HttpCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 330
    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "responseResult null Error"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 369
    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$ServerType:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v3, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$items:Ljava/util/List;

    # invokes: Lcom/igaworks/commerce/net/CommerceHttpManager;->restoreCEventInfo(Landroid/content/Context;Ljava/util/List;)V
    invoke-static {v2, v3, v4}, Lcom/igaworks/commerce/net/CommerceHttpManager;->access$100(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;Ljava/util/List;)V

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 373
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void

    .line 335
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, commerce event response result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 336
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$ServerType:I

    if-nez v2, :cond_5

    .line 343
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 349
    :cond_4
    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v3, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v3, v3, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v4, v4, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$items:Ljava/util/List;

    # invokes: Lcom/igaworks/commerce/net/CommerceHttpManager;->restoreCEventInfo(Landroid/content/Context;Ljava/util/List;)V
    invoke-static {v2, v3, v4}, Lcom/igaworks/commerce/net/CommerceHttpManager;->access$100(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 353
    :cond_5
    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$ServerType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 355
    const-string v2, "Result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 357
    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    const-string v4, "result arimasida True"

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 361
    :cond_6
    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;->this$2:Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    const-string v4, "result arimasida False"

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
