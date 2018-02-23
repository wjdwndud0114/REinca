.class Lcom/igaworks/impl/InternalAction$8;
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
.field final synthetic this$0:Lcom/igaworks/impl/InternalAction;

.field final synthetic val$act:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$endSessionParam:J

.field final synthetic val$group:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/impl/InternalAction;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/igaworks/impl/InternalAction;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/igaworks/impl/InternalAction$8;->this$0:Lcom/igaworks/impl/InternalAction;

    iput-object p2, p0, Lcom/igaworks/impl/InternalAction$8;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/impl/InternalAction$8;->val$group:Ljava/lang/String;

    iput-object p4, p0, Lcom/igaworks/impl/InternalAction$8;->val$act:Ljava/lang/String;

    iput-wide p5, p0, Lcom/igaworks/impl/InternalAction$8;->val$endSessionParam:J

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
    .line 173
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/igaworks/impl/InternalAction$8;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/igaworks/impl/InternalAction$8;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/igaworks/impl/InternalAction$8;->val$group:Ljava/lang/String;

    iget-object v5, p0, Lcom/igaworks/impl/InternalAction$8;->val$act:Ljava/lang/String;

    iget-wide v6, p0, Lcom/igaworks/impl/InternalAction$8;->val$endSessionParam:J

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
    .line 171
    invoke-virtual {p0, p1}, Lcom/igaworks/impl/InternalAction$8;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
