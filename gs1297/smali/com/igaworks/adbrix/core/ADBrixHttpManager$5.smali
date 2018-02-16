.class Lcom/igaworks/adbrix/core/ADBrixHttpManager$5;
.super Ljava/lang/Object;
.source "ADBrixHttpManager.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreCPEConversionList(Landroid/content/Context;Ljava/util/ArrayList;)V
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
.field final synthetic this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

.field final synthetic val$complete_conversion_list:Ljava/util/ArrayList;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$5;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    iput-object p2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$5;->val$complete_conversion_list:Ljava/util/ArrayList;

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
    .line 647
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$5;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 4
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
    .line 651
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$5;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->getDAO(Landroid/content/Context;)Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    move-result-object v1

    .line 652
    .local v1, "retryDao":Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;
    iget-object v2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$5;->val$complete_conversion_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 653
    .local v0, "conversion":I
    invoke-virtual {v1, v0}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->updateOrInsertConversionForRetry(I)V

    goto :goto_0

    .line 655
    .end local v0    # "conversion":I
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
