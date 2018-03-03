.class Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;
.super Ljava/lang/Object;
.source "ADBrixFrameworkImpl.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->onStartSession(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Z)V
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
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$parameter:Lcom/igaworks/core/RequestParameter;

.field final synthetic val$sessionContinue:Z


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Landroid/content/Context;ZLcom/igaworks/core/RequestParameter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    iput-object p2, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$sessionContinue:Z

    iput-object p4, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Object;>;"
    const/4 v10, 0x0

    .line 229
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v7

    iget-object v8, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getLastOnStartSessionDateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "lastOnSessionDateTime":Ljava/lang/String;
    :try_start_0
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 232
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v7

    iget-object v8, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->setLastOnStartSessionDateTime(Landroid/content/Context;)V

    .line 233
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 234
    .local v3, "lastOnSessionDateTimeCal":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 235
    .local v5, "now":Ljava/util/Calendar;
    sget-object v7, Lcom/igaworks/adbrix/db/DailyPlayDAO;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 236
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 237
    const/4 v7, 0x0

    # setter for: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_PLAY_TIME_PASS:I
    invoke-static {v7}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$302(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v3    # "lastOnSessionDateTimeCal":Ljava/util/Calendar;
    .end local v5    # "now":Ljava/util/Calendar;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    iget-object v8, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->getHttpManager(Landroid/content/Context;)Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-result-object v1

    .line 247
    .local v1, "httpManager":Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    iget-object v7, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    const-string v8, "IGAW_QA"

    const-string v9, "adbrix onStartSession called"

    const/4 v10, 0x3

    invoke-static {v7, v8, v9, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    iget-object v7, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    instance-of v7, v7, Landroid/app/Activity;

    if-eqz v7, :cond_6

    .line 252
    sget-object v7, Lcom/igaworks/adbrix/cpe/PromotionHandler;->dialogOpenner:Landroid/app/Activity;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    sput-object v7, Lcom/igaworks/adbrix/cpe/PromotionHandler;->dialogOpenner:Landroid/app/Activity;

    .line 259
    :cond_1
    :goto_1
    iget-boolean v7, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$sessionContinue:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-nez v7, :cond_3

    .line 261
    :cond_2
    invoke-static {}, Lcom/igaworks/adbrix/db/ScheduleDAO;->getInstance()Lcom/igaworks/adbrix/db/ScheduleDAO;

    move-result-object v7

    iget-object v8, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/igaworks/adbrix/db/ScheduleDAO;->getSchedule(Landroid/content/Context;)Lcom/igaworks/adbrix/model/ScheduleContainer;

    move-result-object v6

    .line 264
    .local v6, "schedule":Lcom/igaworks/adbrix/model/ScheduleContainer;
    iget-object v7, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v4

    .line 265
    .local v4, "manager":Lcom/igaworks/core/DeviceIDManger;
    iget-object v7, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iget-object v8, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v9}, Lcom/igaworks/core/DeviceIDManger;->getAESPuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v7, v8, v9, v6}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->getScheduleForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/adbrix/model/ScheduleContainer;)V

    .line 270
    .end local v4    # "manager":Lcom/igaworks/core/DeviceIDManger;
    .end local v6    # "schedule":Lcom/igaworks/adbrix/model/ScheduleContainer;
    :cond_3
    sget-object v7, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-eqz v7, :cond_7

    .line 271
    iget-object v7, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    iget-object v8, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->retryCPEConversion(Landroid/content/Context;)V
    invoke-static {v7, v8}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$400(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Landroid/content/Context;)V

    .line 272
    iget-object v7, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 273
    const-string v7, "IGAW_QA"

    const-string v8, "DailyPlay start and check"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v7, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    iget-object v8, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DailyPlayStart(Landroid/content/Context;)V
    invoke-static {v7, v8}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$500(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Landroid/content/Context;)V

    .line 284
    :cond_4
    :goto_2
    iget-boolean v7, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$sessionContinue:Z

    if-nez v7, :cond_5

    .line 287
    invoke-static {}, Lcom/igaworks/dao/CPESessionImpressionDAO;->getInstance()Lcom/igaworks/dao/AbstractCPEImpressionDAO;

    move-result-object v7

    iget-object v8, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/igaworks/dao/AbstractCPEImpressionDAO;->clearImpressionData(Landroid/content/Context;)V

    .line 288
    sget-object v7, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 291
    :cond_5
    const/4 v7, 0x0

    return-object v7

    .line 240
    .end local v1    # "httpManager":Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "IGAW_QA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check startSessionDateTime Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    # setter for: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DL_PLAY_TIME_PASS:I
    invoke-static {v10}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$302(I)I

    goto/16 :goto_0

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "httpManager":Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    :cond_6
    iget-object v7, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->val$context:Landroid/content/Context;

    const-string v8, "IGAW_QA"

    const-string v9, "context is not instance of Activity"

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 277
    :cond_7
    iget-object v7, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    # invokes: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->setGetScheduleEventListener()V
    invoke-static {v7}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$600(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)V

    goto :goto_2
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$3;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
