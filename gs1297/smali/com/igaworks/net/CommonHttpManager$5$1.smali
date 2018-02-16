.class Lcom/igaworks/net/CommonHttpManager$5$1;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/net/CommonHttpManager$5;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/net/CommonHttpManager$5;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$5$1;->this$1:Lcom/igaworks/net/CommonHttpManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 14
    .param p1, "adInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    const/4 v13, 0x0

    .line 852
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$5$1;->this$1:Lcom/igaworks/net/CommonHttpManager$5;

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$5;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v3, v0, Lcom/igaworks/net/CommonHttpManager;->DEEP_LINK_CONVERSION_FOR_ADBrix:Ljava/lang/String;

    .line 853
    .local v3, "url":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 855
    .local v8, "arr":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$5$1;->this$1:Lcom/igaworks/net/CommonHttpManager$5;

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$5;->val$conversions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/igaworks/model/DeeplinkConversionItem;

    .line 857
    .local v10, "item":Lcom/igaworks/model/DeeplinkConversionItem;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 858
    .local v11, "obj":Lorg/json/JSONObject;
    const-string v1, "clickId"

    invoke-virtual {v10}, Lcom/igaworks/model/DeeplinkConversionItem;->getCommerceClickID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 859
    const-string v1, "adid"

    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 860
    const-string v1, "mtime"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v11, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 861
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 862
    .end local v11    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 863
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 869
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v10    # "item":Lcom/igaworks/model/DeeplinkConversionItem;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$5$1;->this$1:Lcom/igaworks/net/CommonHttpManager$5;

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$5;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conversionForDeeplink param : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 871
    new-instance v12, Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$5$1;->this$1:Lcom/igaworks/net/CommonHttpManager$5;

    iget-object v1, v1, Lcom/igaworks/net/CommonHttpManager$5;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    .line 872
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/igaworks/net/CommonHttpManager$5$1$1;

    invoke-direct {v5, p0}, Lcom/igaworks/net/CommonHttpManager$5$1$1;-><init>(Lcom/igaworks/net/CommonHttpManager$5$1;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    invoke-direct {v12, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 911
    .local v12, "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 912
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 923
    .end local v12    # "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    :goto_1
    return-void

    .line 917
    :catch_1
    move-exception v9

    .line 918
    .local v9, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$5$1;->this$1:Lcom/igaworks/net/CommonHttpManager$5;

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$5;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$5$1;->this$1:Lcom/igaworks/net/CommonHttpManager$5;

    iget-object v1, v1, Lcom/igaworks/net/CommonHttpManager$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$5$1;->this$1:Lcom/igaworks/net/CommonHttpManager$5;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$5;->val$conversions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/net/CommonHttpManager;->restoreConversionInfo(Landroid/content/Context;Ljava/util/List;)V

    .line 919
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 920
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$5$1;->this$1:Lcom/igaworks/net/CommonHttpManager$5;

    iget-object v0, v0, Lcom/igaworks/net/CommonHttpManager$5;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method
