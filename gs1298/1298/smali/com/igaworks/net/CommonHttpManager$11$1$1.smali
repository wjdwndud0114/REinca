.class Lcom/igaworks/net/CommonHttpManager$11$1$1;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/interfaces/HttpCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager$11$1;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

.field final synthetic val$finalRemanentErr:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager$11$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lcom/igaworks/net/CommonHttpManager$11$1;

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iput-object p2, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->val$finalRemanentErr:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1395
    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1396
    :cond_0
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v3, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v4, v4, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v4, v4, Lcom/igaworks/net/CommonHttpManager$11;->val$err:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/igaworks/net/CommonHttpManager;->restoreCrashInfo_Common(Landroid/content/Context;Ljava/util/List;)V

    .line 1397
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "responseResult null Error"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1421
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1422
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v3, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v4, v4, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v4, v4, Lcom/igaworks/net/CommonHttpManager$11;->val$err:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/igaworks/net/CommonHttpManager;->restoreCrashInfo_Common(Landroid/content/Context;Ljava/util/List;)V

    .line 1424
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 1401
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, reportingCrash response result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1402
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1405
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1406
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1407
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    const-string v4, "reportingCrash succeeded : result 0"

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1408
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->val$finalRemanentErr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1409
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v3, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->val$finalRemanentErr:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/igaworks/net/CommonHttpManager;->restoreCrashInfo_Common(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 1411
    :cond_3
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportingCrash failed : result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1412
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v3, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v4, v4, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v4, v4, Lcom/igaworks/net/CommonHttpManager$11;->val$err:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/igaworks/net/CommonHttpManager;->restoreCrashInfo_Common(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1415
    :cond_4
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    const-string v4, "reportingCrash error : no result"

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1416
    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$11;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v3, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v3, v3, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/igaworks/net/CommonHttpManager$11$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$11$1;

    iget-object v4, v4, Lcom/igaworks/net/CommonHttpManager$11$1;->this$1:Lcom/igaworks/net/CommonHttpManager$11;

    iget-object v4, v4, Lcom/igaworks/net/CommonHttpManager$11;->val$err:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/igaworks/net/CommonHttpManager;->restoreCrashInfo_Common(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
