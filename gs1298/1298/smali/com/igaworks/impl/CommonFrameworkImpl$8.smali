.class Lcom/igaworks/impl/CommonFrameworkImpl$8;
.super Ljava/lang/Object;
.source "CommonFrameworkImpl.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/CommonFrameworkImpl;->resendDeeplinkConversion(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igaworks/impl/CommonFrameworkImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/CommonFrameworkImpl;

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$8;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    iput-object p2, p0, Lcom/igaworks/impl/CommonFrameworkImpl$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1415
    invoke-virtual {p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl$8;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 1420
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 1421
    .local v1, "conversionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkConversionItem;>;"
    :try_start_0
    iget-object v8, p0, Lcom/igaworks/impl/CommonFrameworkImpl$8;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    move-result-object v2

    .line 1422
    .local v2, "dao":Lcom/igaworks/dao/DeeplinkConversionRetryDAO;
    iget-object v8, p0, Lcom/igaworks/impl/CommonFrameworkImpl$8;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->getRetryConversions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1424
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 1425
    iget-object v8, p0, Lcom/igaworks/impl/CommonFrameworkImpl$8;->val$context:Landroid/content/Context;

    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "retry deeplink onstartSession - count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1426
    sget-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    sget-object v9, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    iget-object v10, p0, Lcom/igaworks/impl/CommonFrameworkImpl$8;->val$context:Landroid/content/Context;

    invoke-virtual {v8, v9, v10, v1}, Lcom/igaworks/net/CommonHttpManager;->conversionForDeeplink(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 1431
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/igaworks/impl/CommonFrameworkImpl$8;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->getRetryReEngagementConversions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1432
    .local v3, "dlReEngagementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkReEngagementConversion;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 1433
    iget-object v8, p0, Lcom/igaworks/impl/CommonFrameworkImpl$8;->val$context:Landroid/content/Context;

    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeeplinkReEngagementConversion : retry deeplink onstartSession - count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1434
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/igaworks/model/DeeplinkReEngagementConversion;

    .line 1435
    .local v6, "retryItem":Lcom/igaworks/model/DeeplinkReEngagementConversion;
    sget-object v9, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    sget-object v10, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    iget-object v11, p0, Lcom/igaworks/impl/CommonFrameworkImpl$8;->val$context:Landroid/content/Context;

    invoke-virtual {v9, v10, v11, v6}, Lcom/igaworks/net/CommonHttpManager;->ReEngagementConversion(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V

    .line 1436
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 1439
    .end local v3    # "dlReEngagementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkReEngagementConversion;>;"
    .end local v6    # "retryItem":Lcom/igaworks/model/DeeplinkReEngagementConversion;
    :catch_0
    move-exception v4

    .line 1440
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DeeplinkReEngagementConversion Resend Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .line 1445
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    iget-object v8, p0, Lcom/igaworks/impl/CommonFrameworkImpl$8;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->getRetryThirdPartyConversions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1446
    .local v7, "thirdPartyConversions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkReEngagementConversion;>;"
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1447
    iget-object v8, p0, Lcom/igaworks/impl/CommonFrameworkImpl$8;->val$context:Landroid/content/Context;

    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ThirdParty Conversion : retry deeplink onstartSession - count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1448
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/igaworks/model/DeeplinkReEngagementConversion;

    .line 1449
    .restart local v6    # "retryItem":Lcom/igaworks/model/DeeplinkReEngagementConversion;
    sget-object v9, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    sget-object v10, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    iget-object v11, p0, Lcom/igaworks/impl/CommonFrameworkImpl$8;->val$context:Landroid/content/Context;

    invoke-virtual {v9, v10, v11, v6}, Lcom/igaworks/net/CommonHttpManager;->ThirdPartyConversion(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V

    .line 1450
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 1453
    .end local v6    # "retryItem":Lcom/igaworks/model/DeeplinkReEngagementConversion;
    .end local v7    # "thirdPartyConversions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkReEngagementConversion;>;"
    :catch_1
    move-exception v4

    .line 1454
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DeeplinkReEngagementConversion Resend Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    .line 1462
    .end local v2    # "dao":Lcom/igaworks/dao/DeeplinkConversionRetryDAO;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    const/4 v8, 0x0

    return-object v8

    .line 1456
    :catch_2
    move-exception v5

    .line 1457
    .local v5, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1458
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 1459
    .local v0, "Err":Ljava/lang/OutOfMemoryError;
    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ReSendDeeplinkConversion >> OOM Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
