.class Lcom/igaworks/net/CommonHttpManager$8;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager;->storeForRetryReEngagementConversion(Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
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
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/CommonHttpManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dlReEngMntConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/CommonHttpManager;

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$8;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iput-object p2, p0, Lcom/igaworks/net/CommonHttpManager$8;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/net/CommonHttpManager$8;->val$dlReEngMntConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

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
    .line 1113
    invoke-virtual {p0, p1}, Lcom/igaworks/net/CommonHttpManager$8;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1117
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$8;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    move-result-object v0

    .line 1118
    .local v0, "dao":Lcom/igaworks/dao/DeeplinkConversionRetryDAO;
    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$8;->val$dlReEngMntConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    invoke-virtual {v1}, Lcom/igaworks/model/DeeplinkReEngagementConversion;->getRetryCnt()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 1119
    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$8;->val$dlReEngMntConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    invoke-virtual {v1}, Lcom/igaworks/model/DeeplinkReEngagementConversion;->getKey()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->removeDLReEngMntRetryConversion(I)Z

    .line 1123
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1121
    :cond_0
    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$8;->val$dlReEngMntConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    invoke-virtual {v1}, Lcom/igaworks/model/DeeplinkReEngagementConversion;->getKey()I

    move-result v1

    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$8;->val$dlReEngMntConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    invoke-virtual {v2}, Lcom/igaworks/model/DeeplinkReEngagementConversion;->getConversionKey()I

    move-result v2

    iget-object v3, p0, Lcom/igaworks/net/CommonHttpManager$8;->val$dlReEngMntConversion:Lcom/igaworks/model/DeeplinkReEngagementConversion;

    invoke-virtual {v3}, Lcom/igaworks/model/DeeplinkReEngagementConversion;->getDeeplink_info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->updateOrInsertDLReEngMntConversionForRetry(IILjava/lang/String;)V

    goto :goto_0
.end method
