.class Lcom/igaworks/impl/InternalAction$6;
.super Ljava/lang/Object;
.source "InternalAction.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/InternalAction;->trackingForAdbrixCall(Landroid/content/Context;ZLcom/igaworks/net/CommonHttpManager;Ljava/lang/String;Ljava/lang/String;J)V
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

.field final synthetic val$act:Ljava/lang/String;

.field final synthetic val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$httpManager:Lcom/igaworks/net/CommonHttpManager;

.field final synthetic val$isTest:Z


# direct methods
.method constructor <init>(Lcom/igaworks/impl/InternalAction;ZLjava/lang/String;Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;Lcom/igaworks/net/CommonHttpManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/InternalAction;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/igaworks/impl/InternalAction$6;->this$0:Lcom/igaworks/impl/InternalAction;

    iput-boolean p2, p0, Lcom/igaworks/impl/InternalAction$6;->val$isTest:Z

    iput-object p3, p0, Lcom/igaworks/impl/InternalAction$6;->val$act:Ljava/lang/String;

    iput-object p4, p0, Lcom/igaworks/impl/InternalAction$6;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    iput-object p5, p0, Lcom/igaworks/impl/InternalAction$6;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/igaworks/impl/InternalAction$6;->val$httpManager:Lcom/igaworks/net/CommonHttpManager;

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
    .line 180
    invoke-virtual {p0, p1}, Lcom/igaworks/impl/InternalAction$6;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 10
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
    const/4 v4, 0x0

    .line 182
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 183
    .local v2, "impressionParam":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    iget-boolean v3, p0, Lcom/igaworks/impl/InternalAction$6;->val$isTest:Z

    if-eqz v3, :cond_0

    const-string v3, "IGAW_QA"

    const-string v5, "trackingForAdbrixCall"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    const-string v0, ""

    .line 185
    .local v0, "TAG":Ljava/lang/String;
    iget-object v3, p0, Lcom/igaworks/impl/InternalAction$6;->val$act:Ljava/lang/String;

    const-string v5, "start"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    const-string v0, "OnStartSession"

    .line 193
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/igaworks/impl/InternalAction$6;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v3}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/igaworks/impl/InternalAction$6;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v3}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 194
    :cond_2
    iget-object v5, p0, Lcom/igaworks/impl/InternalAction$6;->val$context:Landroid/content/Context;

    const-string v6, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ": trackingForAdbrix data - activity : %d, imp : %d"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v3, p0, Lcom/igaworks/impl/InternalAction$6;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    .line 195
    invoke-virtual {v3}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    const/4 v9, 0x1

    if-nez v2, :cond_7

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    .line 194
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v7, 0x1

    invoke-static {v5, v6, v3, v4, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 196
    iget-object v4, p0, Lcom/igaworks/impl/InternalAction$6;->val$httpManager:Lcom/igaworks/net/CommonHttpManager;

    iget-object v3, p0, Lcom/igaworks/impl/InternalAction$6;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v5

    iget-object v6, p0, Lcom/igaworks/impl/InternalAction$6;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/impl/InternalAction$6;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v3}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6, v3, v2}, Lcom/igaworks/net/CommonHttpManager;->trackingForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_3
    :goto_3
    const/4 v3, 0x0

    return-object v3

    .line 187
    :cond_4
    iget-object v3, p0, Lcom/igaworks/impl/InternalAction$6;->val$act:Ljava/lang/String;

    const-string v5, "end"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    const-string v0, "OnEndSession"

    goto :goto_0

    .line 190
    :cond_5
    const-string v0, "Flush tracking data"

    goto/16 :goto_0

    .line 195
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/igaworks/impl/InternalAction$6;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v3}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_2

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": trackingForAdbrix Error >>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
