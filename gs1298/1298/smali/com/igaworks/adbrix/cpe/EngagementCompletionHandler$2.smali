.class final Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;
.super Ljava/lang/Object;
.source "EngagementCompletionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler;->checkAndCompleteEngagement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cCnt:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$engagement:Lcom/igaworks/adbrix/model/Engagement;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/model/Engagement;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;->val$engagement:Lcom/igaworks/adbrix/model/Engagement;

    iput p2, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;->val$cCnt:I

    iput-object p3, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 390
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;->val$engagement:Lcom/igaworks/adbrix/model/Engagement;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/model/Engagement;->getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adbrix/model/EngagementDisplay;->getProgressMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%r"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;->val$engagement:Lcom/igaworks/adbrix/model/Engagement;

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/Engagement;->getTrigger()Lcom/igaworks/adbrix/model/Trigger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/Trigger;->getCount()I

    move-result v4

    iget v5, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;->val$cCnt:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%n"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;->val$cCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "progressMsg":Ljava/lang/String;
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;->val$engagement:Lcom/igaworks/adbrix/model/Engagement;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Engagement;->getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/EngagementDisplay;->getProgressTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;->val$engagement:Lcom/igaworks/adbrix/model/Engagement;

    .line 393
    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Engagement;->getTrigger()Lcom/igaworks/adbrix/model/Trigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Trigger;->getCount()I

    move-result v3

    iget v4, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;->val$cCnt:I

    const/16 v5, 0x1388

    .line 392
    invoke-static/range {v0 .. v5}, Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;->makeToastPopup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V

    .line 394
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;->val$engagement:Lcom/igaworks/adbrix/model/Engagement;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Engagement;->getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/EngagementDisplay;->getProgressTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;->setNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method
