.class Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;
.super Ljava/util/TimerTask;
.source "ADBrixFrameworkImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdPopCornDailyPlayTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 510
    :try_start_0
    sget-object v3, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-lez v3, :cond_6

    .line 511
    const/4 v3, 0x0

    # setter for: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->retryTime:I
    invoke-static {v3}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$702(I)I

    .line 512
    # getter for: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->lockObj:Ljava/lang/Object;
    invoke-static {}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$800()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :try_start_1
    sget-boolean v3, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->onProcessDailyPlay:Z

    if-eqz v3, :cond_1

    monitor-exit v4

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    const/4 v3, 0x1

    sput-boolean v3, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->onProcessDailyPlay:Z

    .line 515
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    :try_start_2
    sget-object v3, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Schedule;->getReEngagement()Lcom/igaworks/adbrix/model/ReEngagement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/ReEngagement;->getDailyPlay()Ljava/util/List;

    move-result-object v0

    .line 518
    .local v0, "DailyPlayStepList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/DailyPlay;>;"
    if-eqz v0, :cond_4

    .line 520
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v4

    long-to-int v2, v4

    .line 521
    .local v2, "referrer":I
    if-lez v2, :cond_3

    .line 522
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 523
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v3

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->saveLastConversionDateTime(Landroid/content/Context;)V

    .line 524
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADBrixManager >> ReEngagement DailyPlayStepList size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 526
    :cond_2
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/igaworks/adbrix/cpe/DailyPlayHandler;->checkandComplete(Landroid/content/Context;Ljava/util/List;I)V

    .line 527
    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Lcom/igaworks/util/bolts_task/Task;->delay(J)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    new-instance v4, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask$1;

    invoke-direct {v4, p0}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask$1;-><init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;)V

    invoke-virtual {v3, v4}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 560
    .end local v0    # "DailyPlayStepList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/DailyPlay;>;"
    .end local v2    # "referrer":I
    :catch_0
    move-exception v1

    .line 561
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DailyPlayTimerTask Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 515
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 539
    .restart local v0    # "DailyPlayStepList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/DailyPlay;>;"
    .restart local v2    # "referrer":I
    :cond_3
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "IGAW_QA"

    const-string v5, "DailyPlay ReEngaement: Organic User"

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 541
    const/4 v3, 0x0

    sput-boolean v3, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->onProcessDailyPlay:Z

    goto/16 :goto_0

    .line 546
    .end local v2    # "referrer":I
    :cond_4
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 547
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "IGAW_QA"

    const-string v5, "DailyPlay ReEngaement: Null "

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 548
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v3

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->saveLastConversionDateTime(Landroid/content/Context;)V

    .line 550
    :cond_5
    const/4 v3, 0x0

    sput-boolean v3, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->onProcessDailyPlay:Z

    goto/16 :goto_0

    .line 554
    .end local v0    # "DailyPlayStepList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/DailyPlay;>;"
    :cond_6
    # getter for: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->retryTime:I
    invoke-static {}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$700()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    # setter for: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->retryTime:I
    invoke-static {v3}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$702(I)I

    .line 555
    # getter for: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->retryTime:I
    invoke-static {}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$700()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 557
    iget-object v3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    # invokes: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->startDailyPlayCheckTask()V
    invoke-static {v3}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$900(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method
