.class Lcom/igaworks/impl/CommonFrameworkImpl$2;
.super Ljava/lang/Thread;
.source "CommonFrameworkImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/CommonFrameworkImpl;->startSessionImpl(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/CommonFrameworkImpl;


# direct methods
.method constructor <init>(Lcom/igaworks/impl/CommonFrameworkImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/CommonFrameworkImpl;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$2;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 790
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v1

    .line 791
    .local v1, "rp":Lcom/igaworks/core/RequestParameter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/igaworks/net/HttpManager;->cfg_domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/igaworks/core/RequestParameter;->getAppkey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/igaworks/net/HttpManager;->CONFIG_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igaworks/util/CommonHelper;->loadJSONFromS3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 792
    .local v2, "stringJson":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 793
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 794
    .local v0, "jsonObj":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 795
    const-string v3, "commerce"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 796
    const-string v3, "commerce"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 797
    const-string v3, "premium_postback"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    .line 798
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "premium_postback of commerce is activated! premium_flag :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    .end local v0    # "jsonObj":Lorg/json/JSONObject;
    .end local v1    # "rp":Lcom/igaworks/core/RequestParameter;
    .end local v2    # "stringJson":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 802
    :catch_0
    move-exception v3

    goto :goto_0
.end method
