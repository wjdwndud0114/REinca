.class final Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;
.super Ljava/lang/Object;
.source "CPECompletionHandler.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->restoreCPEAction(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;)V
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$parameter:Lcom/igaworks/core/RequestParameter;

.field final synthetic val$tracer:Lcom/igaworks/adbrix/core/ADBrixHttpManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iput-object p3, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$tracer:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

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
    .line 89
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    const/16 v4, 0x1e

    const/4 v12, 0x0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/dao/ActivityDAOForRestore;->getDAO(Landroid/content/Context;)Lcom/igaworks/dao/ActivityDAOForRestore;

    move-result-object v6

    .line 96
    .local v6, "activityDAOForRestore":Lcom/igaworks/dao/ActivityDAOForRestore;
    invoke-virtual {v6}, Lcom/igaworks/dao/ActivityDAOForRestore;->getRestoreActivities()Ljava/util/List;

    move-result-object v8

    .line 97
    .local v8, "restoreItems":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/RestoreActivity;>;"
    invoke-virtual {v6}, Lcom/igaworks/dao/ActivityDAOForRestore;->clearRestoreActivity()Z

    move-result v10

    .line 98
    .local v10, "result":Z
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRestoreActivity result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    const/4 v9, 0x0

    .line 101
    .local v9, "restoredSpace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "restoreCPEAction called"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 105
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 106
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the number of restore activity over 30 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    const/4 v0, 0x0

    const/16 v1, 0x1e

    invoke-interface {v8, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the number of restore activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/igaworks/model/RestoreActivity;

    .line 113
    .local v7, "item":Lcom/igaworks/model/RestoreActivity;
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore item(group/activity) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/igaworks/model/RestoreActivity;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/igaworks/model/RestoreActivity;->getActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/igaworks/model/RestoreActivity;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/igaworks/model/RestoreActivity;->getActivity()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$tracer:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    invoke-virtual {v7}, Lcom/igaworks/model/RestoreActivity;->getRegistDatetime()Ljava/util/Calendar;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler;->checkAndCompleteEngagement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;Ljava/util/Calendar;)V

    .line 116
    invoke-virtual {v7}, Lcom/igaworks/model/RestoreActivity;->getGroup()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adspace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    if-nez v9, :cond_2

    .line 119
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "restoredSpace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .restart local v9    # "restoredSpace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v7}, Lcom/igaworks/model/RestoreActivity;->getActivity()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {v7}, Lcom/igaworks/model/RestoreActivity;->getActivity()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/igaworks/model/RestoreActivity;->getActivity()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-static {v0, v1, v2}, Lcom/igaworks/adbrix/cpe/PromotionHandler;->checkAvailablePromotion(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    .end local v6    # "activityDAOForRestore":Lcom/igaworks/dao/ActivityDAOForRestore;
    .end local v7    # "item":Lcom/igaworks/model/RestoreActivity;
    .end local v8    # "restoreItems":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/RestoreActivity;>;"
    .end local v9    # "restoredSpace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "result":Z
    :catch_0
    move-exception v0

    .line 139
    # setter for: Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->onRestore:Z
    invoke-static {v12}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->access$002(Z)Z

    .line 141
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 133
    .restart local v6    # "activityDAOForRestore":Lcom/igaworks/dao/ActivityDAOForRestore;
    .restart local v8    # "restoreItems":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/RestoreActivity;>;"
    .restart local v9    # "restoredSpace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "result":Z
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "there are no restore activity"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :cond_4
    # setter for: Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->onRestore:Z
    invoke-static {v12}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->access$002(Z)Z

    goto :goto_1

    .end local v6    # "activityDAOForRestore":Lcom/igaworks/dao/ActivityDAOForRestore;
    .end local v8    # "restoreItems":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/RestoreActivity;>;"
    .end local v9    # "restoredSpace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "result":Z
    :catchall_0
    move-exception v0

    # setter for: Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->onRestore:Z
    invoke-static {v12}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->access$002(Z)Z

    throw v0
.end method
