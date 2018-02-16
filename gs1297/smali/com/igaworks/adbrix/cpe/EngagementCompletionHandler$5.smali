.class final Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$5;
.super Ljava/lang/Object;
.source "EngagementCompletionHandler.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler;->handleRewardSchedule(Landroid/content/Context;Lcom/igaworks/adbrix/model/Engagement;Ljava/util/ArrayList;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;)V
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
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$5;->val$context:Landroid/content/Context;

    const-string v4, "n/a"

    const-string v5, "n/a"

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getActivityListParam(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$5;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
