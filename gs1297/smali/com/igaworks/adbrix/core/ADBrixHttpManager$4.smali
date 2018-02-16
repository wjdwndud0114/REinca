.class Lcom/igaworks/adbrix/core/ADBrixHttpManager$4;
.super Ljava/lang/Object;
.source "ADBrixHttpManager.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreCPESingleConversion(Landroid/content/Context;II)V
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversion:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$4;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    iput-object p2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$4;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$4;->val$conversion:I

    iput p4, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$4;->val$resultCode:I

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
    .line 636
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$4;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

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
    .line 638
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$4;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->getDAO(Landroid/content/Context;)Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    move-result-object v0

    .line 639
    .local v0, "retryDao":Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;
    iget v1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$4;->val$conversion:I

    invoke-virtual {v0, v1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->updateOrInsertConversionForRetry(I)V

    .line 641
    iget-object v1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$4;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback complete cpe error occurred : resultCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$4;->val$resultCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    const/4 v1, 0x0

    return-object v1
.end method
