.class public Lcom/igaworks/adbrix/cpe/DailyPlayHandler;
.super Ljava/lang/Object;
.source "DailyPlayHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkandComplete(Landroid/content/Context;Ljava/util/List;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "referrerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/DailyPlay;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "dailyPlayStepList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/DailyPlay;>;"
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getLatestConversionKey(Landroid/content/Context;)I

    move-result v4

    .line 29
    .local v4, "parentCK":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    .line 30
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 31
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adbrix/model/DailyPlay;

    .line 32
    .local v1, "dailyPlayStep":Lcom/igaworks/adbrix/model/DailyPlay;
    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/DailyPlay;->getParentConversionKey()I

    move-result v6

    if-ne v6, p2, :cond_3

    .line 33
    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/DailyPlay;->getConversionKey()I

    move-result v3

    .line 34
    .local v3, "new_ConversionKey":I
    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/DailyPlay;->getPlayTime()I

    move-result v5

    .line 35
    .local v5, "playTime":I
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v6

    invoke-virtual {v6, p0, v5}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->setPlayTime(Landroid/content/Context;I)V

    .line 37
    invoke-static {p0}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/core/RequestParameter;->getConversionCache()Ljava/util/ArrayList;

    move-result-object v0

    .line 38
    .local v0, "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 39
    :cond_0
    invoke-static {p0, v3}, Lcom/igaworks/adbrix/cpe/DailyPlayHandler;->sendCompletRequest(Landroid/content/Context;I)V

    .line 65
    .end local v0    # "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "dailyPlayStep":Lcom/igaworks/adbrix/model/DailyPlay;
    .end local v3    # "new_ConversionKey":I
    .end local v5    # "playTime":I
    :cond_1
    :goto_1
    return-void

    .line 41
    .restart local v0    # "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v1    # "dailyPlayStep":Lcom/igaworks/adbrix/model/DailyPlay;
    .restart local v3    # "new_ConversionKey":I
    .restart local v5    # "playTime":I
    :cond_2
    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Conversion completed already: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 30
    .end local v0    # "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "new_ConversionKey":I
    .end local v5    # "playTime":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "dailyPlayStep":Lcom/igaworks/adbrix/model/DailyPlay;
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 49
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adbrix/model/DailyPlay;

    .line 50
    .restart local v1    # "dailyPlayStep":Lcom/igaworks/adbrix/model/DailyPlay;
    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/DailyPlay;->getParentConversionKey()I

    move-result v6

    if-ne v6, v4, :cond_7

    .line 51
    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/DailyPlay;->getConversionKey()I

    move-result v3

    .line 52
    .restart local v3    # "new_ConversionKey":I
    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/DailyPlay;->getPlayTime()I

    move-result v5

    .line 53
    .restart local v5    # "playTime":I
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v6

    invoke-virtual {v6, p0, v5}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->setPlayTime(Landroid/content/Context;I)V

    .line 54
    invoke-static {p0}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/core/RequestParameter;->getConversionCache()Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    .restart local v0    # "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 56
    :cond_5
    invoke-static {p0, v3}, Lcom/igaworks/adbrix/cpe/DailyPlayHandler;->sendCompletRequest(Landroid/content/Context;I)V

    goto :goto_1

    .line 58
    :cond_6
    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Conversion completed already: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 48
    .end local v0    # "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "new_ConversionKey":I
    .end local v5    # "playTime":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static sendCompletRequest(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversionkey"    # I

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-static {}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->setPendingConversionKey(Landroid/content/Context;I)V

    .line 70
    const-string v3, "IGAW_QA"

    const-string v4, "ADBrixManager > DailyPlayHandler sendCompleRequest"

    const/4 v5, 0x3

    invoke-static {p0, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "conversionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Lcom/igaworks/util/bolts_task/Capture;

    invoke-direct {v0, v2}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 74
    .local v0, "activityParam":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    check-cast v2, Ljava/lang/Void;

    invoke-static {v2}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    new-instance v3, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$3;

    invoke-direct {v3, p0}, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    new-instance v3, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$2;

    invoke-direct {v3, v0, p0}, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$2;-><init>(Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;)V

    .line 80
    invoke-virtual {v2, v3}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    new-instance v3, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/igaworks/adbrix/cpe/DailyPlayHandler$1;-><init>(Landroid/content/Context;Lcom/igaworks/util/bolts_task/Capture;Ljava/util/ArrayList;)V

    sget-object v4, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 85
    invoke-virtual {v2, v3, v4}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 94
    return-void
.end method
