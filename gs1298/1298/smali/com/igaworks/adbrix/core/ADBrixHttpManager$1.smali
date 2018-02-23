.class Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;
.super Ljava/lang/Object;
.source "ADBrixHttpManager.java"

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/core/ADBrixHttpManager;->completeCPECallForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

.field final synthetic val$activity_info_list:Ljava/util/ArrayList;

.field final synthetic val$complete_conversion_list:Ljava/util/ArrayList;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imp_info_list:Ljava/util/ArrayList;

.field final synthetic val$parameter:Lcom/igaworks/core/RequestParameter;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/igaworks/core/RequestParameter;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    iput-object p2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$activity_info_list:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$imp_info_list:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iput-object p6, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$complete_conversion_list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 18
    .param p1, "adInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    .line 134
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    # getter for: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->COMPLETE_CPE_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;
    invoke-static {v1}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$000(Lcom/igaworks/adbrix/core/ADBrixHttpManager;)Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "url":Ljava/lang/String;
    const-string v14, ""

    .line 137
    .local v14, "param":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    const-string v5, "completeCPECallForADBrix"

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {v1, v2, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v3, "str_activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v4, "str_imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$activity_info_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$activity_info_list:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/dao/tracking/TrackingActivityModel;

    invoke-virtual {v1}, Lcom/igaworks/dao/tracking/TrackingActivityModel;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 144
    :cond_0
    const/16 v17, 0x0

    .local v17, "y":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$imp_info_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_1

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$imp_info_list:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/dao/tracking/TrackingActivityModel;

    invoke-virtual {v1}, Lcom/igaworks/dao/tracking/TrackingActivityModel;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 148
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$complete_conversion_list:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    const-string v6, ""

    .line 149
    :goto_2
    if-nez p1, :cond_3

    const/4 v7, 0x0

    .line 148
    :goto_3
    invoke-virtual/range {v1 .. v7}, Lcom/igaworks/core/RequestParameter;->getTrackingParameterForADBrix(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    .line 149
    invoke-virtual {v2}, Lcom/igaworks/core/RequestParameter;->getHashkey()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {v1, v2}, Lcom/igaworks/core/AESGetTrackParam;->encrypt_hashkey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 151
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v9, "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "k"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

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

    .line 153
    const-string v1, "j"

    invoke-virtual {v9, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v15, Ljava/lang/ref/WeakReference;

    new-instance v5, Lcom/igaworks/net/HttpsUrlConnectionThread;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    const/4 v7, 0x1

    new-instance v10, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v5 .. v12}, Lcom/igaworks/net/HttpsUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    invoke-direct {v15, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 304
    .local v15, "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 305
    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 313
    .end local v3    # "str_activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "str_imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "param":Ljava/lang/String;
    .end local v15    # "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    .end local v16    # "x":I
    .end local v17    # "y":I
    :goto_4
    return-void

    .line 149
    .restart local v3    # "str_activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "str_imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "url":Ljava/lang/String;
    .restart local v14    # "param":Ljava/lang/String;
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_3

    .line 306
    .end local v3    # "str_activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "str_imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "url":Ljava/lang/String;
    .end local v14    # "param":Ljava/lang/String;
    .end local v16    # "x":I
    .end local v17    # "y":I
    :catch_0
    move-exception v13

    .line 307
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v2, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$activity_info_list:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$imp_info_list:Ljava/util/ArrayList;

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v1, v2, v5, v6}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$500(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$complete_conversion_list:Ljava/util/ArrayList;

    # invokes: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreCPEConversionList(Landroid/content/Context;Ljava/util/ArrayList;)V
    invoke-static {v1, v2, v5}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$300(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_4
.end method
