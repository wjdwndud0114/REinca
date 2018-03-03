.class Lcom/igaworks/net/CommonHttpManager$3;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager;->trackingForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/CommonHttpManager;

.field final synthetic val$activity_info_list:Ljava/util/ArrayList;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imp_info_list:Ljava/util/ArrayList;

.field final synthetic val$parameter:Lcom/igaworks/core/RequestParameter;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/igaworks/core/RequestParameter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/CommonHttpManager;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$3;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iput-object p2, p0, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/net/CommonHttpManager$3;->val$activity_info_list:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/igaworks/net/CommonHttpManager$3;->val$imp_info_list:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/igaworks/net/CommonHttpManager$3;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 18
    .param p1, "adInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    .line 681
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/net/CommonHttpManager$3;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v8, v1, Lcom/igaworks/net/CommonHttpManager;->TRACKING_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    .line 682
    .local v8, "url":Ljava/lang/String;
    const-string v14, ""

    .line 685
    .local v14, "param":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    const-string v5, "trackingForADBrix"

    const/4 v6, 0x3

    invoke-static {v1, v2, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 687
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v3, "str_activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v4, "str_imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$activity_info_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_0

    .line 690
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$activity_info_list:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/dao/tracking/TrackingActivityModel;

    invoke-virtual {v1}, Lcom/igaworks/dao/tracking/TrackingActivityModel;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 692
    :cond_0
    const/16 v17, 0x0

    .local v17, "y":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$imp_info_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_1

    .line 693
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$imp_info_list:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/dao/tracking/TrackingActivityModel;

    invoke-virtual {v1}, Lcom/igaworks/dao/tracking/TrackingActivityModel;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 695
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$parameter:Lcom/igaworks/core/RequestParameter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    if-nez p1, :cond_2

    const-string v5, ""

    .line 696
    :goto_2
    if-nez p1, :cond_3

    const/4 v6, 0x0

    .line 695
    :goto_3
    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/core/RequestParameter;->getTrackingParameterForADBrix(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$parameter:Lcom/igaworks/core/RequestParameter;

    .line 696
    invoke-virtual {v2}, Lcom/igaworks/core/RequestParameter;->getHashkey()Ljava/lang/String;

    move-result-object v2

    .line 695
    invoke-static {v1, v2}, Lcom/igaworks/core/AESGetTrackParam;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 698
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 699
    .local v9, "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "k"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v5}, Lcom/igaworks/core/RequestParameter;->getAppkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const-string v1, "j"

    invoke-virtual {v9, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    new-instance v15, Ljava/lang/ref/WeakReference;

    new-instance v5, Lcom/igaworks/net/HttpsUrlConnectionThread;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    const/4 v7, 0x1

    new-instance v10, Lcom/igaworks/net/CommonHttpManager$3$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/igaworks/net/CommonHttpManager$3$1;-><init>(Lcom/igaworks/net/CommonHttpManager$3;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/igaworks/net/HttpsUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    invoke-direct {v15, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 746
    .local v15, "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 747
    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 760
    .end local v3    # "str_activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "str_imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    .end local v16    # "x":I
    .end local v17    # "y":I
    :goto_4
    return-void

    .line 696
    .restart local v3    # "str_activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "str_imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    goto :goto_3

    .line 749
    .end local v3    # "str_activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "str_imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "x":I
    .end local v17    # "y":I
    :catch_0
    move-exception v13

    .line 750
    .local v13, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v13}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 751
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    invoke-virtual {v13}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v2, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 752
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/net/CommonHttpManager$3;->this$0:Lcom/igaworks/net/CommonHttpManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$activity_info_list:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$imp_info_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v5, v6}, Lcom/igaworks/net/CommonHttpManager;->restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 753
    .end local v13    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v13

    .line 754
    .local v13, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$activity_info_list:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$activity_info_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 755
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/net/CommonHttpManager$3;->this$0:Lcom/igaworks/net/CommonHttpManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$activity_info_list:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$imp_info_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v5, v6}, Lcom/igaworks/net/CommonHttpManager;->restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 757
    :cond_4
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/net/CommonHttpManager$3;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v2, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4
.end method
