.class Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;
.super Ljava/lang/Object;
.source "CommerceHttpManager.java"

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/net/CommerceHttpManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/net/CommerceHttpManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 15
    .param p1, "adInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    .line 174
    if-nez p1, :cond_0

    const-string v10, ""

    .line 175
    .local v10, "adid":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const/4 v12, 0x0

    .line 179
    .local v12, "optout":Z
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "eventForCommerceV2"

    const/4 v5, 0x3

    invoke-static {v0, v1, v2, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v3, v0, Lcom/igaworks/commerce/net/CommerceHttpManager;->EVENT_REQUEST_URL_FOR_Commerce_V2:Ljava/lang/String;

    .line 183
    .local v3, "url":Ljava/lang/String;
    const-string v4, ""

    .line 185
    .local v4, "rootString":Ljava/lang/String;
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v1, v1, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$items:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v0, v10, v12, v1, v2}, Lcom/igaworks/commerce/core/CommerceRequestParameter;->getCommerceV2EventParameter(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;I)Ljava/lang/String;

    move-result-object v4

    .line 186
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

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

    .line 188
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v13

    .line 189
    .local v13, "rp":Lcom/igaworks/core/RequestParameter;
    invoke-virtual {v13}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 190
    .local v8, "adBrixUserNum":J
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    .line 219
    :try_start_1
    new-instance v14, Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v1, v1, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v5, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1$1;

    invoke-direct {v5, p0}, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1$1;-><init>(Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    invoke-direct {v14, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 253
    .local v14, "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 254
    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "rootString":Ljava/lang/String;
    .end local v8    # "adBrixUserNum":J
    .end local v13    # "rp":Lcom/igaworks/core/RequestParameter;
    .end local v14    # "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    :goto_2
    return-void

    .line 174
    .end local v10    # "adid":Ljava/lang/String;
    .end local v12    # "optout":Z
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 175
    .restart local v10    # "adid":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v12

    goto/16 :goto_1

    .line 196
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v4    # "rootString":Ljava/lang/String;
    .restart local v8    # "adBrixUserNum":J
    .restart local v12    # "optout":Z
    .restart local v13    # "rp":Lcom/igaworks/core/RequestParameter;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v1, v1, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$items:Ljava/util/ArrayList;

    # invokes: Lcom/igaworks/commerce/net/CommerceHttpManager;->restoreCV2EventInfo(Landroid/content/Context;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->access$000(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;Ljava/util/List;)V

    .line 197
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customEventForCommerceV2 referral is not completed yet :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-static {v0, v1, v2, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 265
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "rootString":Ljava/lang/String;
    .end local v8    # "adBrixUserNum":J
    .end local v13    # "rp":Lcom/igaworks/core/RequestParameter;
    :catch_0
    move-exception v11

    .line 267
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v1, v1, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$items:Ljava/util/ArrayList;

    # invokes: Lcom/igaworks/commerce/net/CommerceHttpManager;->restoreCV2EventInfo(Landroid/content/Context;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->access$000(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;Ljava/util/List;)V

    goto :goto_2

    .line 257
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v4    # "rootString":Ljava/lang/String;
    .restart local v8    # "adBrixUserNum":J
    .restart local v13    # "rp":Lcom/igaworks/core/RequestParameter;
    :catch_1
    move-exception v11

    .line 259
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v1, v1, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$items:Ljava/util/ArrayList;

    # invokes: Lcom/igaworks/commerce/net/CommerceHttpManager;->restoreCV2EventInfo(Landroid/content/Context;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/igaworks/commerce/net/CommerceHttpManager;->access$000(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;Ljava/util/List;)V

    .line 260
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;->this$1:Lcom/igaworks/commerce/net/CommerceHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
