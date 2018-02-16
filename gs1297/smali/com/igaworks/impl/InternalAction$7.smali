.class Lcom/igaworks/impl/InternalAction$7;
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
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/InternalAction;

.field final synthetic val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igaworks/impl/InternalAction;Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/InternalAction;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/igaworks/impl/InternalAction$7;->this$0:Lcom/igaworks/impl/InternalAction;

    iput-object p2, p0, Lcom/igaworks/impl/InternalAction$7;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    iput-object p3, p0, Lcom/igaworks/impl/InternalAction$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;>;)",
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
    .line 177
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    iget-object v0, p0, Lcom/igaworks/impl/InternalAction$7;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Capture;->set(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/igaworks/impl/InternalAction$7;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/igaworks/impl/InternalAction$7;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getImpressionData(ZLandroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;

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
    .line 175
    invoke-virtual {p0, p1}, Lcom/igaworks/impl/InternalAction$7;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
