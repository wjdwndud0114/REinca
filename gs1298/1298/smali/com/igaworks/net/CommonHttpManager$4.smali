.class Lcom/igaworks/net/CommonHttpManager$4;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/interfaces/HttpCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager;->demographicCallForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/CommonHttpManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/CommonHttpManager;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$4;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iput-object p2, p0, Lcom/igaworks/net/CommonHttpManager$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 14
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 799
    if-nez p1, :cond_0

    .line 800
    :try_start_0
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "responseResult null Error"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :catch_0
    move-exception v1

    .line 819
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 820
    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 821
    .local v0, "Trace":[Ljava/lang/StackTraceElement;
    iget-object v8, p0, Lcom/igaworks/net/CommonHttpManager$4;->val$context:Landroid/content/Context;

    const-string v9, "IGAW_QA"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 823
    .end local v0    # "Trace":[Ljava/lang/StackTraceElement;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 802
    :cond_0
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 803
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "Result"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 805
    iget-object v8, p0, Lcom/igaworks/net/CommonHttpManager$4;->val$context:Landroid/content/Context;

    const-string v9, "demoForTracking"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 806
    .local v6, "trackingPref":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 807
    .local v5, "trackingEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 808
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 809
    .local v7, "value":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 810
    .local v4, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/igaworks/net/CommonHttpManager$4;->val$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/igaworks/dao/LocalDemograhpicDAO;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/LocalDemograhpicDAO;

    move-result-object v9

    invoke-virtual {v9, v4, v7}, Lcom/igaworks/dao/LocalDemograhpicDAO;->save_demographic_local(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-interface {v5, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 813
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 815
    .end local v5    # "trackingEditor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "trackingPref":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v8, p0, Lcom/igaworks/net/CommonHttpManager$4;->val$context:Landroid/content/Context;

    const-string v9, "IGAW_QA"

    const-string v10, "callbackDemographicADBrix false"

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
