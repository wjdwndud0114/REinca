.class Lcom/igaworks/impl/InternalAction$2;
.super Ljava/lang/Object;
.source "InternalAction.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/InternalAction;->sendOphanActivities(Landroid/content/Context;ZLcom/igaworks/net/CommonHttpManager;)V
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/InternalAction;

.field final synthetic val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$httpManager:Lcom/igaworks/net/CommonHttpManager;

.field final synthetic val$isTest:Z


# direct methods
.method constructor <init>(Lcom/igaworks/impl/InternalAction;ZLcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;Lcom/igaworks/net/CommonHttpManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/InternalAction;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/igaworks/impl/InternalAction$2;->this$0:Lcom/igaworks/impl/InternalAction;

    iput-boolean p2, p0, Lcom/igaworks/impl/InternalAction$2;->val$isTest:Z

    iput-object p3, p0, Lcom/igaworks/impl/InternalAction$2;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    iput-object p4, p0, Lcom/igaworks/impl/InternalAction$2;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/igaworks/impl/InternalAction$2;->val$httpManager:Lcom/igaworks/net/CommonHttpManager;

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
    .line 104
    invoke-virtual {p0, p1}, Lcom/igaworks/impl/InternalAction$2;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    const/4 v3, 0x0

    .line 108
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 109
    .local v1, "impressionParam":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    iget-boolean v2, p0, Lcom/igaworks/impl/InternalAction$2;->val$isTest:Z

    if-eqz v2, :cond_0

    const-string v2, "IGAW_QA"

    const-string v4, "sendOphanActivities"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/igaworks/impl/InternalAction$2;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/igaworks/impl/InternalAction$2;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 113
    :cond_2
    iget-object v4, p0, Lcom/igaworks/impl/InternalAction$2;->val$context:Landroid/content/Context;

    const-string v5, "IGAW_QA"

    const-string v6, "Send orphan tracking data to Adbrix data - activity : %d, imp : %d"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/igaworks/impl/InternalAction$2;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    .line 114
    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v8, 0x1

    if-nez v1, :cond_5

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    .line 113
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 116
    iget-object v3, p0, Lcom/igaworks/impl/InternalAction$2;->val$httpManager:Lcom/igaworks/net/CommonHttpManager;

    iget-object v2, p0, Lcom/igaworks/impl/InternalAction$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/impl/InternalAction$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/impl/InternalAction$2;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5, v2, v1}, Lcom/igaworks/net/CommonHttpManager;->trackingForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 121
    :cond_3
    :goto_2
    const/4 v2, 0x0

    return-object v2

    .line 114
    :cond_4
    iget-object v2, p0, Lcom/igaworks/impl/InternalAction$2;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnStartApplication: Send orphan tracking data to Adbrix >> Error >>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
