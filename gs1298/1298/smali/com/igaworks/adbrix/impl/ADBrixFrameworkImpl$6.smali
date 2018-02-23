.class Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$6;
.super Ljava/lang/Object;
.source "ADBrixFrameworkImpl.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->retryCPEConversion(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

.field final synthetic val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$retryConversionKeys:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Landroid/content/Context;Lcom/igaworks/util/bolts_task/Capture;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$6;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    iput-object p2, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$6;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    iput-object p4, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$6;->val$retryConversionKeys:Ljava/util/ArrayList;

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
    .line 594
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$6;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

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
    .line 599
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 601
    .local v4, "impressionParam":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    iget-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$6;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    iget-object v0, v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->httpManager:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    iget-object v2, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$6;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$6;->val$activityParam:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v3}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$6;->val$retryConversionKeys:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->completeCPECallForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 603
    const/4 v0, 0x0

    return-object v0
.end method
