.class Lcom/igaworks/net/CommonHttpManager$7;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager;->ReEngagementConversion(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/CommonHttpManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dlReEngMntConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

.field final synthetic val$parameter:Lcom/igaworks/core/RequestParameter;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager;Lcom/igaworks/model/DeeplinkReEngagementConversion;Lcom/igaworks/core/RequestParameter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/CommonHttpManager;

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$7;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iput-object p2, p0, Lcom/igaworks/net/CommonHttpManager$7;->val$dlReEngMntConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    iput-object p3, p0, Lcom/igaworks/net/CommonHttpManager$7;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iput-object p4, p0, Lcom/igaworks/net/CommonHttpManager$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 14
    .param p1, "adInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    const/4 v13, 0x0

    .line 1015
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$7;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager;->REENGAGEMENT_CONVERISON_REQ_URL_FOR_ADBRIX:Ljava/lang/String;

    .line 1016
    .local v3, "url":Ljava/lang/String;
    const-string v11, ""

    .line 1019
    .local v11, "param":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$7;->val$dlReEngMntConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    invoke-virtual {v0}, Lcom/igaworks/model/DeeplinkReEngagementConversion;->getDeeplink_info()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v8, "deeplink_info":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$7;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iget-object v5, p0, Lcom/igaworks/net/CommonHttpManager$7;->val$context:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string v0, ""

    move-object v1, v0

    .line 1022
    :goto_0
    if-nez p1, :cond_1

    move v0, v13

    .line 1021
    :goto_1
    invoke-virtual {v2, v5, v8, v1, v0}, Lcom/igaworks/core/RequestParameter;->getReEngagementConversionTrackingParameter(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 1023
    .local v10, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$7;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReEngagementConversion Parameter : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-static {v0, v1, v2, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1024
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$7;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->getHashkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/igaworks/core/AESGetTrackParam;->encrypt_hashkey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1026
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1027
    .local v4, "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "k"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$7;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v2}, Lcom/igaworks/core/RequestParameter;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const-string v0, "j"

    invoke-virtual {v4, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    new-instance v12, Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/igaworks/net/HttpsUrlConnectionThread;

    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$7;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v5, Lcom/igaworks/net/CommonHttpManager$7$1;

    invoke-direct {v5, p0}, Lcom/igaworks/net/CommonHttpManager$7$1;-><init>(Lcom/igaworks/net/CommonHttpManager$7;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/net/HttpsUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    invoke-direct {v12, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1098
    .local v12, "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1099
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1106
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "deeplink_info":Lorg/json/JSONObject;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "param":Ljava/lang/String;
    .end local v12    # "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    :goto_2
    return-void

    .line 1022
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v8    # "deeplink_info":Lorg/json/JSONObject;
    .restart local v11    # "param":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_1

    .line 1100
    .end local v3    # "url":Ljava/lang/String;
    .end local v8    # "deeplink_info":Lorg/json/JSONObject;
    .end local v11    # "param":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1101
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1102
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$7;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReEngagementConversion Exception:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1103
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$7;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$7;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$7;->val$dlReEngMntConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    # invokes: Lcom/igaworks/net/CommonHttpManager;->storeForRetryReEngagementConversion(Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    invoke-static {v0, v1, v2}, Lcom/igaworks/net/CommonHttpManager;->access$300(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V

    goto :goto_2
.end method
