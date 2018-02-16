.class Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1$1;
.super Ljava/lang/Object;
.source "ADBrixHttpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->callback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;

.field final synthetic val$cEng:Lcom/igaworks/adbrix/model/Engagement;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;Ljava/lang/String;Lcom/igaworks/adbrix/model/Engagement;)V
    .locals 0
    .param p1, "this$2"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;

    iput-object p2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1$1;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1$1;->val$cEng:Lcom/igaworks/adbrix/model/Engagement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 241
    iget-object v0, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback complete cpe > msg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1$1;->val$cEng:Lcom/igaworks/adbrix/model/Engagement;

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Engagement;->getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/EngagementDisplay;->getCompleteToastMSec()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 244
    iget-object v0, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    iget-object v1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;

    iget-object v1, v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    iget-object v1, v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1$1;->val$cEng:Lcom/igaworks/adbrix/model/Engagement;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Engagement;->getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/EngagementDisplay;->getCompleteToastMSec()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1$1$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->makeCompleteToast(Landroid/content/Context;JLjava/lang/String;)V

    .line 245
    return-void
.end method
