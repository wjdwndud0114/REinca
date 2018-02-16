.class final Lcom/igaworks/adbrix/cpe/DailyPlayHandler$1;
.super Ljava/lang/Object;
.source "DailyPlayHandler.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/DailyPlayHandler;->sendCompletRequest(Landroid/content/Context;I)V
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversionList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/igaworks/util/bolts_task/Capture;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$1;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    iput-object p3, p0, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$1;->val$conversionList:Ljava/util/ArrayList;

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
    .line 85
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 6
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
    .line 88
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 89
    .local v4, "impressionParam":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->getManager(Landroid/content/Context;)Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$1;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v3}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$1;->val$conversionList:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->completeCPECallForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method
