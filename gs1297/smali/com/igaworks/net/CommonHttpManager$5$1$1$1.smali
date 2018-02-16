.class Lcom/igaworks/net/CommonHttpManager$5$1$1$1;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager$5$1$1;->callback(Ljava/lang/String;)V
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
.field final synthetic this$3:Lcom/igaworks/net/CommonHttpManager$5$1$1;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager$5$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/igaworks/net/CommonHttpManager$5$1$1;

    .prologue
    .line 891
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$5$1$1$1;->this$3:Lcom/igaworks/net/CommonHttpManager$5$1$1;

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
    .line 891
    invoke-virtual {p0, p1}, Lcom/igaworks/net/CommonHttpManager$5$1$1$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 3
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
    .line 893
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$5$1$1$1;->this$3:Lcom/igaworks/net/CommonHttpManager$5$1$1;

    iget-object v1, v1, Lcom/igaworks/net/CommonHttpManager$5$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$5$1;

    iget-object v1, v1, Lcom/igaworks/net/CommonHttpManager$5$1;->this$1:Lcom/igaworks/net/CommonHttpManager$5;

    iget-object v1, v1, Lcom/igaworks/net/CommonHttpManager$5;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->getDAO(Landroid/content/Context;)Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    move-result-object v0

    .line 894
    .local v0, "dao":Lcom/igaworks/dao/DeeplinkConversionRetryDAO;
    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$5$1$1$1;->this$3:Lcom/igaworks/net/CommonHttpManager$5$1$1;

    iget-object v1, v1, Lcom/igaworks/net/CommonHttpManager$5$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$5$1;

    iget-object v1, v1, Lcom/igaworks/net/CommonHttpManager$5$1;->this$1:Lcom/igaworks/net/CommonHttpManager$5;

    iget-object v1, v1, Lcom/igaworks/net/CommonHttpManager$5;->val$conversions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$5$1$1$1;->this$3:Lcom/igaworks/net/CommonHttpManager$5$1$1;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$5$1$1;->this$2:Lcom/igaworks/net/CommonHttpManager$5$1;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$5$1;->this$1:Lcom/igaworks/net/CommonHttpManager$5;

    iget-object v2, v2, Lcom/igaworks/net/CommonHttpManager$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->removeDeeplinkConversionItems(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;

    .line 895
    const/4 v1, 0x0

    return-object v1
.end method
