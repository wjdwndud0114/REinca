.class final Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;
.super Ljava/lang/Object;
.source "CPECompletionHandler.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->checkAndComplete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$group:Ljava/lang/String;

.field final synthetic val$httpManager:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

.field final synthetic val$parameter:Lcom/igaworks/core/RequestParameter;

.field final synthetic val$restoreTime:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/adbrix/core/ADBrixHttpManager;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iput-object p3, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$group:Ljava/lang/String;

    iput-object p4, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$activityName:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$httpManager:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    iput-object p6, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$restoreTime:Ljava/util/Calendar;

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
    .line 43
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

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
            "Ljava/lang/Void;",
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
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    :try_start_0
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$context:Landroid/content/Context;

    const-string v4, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixManager > Schedule check start : is schedule exist = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-eqz v2, :cond_2

    move v2, v0

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v8, 0x0

    invoke-static {v3, v4, v2, v5, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 54
    sget-object v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v2}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixManager > add restore activity >> schedule == null : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-nez v5, :cond_3

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameter.getReferralKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    .line 56
    invoke-virtual {v1}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v4, 0x1

    .line 55
    invoke-static {v2, v3, v0, v1, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 57
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/dao/ActivityDAOForRestore;->getDAO(Landroid/content/Context;)Lcom/igaworks/dao/ActivityDAOForRestore;

    move-result-object v6

    .line 58
    .local v6, "activityDAOForRestore":Lcom/igaworks/dao/ActivityDAOForRestore;
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$group:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$activityName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lcom/igaworks/dao/ActivityDAOForRestore;->addItem(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v6    # "activityDAOForRestore":Lcom/igaworks/dao/ActivityDAOForRestore;
    :cond_1
    :goto_2
    const/4 v0, 0x0

    return-object v0

    :cond_2
    move v2, v1

    .line 49
    goto :goto_0

    :cond_3
    move v0, v1

    .line 55
    goto :goto_1

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$group:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$activityName:Ljava/lang/String;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$httpManager:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$restoreTime:Ljava/util/Calendar;

    invoke-static/range {v0 .. v5}, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler;->checkAndCompleteEngagement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;Ljava/util/Calendar;)V

    .line 63
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$group:Ljava/lang/String;

    const-string v1, "adspace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$activityName:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-static {v0, v1, v2}, Lcom/igaworks/adbrix/cpe/PromotionHandler;->checkAvailablePromotion(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 71
    :catch_0
    move-exception v7

    .line 72
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
