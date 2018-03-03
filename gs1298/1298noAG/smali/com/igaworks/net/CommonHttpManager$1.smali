.class Lcom/igaworks/net/CommonHttpManager$1;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager;->normal_referrerCallForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/CommonHttpManager;

.field final synthetic val$activity_info_list:Ljava/util/ArrayList;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$parameter:Lcom/igaworks/core/RequestParameter;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/CommonHttpManager;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$1;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iput-object p2, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iput-object p4, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$activity_info_list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 14
    .param p1, "adInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    const/4 v13, 0x0

    .line 83
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$1;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v12, v0, Lcom/igaworks/net/CommonHttpManager;->REFERRER_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    .line 84
    .local v12, "url":Ljava/lang/String;
    const-string v10, ""

    .line 87
    .local v10, "param":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "normal referrerCallForADBrix"

    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 88
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$activity_info_list:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez p1, :cond_1

    const-string v4, ""

    .line 89
    :goto_0
    if-nez p1, :cond_2

    move v5, v13

    .line 88
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/core/RequestParameter;->getReferrerTrackingParameter(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    .line 89
    invoke-virtual {v1}, Lcom/igaworks/core/RequestParameter;->getHashkey()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Lcom/igaworks/core/AESGetTrackParam;->encrypt_hashkey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 90
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/dao/AppImpressionDAO;->getSynAdbrix(Landroid/content/Context;)Z

    move-result v9

    .line 91
    .local v9, "isAdbrixSyn":Z
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    if-nez v9, :cond_3

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "normal referrerCallForADBrix > referral call send."

    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 96
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v4, "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "k"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

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

    .line 98
    const-string v0, "j"

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v11, Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/igaworks/net/HttpsUrlConnectionThread;

    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v5, Lcom/igaworks/net/CommonHttpManager$1$1;

    invoke-direct {v5, p0}, Lcom/igaworks/net/CommonHttpManager$1$1;-><init>(Lcom/igaworks/net/CommonHttpManager$1;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, v12

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/net/HttpsUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    invoke-direct {v11, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 330
    .local v11, "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 331
    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 343
    .end local v4    # "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "isAdbrixSyn":Z
    .end local v11    # "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    :goto_2
    return-void

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v5

    goto/16 :goto_1

    .line 333
    .restart local v9    # "isAdbrixSyn":Z
    :cond_3
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "ADBrixTracer > referrerCallForADBrix() : referral call info already saved."

    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 334
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$1;->this$0:Lcom/igaworks/net/CommonHttpManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/net/CommonHttpManager;->setOnReferrerCall(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 337
    .end local v9    # "isAdbrixSyn":Z
    :catch_0
    move-exception v8

    .line 338
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$1;->this$0:Lcom/igaworks/net/CommonHttpManager;

    invoke-virtual {v0, v13}, Lcom/igaworks/net/CommonHttpManager;->setOnReferrerCall(Z)V

    .line 341
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$1;->val$activity_info_list:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/igaworks/dao/ActivityInfoDAO;->restoreReferralTrackingInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_2
.end method
