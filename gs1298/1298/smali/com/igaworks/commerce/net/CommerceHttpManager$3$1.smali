.class Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;
.super Ljava/lang/Object;
.source "CommerceHttpManager.java"

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/net/CommerceHttpManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/net/CommerceHttpManager$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 14
    .param p1, "adInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v3, v0, Lcom/igaworks/commerce/net/CommerceHttpManager;->EVENT_REQUEST_URL_FOR_Commerce:Ljava/lang/String;

    .line 299
    .local v3, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$ServerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v3, v0, Lcom/igaworks/commerce/net/CommerceHttpManager;->EVENT_REQUEST_URL_FOR_Commerce_V2:Ljava/lang/String;

    .line 303
    :cond_0
    if-nez p1, :cond_4

    :try_start_0
    const-string v8, ""

    .line 304
    .local v8, "adid":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_5

    const/4 v10, 0x0

    .line 307
    .local v10, "optout":Z
    :goto_1
    const-string v11, ""

    .line 308
    .local v11, "param":Ljava/lang/String;
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$ServerType:I

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v1, v1, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v8, v10, v1, v2}, Lcom/igaworks/commerce/core/CommerceRequestParameter;->getCommerceEventParameter(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/igaworks/core/AESGetTrackParam;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 311
    :cond_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 313
    .local v12, "root":Lorg/json/JSONObject;
    const-string v0, "j"

    invoke-virtual {v12, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v4, ""

    .line 317
    .local v4, "rootString":Ljava/lang/String;
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$ServerType:I

    if-nez v0, :cond_2

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$ServerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 320
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v1, v1, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$items:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v8, v10, v1, v2}, Lcom/igaworks/commerce/core/CommerceRequestParameter;->getCommerceEventParameter(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;I)Ljava/lang/String;

    move-result-object v4

    .line 321
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customEventForCommerceV2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-static {v0, v1, v2, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 325
    :cond_3
    new-instance v13, Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v1, v1, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v5, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;

    invoke-direct {v5, p0}, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1$1;-><init>(Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    invoke-direct {v13, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 375
    .local v13, "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 376
    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 385
    .end local v4    # "rootString":Ljava/lang/String;
    .end local v8    # "adid":Ljava/lang/String;
    .end local v10    # "optout":Z
    .end local v11    # "param":Ljava/lang/String;
    .end local v12    # "root":Lorg/json/JSONObject;
    .end local v13    # "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    :goto_2
    return-void

    .line 303
    :cond_4
    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 304
    .restart local v8    # "adid":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    goto/16 :goto_1

    .line 378
    .end local v8    # "adid":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 379
    .local v9, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$ServerType:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v1, v1, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$items:Ljava/util/List;

    # invokes: Lcom/igaworks/commerce/net/CommerceHttpManager;->restoreCEventInfo(Landroid/content/Context;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->access$100(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;Ljava/util/List;)V

    .line 381
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$3;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2
.end method
