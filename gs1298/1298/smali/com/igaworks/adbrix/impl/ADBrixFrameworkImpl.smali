.class Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;
.super Lcom/igaworks/impl/CommonFrameworkImpl;
.source "ADBrixFrameworkImpl.java"

# interfaces
.implements Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
.implements Lcom/igaworks/interfaces/CommonActivityListener;
.implements Lcom/igaworks/interfaces/ExtendedCommonActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;
    }
.end annotation


# static fields
.field private static DL_PLAY_TIME_PASS:I

.field private static DL_SESSION_START_TIME:J

.field private static lockObj:Ljava/lang/Object;

.field public static onProcessDailyPlay:Z

.field private static retryTime:I


# instance fields
.field private dailyPlayCheckTask:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;

.field private flushTimer:Ljava/util/Timer;

.field protected httpManager:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_SESSION_START_TIME:J

    .line 65
    sput v2, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_PLAY_TIME_PASS:I

    .line 66
    sput v2, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->retryTime:I

    .line 67
    sput-boolean v2, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->onProcessDailyPlay:Z

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->lockObj:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/igaworks/impl/CommonFrameworkImpl;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->httpManager:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    .line 74
    return-void
.end method

.method private DailyPlayStart(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 474
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v0

    invoke-static {}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->canJoinCampaignToday(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->startDailyPlayCheckTask()V

    .line 477
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->flushTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->flushTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000()J
    .locals 2

    .prologue
    .line 58
    sget-wide v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->endSessionParam:J

    return-wide v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 58
    sput p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_PLAY_TIME_PASS:I

    return p0
.end method

.method static synthetic access$400(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->retryCPEConversion(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DailyPlayStart(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->setGetScheduleEventListener()V

    return-void
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->retryTime:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 58
    sput p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->retryTime:I

    return p0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->lockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->startDailyPlayCheckTask()V

    return-void
.end method

.method private retryCPEConversion(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x3

    .line 568
    invoke-static {p1}, Lcom/igaworks/util/CommonHelper;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    new-instance v0, Lcom/igaworks/util/bolts_task/Capture;

    invoke-direct {v0, v5}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 571
    .local v0, "activityParam":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    invoke-static {p1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->getDAO(Landroid/content/Context;)Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    move-result-object v4

    .line 572
    .local v4, "retryDao":Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;
    invoke-virtual {v4}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->getRetryConversions()Ljava/util/List;

    move-result-object v3

    .line 573
    .local v3, "retryConversions":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/RetryCompleteConversion;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 574
    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cpe complete retry start, the num of conversion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 575
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v2, "retryConversionKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adbrix/model/RetryCompleteConversion;

    .line 577
    .local v1, "retryConversion":Lcom/igaworks/adbrix/model/RetryCompleteConversion;
    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/RetryCompleteConversion;->getRetryCount()I

    move-result v7

    if-lt v7, v10, :cond_2

    .line 578
    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/RetryCompleteConversion;->getConversionKey()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->removeRetryCount(I)Z

    .line 579
    const-string v7, "IGAW_QA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cpe complete retry failed 3 times, conversionKey = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/RetryCompleteConversion;->getConversionKey()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v7, v8, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 581
    :cond_2
    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/RetryCompleteConversion;->getConversionKey()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    const-string v7, "IGAW_QA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cpe complete retry, conversionKey = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/RetryCompleteConversion;->getConversionKey()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v7, v8, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 585
    .end local v1    # "retryConversion":Lcom/igaworks/adbrix/model/RetryCompleteConversion;
    :cond_3
    check-cast v5, Ljava/lang/Void;

    invoke-static {v5}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v5

    new-instance v6, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$8;

    invoke-direct {v6, p0}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$8;-><init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)V

    invoke-virtual {v5, v6}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v5

    new-instance v6, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$7;

    invoke-direct {v6, p0, v0, p1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$7;-><init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;)V

    .line 589
    invoke-virtual {v5, v6}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v5

    new-instance v6, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$6;

    invoke-direct {v6, p0, p1, v0, v2}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$6;-><init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Landroid/content/Context;Lcom/igaworks/util/bolts_task/Capture;Ljava/util/ArrayList;)V

    sget-object v7, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 594
    invoke-virtual {v5, v6, v7}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    goto/16 :goto_0
.end method

.method private setGetScheduleEventListener()V
    .locals 1

    .prologue
    .line 610
    new-instance v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$9;

    invoke-direct {v0, p0}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$9;-><init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)V

    sput-object v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->onGetScheduleEvent:Lcom/igaworks/adbrix/core/OnGetSchedule;

    .line 633
    return-void
.end method

.method private startDailyPlayCheckTask()V
    .locals 9

    .prologue
    .line 480
    :try_start_0
    sget-object v4, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->lockObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :try_start_1
    iget-object v3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->timer:Ljava/util/Timer;

    if-eqz v3, :cond_0

    .line 482
    invoke-static {}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "IGAW_QA"

    const-string v6, "Start DailyPlay Timer again."

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v3, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 483
    iget-object v3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 486
    :cond_0
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->timer:Ljava/util/Timer;

    .line 487
    new-instance v3, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;

    invoke-direct {v3, p0}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;-><init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)V

    iput-object v3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->dailyPlayCheckTask:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;

    .line 488
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    :try_start_2
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v3

    invoke-static {}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getPlayTime(Landroid/content/Context;)I

    move-result v0

    .line 491
    .local v0, "REQUIRED_PLAY_TIME":I
    invoke-static {}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startDailyPlayCheckTask ... REQUIRED_PLAY_TIME: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">> Elapsed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_PLAY_TIME_PASS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 492
    sget v3, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_PLAY_TIME_PASS:I

    sub-int v2, v0, v3

    .line 493
    .local v2, "waitTime":I
    const/16 v3, 0x3e8

    if-le v2, v3, :cond_1

    .line 494
    iget-object v3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->timer:Ljava/util/Timer;

    iget-object v4, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->dailyPlayCheckTask:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;

    int-to-long v6, v2

    invoke-virtual {v3, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 503
    .end local v0    # "REQUIRED_PLAY_TIME":I
    .end local v2    # "waitTime":I
    :goto_0
    return-void

    .line 488
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 500
    :catch_0
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 496
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "REQUIRED_PLAY_TIME":I
    .restart local v2    # "waitTime":I
    :cond_1
    :try_start_5
    iget-object v3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->timer:Ljava/util/Timer;

    iget-object v4, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->dailyPlayCheckTask:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addConversionCache(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rp"    # Lcom/igaworks/core/RequestParameter;
    .param p3, "result"    # Ljava/lang/String;

    .prologue
    .line 301
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->delay(J)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;-><init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Ljava/lang/String;Landroid/content/Context;Lcom/igaworks/core/RequestParameter;)V

    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 346
    return-void
.end method

.method public addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    .line 749
    :try_start_0
    invoke-static {p1, p2}, Lcom/igaworks/commerce/IgawCommerce;->addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_0
    return-void

    .line 751
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1022
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/igaworks/commerce/IgawCommerce;->addToCart(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    :goto_0
    return-void

    .line 1024
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addToCartBulk(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 762
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    invoke-static {p1, p2}, Lcom/igaworks/commerce/IgawCommerce;->addToCartBulk(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addToCartBulk(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1035
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/igaworks/commerce/IgawCommerce;->addToCartBulk(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    :goto_0
    return-void

    .line 1037
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    .line 789
    :try_start_0
    invoke-static {p1, p2}, Lcom/igaworks/commerce/IgawCommerce;->addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_0
    return-void

    .line 791
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1062
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/igaworks/commerce/IgawCommerce;->addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :goto_0
    return-void

    .line 1064
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public appOpen(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 682
    :try_start_0
    invoke-static {p1}, Lcom/igaworks/commerce/IgawCommerce;->appOpen(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public appOpen(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 955
    .local p2, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2}, Lcom/igaworks/commerce/IgawCommerce;->appOpen(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_0
    return-void

    .line 957
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public buy(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 156
    const-string v1, "buy"

    sget-object v5, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 157
    return-void
.end method

.method public buy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v1, "buy"

    const/4 v4, 0x0

    sget-object v5, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method public categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    .prologue
    .line 802
    :try_start_0
    invoke-static {p1, p2}, Lcom/igaworks/commerce/IgawCommerce;->categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 815
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/igaworks/commerce/IgawCommerce;->categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1088
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p4, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/igaworks/commerce/IgawCommerce;->categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    :goto_0
    return-void

    .line 1090
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1075
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/igaworks/commerce/IgawCommerce;->categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :goto_0
    return-void

    .line 1077
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deeplinkOpen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deeplinkUrl"    # Ljava/lang/String;

    .prologue
    .line 695
    :try_start_0
    invoke-static {p1, p2}, Lcom/igaworks/commerce/IgawCommerce;->deeplinkOpen(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deeplinkOpen(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deeplinkUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 968
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/igaworks/commerce/IgawCommerce;->deeplinkOpen(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enableFlush()Z
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->flushTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 80
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->flushTimer:Ljava/util/Timer;

    .line 81
    iget-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->flushTimer:Ljava/util/Timer;

    new-instance v1, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$1;

    invoke-direct {v1, p0}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$1;-><init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public firstTimeExperience(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 109
    const-string v1, "fte"

    sget-object v5, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public firstTimeExperience(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v1, "fte"

    const/4 v4, 0x0

    sget-object v5, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public getHttpManager(Landroid/content/Context;)Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->initAppInfo(Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->httpManager:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    if-nez v0, :cond_0

    .line 101
    invoke-static {p1}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->getManager(Landroid/content/Context;)Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->httpManager:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->httpManager:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    return-object v0
.end method

.method public bridge synthetic getHttpManager(Landroid/content/Context;)Lcom/igaworks/net/CommonHttpManager;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->getHttpManager(Landroid/content/Context;)Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-result-object v0

    return-object v0
.end method

.method public hideAD()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    sput-object v0, Lcom/igaworks/adbrix/cpe/PromotionHandler;->onPlayBtnClickListener:Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;

    .line 150
    sput-object v0, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    .line 151
    invoke-static {}, Lcom/igaworks/adbrix/cpe/PromotionHandler;->closePromotion()V

    .line 152
    return-void
.end method

.method public login(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usn"    # Ljava/lang/String;

    .prologue
    .line 773
    invoke-static {p1, p2}, Lcom/igaworks/IgawCommon;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 776
    :try_start_0
    invoke-static {p1}, Lcom/igaworks/commerce/IgawCommerce;->login(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public login(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1046
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/igaworks/IgawCommon;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 1049
    :try_start_0
    invoke-static {p1, p3}, Lcom/igaworks/commerce/IgawCommerce;->login(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :goto_0
    return-void

    .line 1051
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityCalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "parameter"    # Lcom/igaworks/core/RequestParameter;

    .prologue
    .line 214
    const-string v0, "IGAW_QA"

    const-string v1, "onActivityCalled > group - %s, activity - %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    invoke-static {p1}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->getManager(Landroid/content/Context;)Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->checkAndComplete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;Ljava/util/Calendar;)V

    .line 217
    return-void
.end method

.method public onEndSession(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionStackCount"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x3

    .line 454
    const-string v0, "IGAW_QA"

    const-string v1, "adbrix onEndSession called"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v3, v2}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 455
    sget-object v1, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->lockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    sget-wide v2, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_SESSION_START_TIME:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 457
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_SESSION_START_TIME:J

    sub-long/2addr v2, v4

    sget v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_PLAY_TIME_PASS:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    long-to-int v0, v2

    sput v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_PLAY_TIME_PASS:I

    .line 458
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_SESSION_START_TIME:J

    .line 463
    :goto_0
    const-string v0, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DailyPlay >> elapsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_PLAY_TIME_PASS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {p1, v0, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 464
    iget-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->timer:Ljava/util/Timer;

    .line 469
    :cond_0
    monitor-exit v1

    .line 471
    return-void

    .line 460
    :cond_1
    const-string v0, "IGAW_QA"

    const-string v2, "StartSession and EndSession are pair. Must call startSession before endSession"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v0, 0x0

    sput v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_PLAY_TIME_PASS:I

    goto :goto_0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGetReferralResponse(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 376
    :try_start_0
    const-string v2, "IGAW_QA"

    const-string v3, "onReferralResponse called."

    const/4 v4, 0x3

    invoke-static {p1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v1

    .line 379
    .local v1, "rp":Lcom/igaworks/core/RequestParameter;
    invoke-virtual {p0, p1, v1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->restoreCPEAction_onGetReferralResponse(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;)V

    .line 380
    invoke-virtual {p0, p1, v1, p2}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->addConversionCache(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Ljava/lang/String;)V

    .line 383
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Lcom/igaworks/util/bolts_task/Task;->delay(J)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    new-instance v3, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$5;

    invoke-direct {v3, p0}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$5;-><init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)V

    sget-object v4, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, v3, v4}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v1    # "rp":Lcom/igaworks/core/RequestParameter;
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartSession(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p3, "sessionContinue"    # Z

    .prologue
    .line 221
    sget-object v1, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->lockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_SESSION_START_TIME:J

    .line 223
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;-><init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Landroid/content/Context;ZLcom/igaworks/core/RequestParameter;)V

    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 296
    return-void

    .line 223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .line 858
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/igaworks/commerce/IgawCommerce;->paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1131
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p6, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static/range {p1 .. p6}, Lcom/igaworks/commerce/IgawCommerce;->paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    :goto_0
    return-void

    .line 1133
    :catch_0
    move-exception v0

    .line 1135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    .line 708
    :try_start_0
    invoke-static {p1, p2}, Lcom/igaworks/commerce/IgawCommerce;->productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p3, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/igaworks/commerce/IgawCommerce;->productView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :goto_0
    return-void

    .line 984
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public purchase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "purchaseDataJsonString"    # Ljava/lang/String;

    .prologue
    .line 445
    :try_start_0
    invoke-static {p1, p2}, Lcom/igaworks/commerce/IgawCommerce;->purchase(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderID"    # Ljava/lang/String;
    .param p3, "purchaseDetail"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .param p6, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .prologue
    .line 655
    :try_start_0
    invoke-static/range {p1 .. p6}, Lcom/igaworks/commerce/IgawCommerce;->purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderID"    # Ljava/lang/String;
    .param p3, "purchaseDetail"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .param p6, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 928
    .local p7, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static/range {p1 .. p7}, Lcom/igaworks/commerce/IgawCommerce;->purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :goto_0
    return-void

    .line 930
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/Double;
    .param p4, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p5, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .prologue
    .line 641
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/igaworks/commerce/IgawCommerce;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/Double;
    .param p4, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p5, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Lcom/igaworks/commerce/IgawCommerce$Currency;",
            "Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 914
    .local p6, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static/range {p1 .. p6}, Lcom/igaworks/commerce/IgawCommerce;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/commerce/IgawCommerce$Currency;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderID"    # Ljava/lang/String;
    .param p3, "productID"    # Ljava/lang/String;
    .param p4, "productName"    # Ljava/lang/String;
    .param p5, "price"    # D
    .param p7, "quantity"    # I
    .param p8, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p9, "category"    # Ljava/lang/String;

    .prologue
    .line 423
    :try_start_0
    invoke-static/range {p1 .. p9}, Lcom/igaworks/commerce/IgawCommerce;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/commerce/IgawCommerce$Currency;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public purchase(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceItemModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p2, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceItemModel;>;"
    :try_start_0
    invoke-static {p1, p2}, Lcom/igaworks/commerce/IgawCommerce;->purchase(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderID"    # Ljava/lang/String;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .param p6, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .line 669
    .local p3, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    invoke-static/range {p1 .. p6}, Lcom/igaworks/commerce/IgawCommerce;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderID"    # Ljava/lang/String;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .param p6, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 942
    .local p3, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p7, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static/range {p1 .. p7}, Lcom/igaworks/commerce/IgawCommerce;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :goto_0
    return-void

    .line 944
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p4, "penaltyCharge"    # Ljava/lang/Double;

    .prologue
    .line 722
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/igaworks/commerce/IgawCommerce;->refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :goto_0
    return-void

    .line 724
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p4, "penaltyCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 995
    .local p5, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/igaworks/commerce/IgawCommerce;->refund(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :goto_0
    return-void

    .line 997
    :catch_0
    move-exception v0

    .line 999
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p4, "penaltyCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .line 736
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/igaworks/commerce/IgawCommerce;->refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :goto_0
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p4, "penaltyCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1009
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p5, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/igaworks/commerce/IgawCommerce;->refundBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :goto_0
    return-void

    .line 1011
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public restoreCPEAction_OnGetSchedule(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rp"    # Lcom/igaworks/core/RequestParameter;

    .prologue
    .line 362
    invoke-virtual {p2}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 364
    const-string v0, "IGAW_QA"

    const-string v1, "OnGetSchedule - restoreCPEAction"

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    invoke-static {p1}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->getManager(Landroid/content/Context;)Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->restoreCPEAction(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;)V

    .line 371
    :goto_0
    return-void

    .line 368
    :cond_0
    const-string v0, "IGAW_QA"

    const-string v1, "Adbrix SDK waiting for referrer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public restoreCPEAction_onGetReferralResponse(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rp"    # Lcom/igaworks/core/RequestParameter;

    .prologue
    .line 350
    sget-object v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "IGAW_QA"

    const-string v1, "onReferralResponse - restoreCPEAction"

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    invoke-static {p1}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->getManager(Landroid/content/Context;)Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->restoreCPEAction(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;)V

    .line 359
    :goto_0
    return-void

    .line 356
    :cond_0
    const-string v0, "IGAW_QA"

    const-string v1, "Adbrix SDK waiting for schedule..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public retention(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 119
    const-string v1, "ret"

    sget-object v5, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public retention(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v1, "ret"

    const/4 v4, 0x0

    sget-object v5, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;

    .prologue
    .line 828
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/igaworks/commerce/IgawCommerce;->reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1101
    .local p6, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static/range {p1 .. p6}, Lcom/igaworks/commerce/IgawCommerce;->reviewOrder(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :goto_0
    return-void

    .line 1103
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .line 843
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/igaworks/commerce/IgawCommerce;->reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p4, "discount"    # Ljava/lang/Double;
    .param p5, "deliveryCharge"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1116
    .local p3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p6, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static/range {p1 .. p6}, Lcom/igaworks/commerce/IgawCommerce;->reviewOrderBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :goto_0
    return-void

    .line 1118
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 872
    .local p3, "resultProducts":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/igaworks/commerce/IgawCommerce;->search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1145
    .local p3, "resultProducts":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    .local p4, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/igaworks/commerce/IgawCommerce;->search(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    :goto_0
    return-void

    .line 1147
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCustomCohort(Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;Ljava/lang/String;)V
    .locals 2
    .param p1, "cohortVariable"    # Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;
    .param p2, "cohort"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$2;-><init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 179
    return-void
.end method

.method public setDemographic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->save_demographic(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharingChennel"    # Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;
    .param p3, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;

    .prologue
    .line 886
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/igaworks/commerce/IgawCommerce;->share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharingChennel"    # Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;
    .param p3, "product"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1159
    .local p4, "attrData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/igaworks/commerce/IgawCommerce;->share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :goto_0
    return-void

    .line 1161
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showAD(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 128
    sput-object p2, Lcom/igaworks/adbrix/cpe/PromotionHandler;->dialogOpenner:Landroid/app/Activity;

    .line 129
    sput-object v3, Lcom/igaworks/adbrix/cpe/PromotionHandler;->onPlayBtnClickListener:Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;

    .line 130
    sput-object v3, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    .line 131
    const-string v1, "adspace"

    sget-object v5, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public showAD(Ljava/lang/String;Landroid/app/Activity;Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "onPlayBtnClickListener"    # Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;

    .prologue
    const/4 v3, 0x0

    .line 135
    sput-object p2, Lcom/igaworks/adbrix/cpe/PromotionHandler;->dialogOpenner:Landroid/app/Activity;

    .line 136
    sput-object p3, Lcom/igaworks/adbrix/cpe/PromotionHandler;->onPlayBtnClickListener:Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;

    .line 137
    sput-object v3, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    .line 138
    const-string v1, "adspace"

    sget-object v5, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public showAD(Ljava/lang/String;Landroid/app/Activity;Lcom/igaworks/adbrix/interfaces/PromotionActionListener;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "promotionActionListener"    # Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    .prologue
    const/4 v3, 0x0

    .line 142
    sput-object p2, Lcom/igaworks/adbrix/cpe/PromotionHandler;->dialogOpenner:Landroid/app/Activity;

    .line 143
    sput-object v3, Lcom/igaworks/adbrix/cpe/PromotionHandler;->onPlayBtnClickListener:Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;

    .line 144
    sput-object p3, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    .line 145
    const-string v1, "adspace"

    sget-object v5, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 146
    return-void
.end method

.method public useCoupon(Ljava/lang/String;)V
    .locals 6
    .param p1, "coupon"    # Ljava/lang/String;

    .prologue
    .line 413
    const-string v1, "3rd_party_coupon"

    const-string v2, "gameshuttle"

    const/4 v4, 0x0

    sget-object v5, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 415
    return-void
.end method

.method public viewHome(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 899
    :try_start_0
    invoke-static {p1}, Lcom/igaworks/commerce/IgawCommerce;->viewHome(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :goto_0
    return-void

    .line 901
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
