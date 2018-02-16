.class Lcom/igaworks/net/CommonHttpManager$9;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager;->ThirdPartyConversion(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/CommonHttpManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$parameter:Lcom/igaworks/core/RequestParameter;

.field final synthetic val$thirdPartyConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;Lcom/igaworks/core/RequestParameter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/CommonHttpManager;

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$9;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iput-object p2, p0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/net/CommonHttpManager$9;->val$thirdPartyConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    iput-object p4, p0, Lcom/igaworks/net/CommonHttpManager$9;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 14
    .param p1, "adInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    const/4 v13, 0x0

    .line 1139
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$9;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager;->THIRDPARTY_CONVERSION_REQ_URL_FOR_ADBRIX:Ljava/lang/String;

    .line 1140
    .local v3, "url":Ljava/lang/String;
    const-string v11, ""

    .line 1142
    .local v11, "param":Ljava/lang/String;
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "ThirdPartyConversion"

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v0, v1, v2, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1143
    new-instance v8, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$9;->val$thirdPartyConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    invoke-virtual {v0}, Lcom/igaworks/model/DeeplinkReEngagementConversion;->getDeeplink_info()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v8, "deeplink_info":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$9;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iget-object v5, p0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string v0, ""

    move-object v1, v0

    .line 1146
    :goto_0
    if-nez p1, :cond_1

    move v0, v13

    .line 1145
    :goto_1
    invoke-virtual {v2, v5, v8, v1, v0}, Lcom/igaworks/core/RequestParameter;->getReEngagementConversionTrackingParameter(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 1147
    .local v10, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$9;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->getHashkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/igaworks/core/AESGetTrackParam;->encrypt_hashkey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1149
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1150
    .local v4, "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "k"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$9;->val$parameter:Lcom/igaworks/core/RequestParameter;

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

    .line 1151
    const-string v0, "j"

    invoke-virtual {v4, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    new-instance v12, Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/igaworks/net/HttpsUrlConnectionThread;

    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v5, Lcom/igaworks/net/CommonHttpManager$9$1;

    invoke-direct {v5, p0}, Lcom/igaworks/net/CommonHttpManager$9$1;-><init>(Lcom/igaworks/net/CommonHttpManager$9;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/net/HttpsUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    invoke-direct {v12, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1238
    .local v12, "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1239
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1246
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "deeplink_info":Lorg/json/JSONObject;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "param":Ljava/lang/String;
    .end local v12    # "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    :goto_2
    return-void

    .line 1146
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v8    # "deeplink_info":Lorg/json/JSONObject;
    .restart local v11    # "param":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 1240
    .end local v3    # "url":Ljava/lang/String;
    .end local v8    # "deeplink_info":Lorg/json/JSONObject;
    .end local v11    # "param":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1241
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1242
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ThirdPartyConversion Exception:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1243
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$9;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$9;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$9;->val$thirdPartyConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    # invokes: Lcom/igaworks/net/CommonHttpManager;->storeForRetryThirdPartyConversion(Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    invoke-static {v0, v1, v2}, Lcom/igaworks/net/CommonHttpManager;->access$400(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V

    goto :goto_2
.end method
