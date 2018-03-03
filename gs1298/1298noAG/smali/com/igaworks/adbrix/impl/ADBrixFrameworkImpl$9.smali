.class Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$9;
.super Ljava/lang/Object;
.source "ADBrixFrameworkImpl.java"

# interfaces
.implements Lcom/igaworks/adbrix/core/OnGetSchedule;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->setGetScheduleEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$9;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSchedule(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 613
    if-eqz p2, :cond_2

    .line 614
    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v2

    .line 615
    .local v2, "rp":Lcom/igaworks/core/RequestParameter;
    iget-object v3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$9;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    invoke-virtual {v3, p1, v2}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->restoreCPEAction_OnGetSchedule(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;)V

    .line 616
    iget-object v3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$9;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    # invokes: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->retryCPEConversion(Landroid/content/Context;)V
    invoke-static {v3, p1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$400(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Landroid/content/Context;)V

    .line 618
    invoke-virtual {v2}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v0

    .line 619
    .local v0, "ref":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 620
    const-string v3, "IGAW_QA"

    const-string v4, "DailyPlay is waiting getReferrer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    cmp-long v3, v0, v6

    if-nez v3, :cond_1

    .line 623
    const-string v3, "IGAW_QA"

    const-string v4, "DailyPlay Skip >> Organic"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_1
    cmp-long v3, v0, v6

    if-lez v3, :cond_2

    .line 626
    const-string v3, "IGAW_QA"

    const-string v4, "DailyPlay start and check"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$9;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    # invokes: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DailyPlayStart(Landroid/content/Context;)V
    invoke-static {v3, p1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$500(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Landroid/content/Context;)V

    .line 631
    .end local v0    # "ref":J
    .end local v2    # "rp":Lcom/igaworks/core/RequestParameter;
    :cond_2
    return-void
.end method
