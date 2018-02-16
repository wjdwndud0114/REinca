.class public Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler;
.super Ljava/lang/Object;
.source "EngagementCompletionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateIntervalDate(Lcom/igaworks/adbrix/model/Trigger;Ljava/util/Calendar;)V
    .locals 8
    .param p0, "trigger"    # Lcom/igaworks/adbrix/model/Trigger;
    .param p1, "targetTime"    # Ljava/util/Calendar;

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 508
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 509
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 511
    invoke-virtual {p0}, Lcom/igaworks/adbrix/model/Trigger;->getResetType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 513
    invoke-virtual {p0}, Lcom/igaworks/adbrix/model/Trigger;->getResetType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "daily"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    invoke-virtual {p0}, Lcom/igaworks/adbrix/model/Trigger;->getResetData()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 516
    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 517
    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 518
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 520
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 562
    :goto_0
    return-void

    .line 523
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 524
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/igaworks/adbrix/model/Trigger;->getResetType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "weekly"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 528
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/igaworks/adbrix/model/Trigger;->getResetData()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 529
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 530
    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 531
    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 532
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 534
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 537
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 538
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 540
    :cond_3
    invoke-virtual {p0}, Lcom/igaworks/adbrix/model/Trigger;->getResetType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "monthly"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 541
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/igaworks/adbrix/model/Trigger;->getResetData()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 542
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 543
    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 544
    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 545
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 547
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 548
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 550
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 551
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 554
    :cond_5
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/igaworks/adbrix/model/Trigger;->getIntervalMSec()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 558
    :cond_6
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/igaworks/adbrix/model/Trigger;->getIntervalMSec()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto/16 :goto_0
.end method

.method public static checkAndCompleteEngagement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;Ljava/util/Calendar;)V
    .locals 58
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p4, "tracerInstance"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .param p5, "restoreTime"    # Ljava/util/Calendar;

    .prologue
    .line 40
    :try_start_0
    new-instance v39, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    .local v39, "handler":Landroid/os/Handler;
    invoke-static/range {p0 .. p0}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->getDAO(Landroid/content/Context;)Lcom/igaworks/dao/CounterDAOForCPEActivity;

    move-result-object v30

    .line 43
    .local v30, "counterDAOForCPEActivity":Lcom/igaworks/dao/CounterDAOForCPEActivity;
    invoke-static/range {p0 .. p0}, Lcom/igaworks/dao/CounterDAOForAllActivity;->getDAO(Landroid/content/Context;)Lcom/igaworks/dao/CounterDAOForAllActivity;

    move-result-object v29

    .line 46
    .local v29, "counterDAOForAllActivity":Lcom/igaworks/dao/CounterDAOForAllActivity;
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/dao/CounterDAOForAllActivity;->updateItemToAllActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/core/RequestParameter;->getConversionCache()Ljava/util/ArrayList;

    move-result-object v27

    .line 50
    .local v27, "conversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/core/RequestParameter;->getRetainedConversionCache()Ljava/util/ArrayList;

    move-result-object v51

    .line 52
    .local v51, "retainedConversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v27, :cond_0

    .line 53
    new-instance v27, Ljava/util/ArrayList;

    .end local v27    # "conversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .restart local v27    # "conversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    if-nez v51, :cond_1

    .line 56
    new-instance v51, Ljava/util/ArrayList;

    .end local v51    # "retainedConversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .restart local v51    # "retainedConversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/core/RequestParameter;->getAllowDuplicationConversions()Ljava/util/ArrayList;

    move-result-object v20

    .line 60
    .local v20, "AllowDuplicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/core/RequestParameter;->getConversionCacheHistory()Ljava/util/ArrayList;

    move-result-object v40

    .line 61
    .local v40, "historyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DuplicationConversionKeyModel;>;"
    new-instance v6, Lcom/igaworks/model/DuplicationConversionKeyComparator;

    invoke-direct {v6}, Lcom/igaworks/model/DuplicationConversionKeyComparator;-><init>()V

    move-object/from16 v0, v40

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    sget-object v6, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Schedule;->getEngagements()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_4

    .line 64
    :cond_2
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Engagement schedule is null"

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 432
    .end local v20    # "AllowDuplicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27    # "conversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29    # "counterDAOForAllActivity":Lcom/igaworks/dao/CounterDAOForAllActivity;
    .end local v30    # "counterDAOForCPEActivity":Lcom/igaworks/dao/CounterDAOForCPEActivity;
    .end local v39    # "handler":Landroid/os/Handler;
    .end local v40    # "historyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DuplicationConversionKeyModel;>;"
    .end local v51    # "retainedConversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    :goto_0
    return-void

    .line 67
    .restart local v20    # "AllowDuplicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v27    # "conversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v29    # "counterDAOForAllActivity":Lcom/igaworks/dao/CounterDAOForAllActivity;
    .restart local v30    # "counterDAOForCPEActivity":Lcom/igaworks/dao/CounterDAOForCPEActivity;
    .restart local v39    # "handler":Landroid/os/Handler;
    .restart local v40    # "historyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DuplicationConversionKeyModel;>;"
    .restart local v51    # "retainedConversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ADBrixManager > Engagement schedule size : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v13}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/igaworks/adbrix/model/Schedule;->getEngagements()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    sget-object v6, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Schedule;->getEngagements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v57

    :cond_5
    :goto_1
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/igaworks/adbrix/model/Engagement;

    .line 73
    .local v38, "engagement":Lcom/igaworks/adbrix/model/Engagement;
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getTrigger()Lcom/igaworks/adbrix/model/Trigger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Trigger;->getGroup()Ljava/lang/String;

    move-result-object v36

    .line 74
    .local v36, "currentGroup":Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getTrigger()Lcom/igaworks/adbrix/model/Trigger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Trigger;->getActivity()Ljava/lang/String;

    move-result-object v32

    .line 75
    .local v32, "currentActivity":Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->isAllowDuplication()Z

    move-result v21

    .line 78
    .local v21, "allowDuplication":Z
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 80
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ADBrixManager > Engagement Item : group = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", activity = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", allowDuplication: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 82
    if-eqz v21, :cond_6

    .line 83
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getConversionKey()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 84
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Already Complete Engagement >> Retained conversion cache exists"

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 427
    .end local v20    # "AllowDuplicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "allowDuplication":Z
    .end local v27    # "conversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29    # "counterDAOForAllActivity":Lcom/igaworks/dao/CounterDAOForAllActivity;
    .end local v30    # "counterDAOForCPEActivity":Lcom/igaworks/dao/CounterDAOForCPEActivity;
    .end local v32    # "currentActivity":Ljava/lang/String;
    .end local v36    # "currentGroup":Ljava/lang/String;
    .end local v38    # "engagement":Lcom/igaworks/adbrix/model/Engagement;
    .end local v39    # "handler":Landroid/os/Handler;
    .end local v40    # "historyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DuplicationConversionKeyModel;>;"
    .end local v51    # "retainedConversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v37

    .line 429
    .local v37, "e":Ljava/lang/Exception;
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkAndCompleteEngagement Exception: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 88
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v20    # "AllowDuplicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "allowDuplication":Z
    .restart local v27    # "conversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v29    # "counterDAOForAllActivity":Lcom/igaworks/dao/CounterDAOForAllActivity;
    .restart local v30    # "counterDAOForCPEActivity":Lcom/igaworks/dao/CounterDAOForCPEActivity;
    .restart local v32    # "currentActivity":Ljava/lang/String;
    .restart local v36    # "currentGroup":Ljava/lang/String;
    .restart local v38    # "engagement":Lcom/igaworks/adbrix/model/Engagement;
    .restart local v39    # "handler":Landroid/os/Handler;
    .restart local v40    # "historyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DuplicationConversionKeyModel;>;"
    .restart local v51    # "retainedConversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    :try_start_1
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getConversionKey()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 89
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Already Complete Engagement"

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 95
    :cond_7
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ADBrixManager > Engagement Check For parent Conversion Key : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getParentConversionKey()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getParentConversionKey()I

    move-result v6

    const/4 v11, -0x1

    if-eq v6, v11, :cond_8

    if-eqz v27, :cond_8

    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getParentConversionKey()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 99
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Engagement Check : Parent Conversion not completed"

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 104
    :cond_8
    if-eqz v21, :cond_c

    .line 105
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getParentConversionKey()I

    move-result v49

    .line 106
    .local v49, "parentCK":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "::--::;"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    .line 107
    .local v54, "targetCKString":Ljava/lang/String;
    if-lez v49, :cond_13

    if-eqz v20, :cond_13

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_13

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 108
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v50, "parentCKHistoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DuplicationConversionKeyModel;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 110
    .local v46, "item":Ljava/lang/String;
    const/16 v41, 0x0

    .local v41, "i":I
    :goto_3
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v41

    if-ge v0, v6, :cond_9

    .line 111
    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/igaworks/model/DuplicationConversionKeyModel;

    invoke-virtual {v6}, Lcom/igaworks/model/DuplicationConversionKeyModel;->getConversion()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 112
    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 110
    :cond_a
    add-int/lit8 v41, v41, 0x1

    goto :goto_3

    .line 117
    .end local v41    # "i":I
    .end local v46    # "item":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 118
    new-instance v6, Lcom/igaworks/model/DuplicationConversionKeyComparator;

    invoke-direct {v6}, Lcom/igaworks/model/DuplicationConversionKeyComparator;-><init>()V

    move-object/from16 v0, v50

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    const/4 v6, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/igaworks/model/DuplicationConversionKeyModel;

    invoke-virtual {v6}, Lcom/igaworks/model/DuplicationConversionKeyModel;->getConversion()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 121
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ADBrixManager > Engagement Check : Parent Conversion "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v49

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " > in AllowDuplicationList and is the latest ck"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 134
    .end local v49    # "parentCK":I
    .end local v50    # "parentCKHistoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DuplicationConversionKeyModel;>;"
    .end local v54    # "targetCKString":Ljava/lang/String;
    :cond_c
    :goto_4
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getSegments()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_18

    .line 135
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Engagement Segment Check Start"

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    const/16 v45, 0x1

    .line 138
    .local v45, "isMatch":Z
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/igaworks/adbrix/model/Segment;

    .line 141
    .local v52, "segment":Lcom/igaworks/adbrix/model/Segment;
    const/4 v8, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getConversionKey()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ""

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v52 .. v52}, Lcom/igaworks/adbrix/model/Segment;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v52 .. v52}, Lcom/igaworks/adbrix/model/Segment;->getKey()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    invoke-static/range {v6 .. v11}, Lcom/igaworks/adbrix/cpe/ConditionChecker;->getUserValue(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    .line 143
    .local v55, "value":Ljava/lang/Object;
    invoke-virtual/range {v52 .. v52}, Lcom/igaworks/adbrix/model/Segment;->getVal()Ljava/lang/Object;

    move-result-object v53

    .line 145
    .local v53, "target":Ljava/lang/Object;
    invoke-virtual/range {v52 .. v52}, Lcom/igaworks/adbrix/model/Segment;->getVal()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/util/Collection;

    if-eqz v6, :cond_e

    .line 147
    move-object/from16 v0, v55

    instance-of v6, v0, Ljava/lang/String;

    if-nez v6, :cond_d

    .line 148
    const/16 v55, 0x0

    .line 151
    .end local v55    # "value":Ljava/lang/Object;
    :cond_d
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v56, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v55, Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    move-object/from16 v55, v56

    .line 157
    .end local v56    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    if-eqz v53, :cond_f

    if-eqz v55, :cond_f

    invoke-virtual/range {v52 .. v52}, Lcom/igaworks/adbrix/model/Segment;->getOp()Ljava/lang/String;

    move-result-object v11

    .line 158
    invoke-virtual/range {v52 .. v52}, Lcom/igaworks/adbrix/model/Segment;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v14, "app"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual/range {v52 .. v52}, Lcom/igaworks/adbrix/model/Segment;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v14, "package"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v6, 0x1

    .line 157
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v55

    invoke-static {v0, v11, v1, v2, v6}, Lcom/igaworks/adbrix/cpe/ConditionChecker;->isMatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_17

    .line 160
    :cond_f
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Engagement Segment check failed : "

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 161
    const-string v11, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v52 .. v52}, Lcom/igaworks/adbrix/model/Segment;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " / "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v52 .. v52}, Lcom/igaworks/adbrix/model/Segment;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " / "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v52 .. v52}, Lcom/igaworks/adbrix/model/Segment;->getOp()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " / "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v53, :cond_15

    const-string v6, "null"

    :goto_7
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ", UserValue = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v55, :cond_16

    const-string v6, "null"

    .line 162
    :goto_8
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x3

    .line 161
    move-object/from16 v0, p0

    invoke-static {v0, v11, v6, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    const/16 v45, 0x0

    .line 171
    .end local v52    # "segment":Lcom/igaworks/adbrix/model/Segment;
    .end local v53    # "target":Ljava/lang/Object;
    :cond_10
    if-eqz v45, :cond_5

    .line 179
    .end local v45    # "isMatch":Z
    :goto_9
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ADBrixManager > Engagement Trigger Count : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getTrigger()Lcom/igaworks/adbrix/model/Trigger;

    move-result-object v13

    invoke-virtual {v13}, Lcom/igaworks/adbrix/model/Trigger;->getCount()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getTrigger()Lcom/igaworks/adbrix/model/Trigger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Trigger;->getCount()I

    move-result v6

    const/4 v11, 0x1

    if-le v6, v11, :cond_24

    .line 184
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->getActivityCounters(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v31

    .line 185
    .local v31, "counterList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/ActivityCounter;>;"
    const/4 v7, 0x0

    .local v7, "year":I
    const/4 v8, 0x0

    .local v8, "month":I
    const/4 v9, 0x0

    .local v9, "day":I
    const/4 v10, 0x0

    .line 186
    .local v10, "hour":I
    const/16 v35, 0x0

    .line 188
    .local v35, "currentDate":Ljava/util/Calendar;
    if-nez p5, :cond_19

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v35

    .line 190
    const/4 v6, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 191
    const/4 v6, 0x2

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 192
    const/4 v6, 0x5

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 193
    const/16 v6, 0xb

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 201
    :goto_a
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ADBrixManager > Engagement Current Date : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    if-eqz v31, :cond_11

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x1

    if-ge v6, v11, :cond_1a

    .line 205
    :cond_11
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Activity Counter not exist, starting insert row"

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v6, v30

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    .line 206
    invoke-virtual/range {v6 .. v13}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->insertCounter(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 208
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/EngagementDisplay;->isProgressShow()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 210
    new-instance v6, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$1;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v6, v0, v1}, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$1;-><init>(Lcom/igaworks/adbrix/model/Engagement;Landroid/content/Context;)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 123
    .end local v7    # "year":I
    .end local v8    # "month":I
    .end local v9    # "day":I
    .end local v10    # "hour":I
    .end local v31    # "counterList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/ActivityCounter;>;"
    .end local v35    # "currentDate":Ljava/util/Calendar;
    .restart local v49    # "parentCK":I
    .restart local v50    # "parentCKHistoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DuplicationConversionKeyModel;>;"
    .restart local v54    # "targetCKString":Ljava/lang/String;
    :cond_12
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ADBrixManager > Engagement Check : Parent Conversion "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v49

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " > in AllowDuplicationList but is not the latest ck"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 129
    .end local v50    # "parentCKHistoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DuplicationConversionKeyModel;>;"
    :cond_13
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ADBrixManager > Engagement Check : Parent Conversion "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v49

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " > not in AllowDuplicationList"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_4

    .line 158
    .end local v49    # "parentCK":I
    .end local v54    # "targetCKString":Ljava/lang/String;
    .restart local v45    # "isMatch":Z
    .restart local v52    # "segment":Lcom/igaworks/adbrix/model/Segment;
    .restart local v53    # "target":Ljava/lang/Object;
    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 161
    :cond_15
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_7

    .line 162
    :cond_16
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_8

    .line 166
    :cond_17
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ADBrixManager > Engagement Segment check passed : "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 167
    invoke-virtual/range {v52 .. v52}, Lcom/igaworks/adbrix/model/Segment;->getScheme()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " / "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v52 .. v52}, Lcom/igaworks/adbrix/model/Segment;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " / "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v52 .. v52}, Lcom/igaworks/adbrix/model/Segment;->getOp()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " / "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", UserValue = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x3

    .line 166
    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 176
    .end local v45    # "isMatch":Z
    .end local v52    # "segment":Lcom/igaworks/adbrix/model/Segment;
    .end local v53    # "target":Ljava/lang/Object;
    :cond_18
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Engagement Check : Segment not exist"

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_9

    .line 195
    .restart local v7    # "year":I
    .restart local v8    # "month":I
    .restart local v9    # "day":I
    .restart local v10    # "hour":I
    .restart local v31    # "counterList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/ActivityCounter;>;"
    .restart local v35    # "currentDate":Ljava/util/Calendar;
    :cond_19
    const/4 v6, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 196
    const/4 v6, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 197
    const/4 v6, 0x5

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 198
    const/16 v6, 0xb

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    goto/16 :goto_a

    .line 225
    :cond_1a
    const/16 v23, 0x0

    .line 226
    .local v23, "cnt":I
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getTrigger()Lcom/igaworks/adbrix/model/Trigger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Trigger;->isContinuous()Z

    move-result v24

    .line 227
    .local v24, "continuous":Z
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getTrigger()Lcom/igaworks/adbrix/model/Trigger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Trigger;->getIntervalMSec()J

    move-result-wide v42

    .line 229
    .local v42, "interval":J
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ADBrixManager > Engagement Continuous : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", interval : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v42

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v44

    .line 234
    .local v44, "intervalDate":Ljava/util/Calendar;
    if-eqz p5, :cond_1c

    .line 235
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 244
    :goto_b
    new-instance v6, Ljava/util/Date;

    invoke-virtual/range {v44 .. v44}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getTrigger()Lcom/igaworks/adbrix/model/Trigger;

    move-result-object v11

    invoke-virtual {v11}, Lcom/igaworks/adbrix/model/Trigger;->getIntervalMSec()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 247
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ADBrixManager > Engagement Date For Interval : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v44 .. v44}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/igaworks/model/ActivityCounter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    .local v12, "lastCounter":Lcom/igaworks/model/ActivityCounter;
    const/16 v47, 0x0

    .line 254
    .local v47, "lastCounterCalendar":Ljava/util/Calendar;
    :try_start_2
    sget-object v6, Lcom/igaworks/dao/CounterDAOForCPEActivity;->DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v12}, Lcom/igaworks/model/ActivityCounter;->getUpdateDatetime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v48

    .line 255
    .local v48, "lastCounterDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v47

    .line 256
    invoke-virtual/range {v47 .. v48}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 269
    .end local v48    # "lastCounterDate":Ljava/util/Date;
    :goto_c
    :try_start_3
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ADBrixManager > Engagement Last Count Date : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v47 .. v47}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    const-wide/16 v14, 0x0

    cmp-long v6, v42, v14

    if-lez v6, :cond_1d

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    if-eqz p5, :cond_1b

    move-object/from16 v35, p5

    .end local v35    # "currentDate":Ljava/util/Calendar;
    :cond_1b
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getTrigger()Lcom/igaworks/adbrix/model/Trigger;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v47

    invoke-static {v0, v1, v2, v6}, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler;->checkResetData(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/igaworks/adbrix/model/Trigger;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 274
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Engagement failed by interval"

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    move-object/from16 v11, v30

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move-object/from16 v17, p5

    .line 275
    invoke-virtual/range {v11 .. v17}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->updateNoCountingDateUpdated(Lcom/igaworks/model/ActivityCounter;IIIILjava/util/Calendar;)V

    goto/16 :goto_0

    .line 237
    .end local v12    # "lastCounter":Lcom/igaworks/model/ActivityCounter;
    .end local v47    # "lastCounterCalendar":Ljava/util/Calendar;
    .restart local v35    # "currentDate":Ljava/util/Calendar;
    :cond_1c
    const/4 v6, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 238
    const/4 v6, 0x2

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 239
    const/4 v6, 0x5

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 240
    const/16 v6, 0xb

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v10}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_b

    .line 257
    .restart local v12    # "lastCounter":Lcom/igaworks/model/ActivityCounter;
    .restart local v47    # "lastCounterCalendar":Ljava/util/Calendar;
    :catch_1
    move-exception v37

    .line 258
    .local v37, "e":Ljava/text/ParseException;
    invoke-virtual/range {v37 .. v37}, Ljava/text/ParseException;->printStackTrace()V

    .line 259
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v47

    .line 260
    const/4 v6, 0x1

    invoke-virtual {v12}, Lcom/igaworks/model/ActivityCounter;->getYear()I

    move-result v11

    move-object/from16 v0, v47

    invoke-virtual {v0, v6, v11}, Ljava/util/Calendar;->set(II)V

    .line 261
    const/4 v6, 0x2

    invoke-virtual {v12}, Lcom/igaworks/model/ActivityCounter;->getMonth()I

    move-result v11

    move-object/from16 v0, v47

    invoke-virtual {v0, v6, v11}, Ljava/util/Calendar;->set(II)V

    .line 262
    const/4 v6, 0x5

    invoke-virtual {v12}, Lcom/igaworks/model/ActivityCounter;->getDay()I

    move-result v11

    move-object/from16 v0, v47

    invoke-virtual {v0, v6, v11}, Ljava/util/Calendar;->set(II)V

    .line 263
    const/16 v6, 0xb

    invoke-virtual {v12}, Lcom/igaworks/model/ActivityCounter;->getHour()I

    move-result v11

    move-object/from16 v0, v47

    invoke-virtual {v0, v6, v11}, Ljava/util/Calendar;->set(II)V

    .line 264
    const/16 v6, 0xc

    const/4 v11, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v6, v11}, Ljava/util/Calendar;->set(II)V

    .line 265
    const/16 v6, 0xd

    const/4 v11, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v6, v11}, Ljava/util/Calendar;->set(II)V

    .line 266
    const/16 v6, 0xe

    const/4 v11, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v6, v11}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_c

    .line 280
    .end local v35    # "currentDate":Ljava/util/Calendar;
    .end local v37    # "e":Ljava/text/ParseException;
    :cond_1d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    .line 282
    .local v25, "continuousCalendar":Ljava/util/Calendar;
    if-nez p5, :cond_1f

    .line 283
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 291
    :goto_d
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getTrigger()Lcom/igaworks/adbrix/model/Trigger;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler;->calculateIntervalDate(Lcom/igaworks/adbrix/model/Trigger;Ljava/util/Calendar;)V

    .line 292
    new-instance v6, Ljava/util/Date;

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    sub-long v14, v14, v42

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 295
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v33

    .line 298
    .local v33, "currentCalendar":Ljava/util/Calendar;
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/igaworks/model/ActivityCounter;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 301
    .local v28, "counter":Lcom/igaworks/model/ActivityCounter;
    const-wide/16 v14, 0x0

    cmp-long v11, v42, v14

    if-lez v11, :cond_21

    if-eqz v24, :cond_21

    .line 304
    :try_start_4
    sget-object v11, Lcom/igaworks/dao/CounterDAOForCPEActivity;->DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getNoCountingUpdateDatetime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v34

    .line 305
    .local v34, "currentCalendarDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v33

    .line 306
    invoke-virtual/range {v33 .. v34}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 314
    .end local v34    # "currentCalendarDate":Ljava/util/Date;
    :goto_f
    :try_start_5
    const-string v11, "IGAW_QA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ADBrixManager > Engagement continuous check start : target date = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\ncurrent date = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 315
    invoke-virtual/range {v33 .. v33}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    .line 314
    move-object/from16 v0, p0

    invoke-static {v0, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 321
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Engagement failed by continuous"

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 322
    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getYearUpdated()I

    move-result v14

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getMonthUpdated()I

    move-result v15

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getDayUpdated()I

    move-result v16

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getHourUpdated()I

    move-result v17

    move-object/from16 v13, v30

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    invoke-virtual/range {v13 .. v19}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->removeCounterLessThanDate(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 348
    .end local v28    # "counter":Lcom/igaworks/model/ActivityCounter;
    :cond_1e
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ADBrixManager > Engagement count check : target Count = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getTrigger()Lcom/igaworks/adbrix/model/Trigger;

    move-result-object v13

    invoke-virtual {v13}, Lcom/igaworks/adbrix/model/Trigger;->getCount()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", current count = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    const/4 v6, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v7, v6, :cond_22

    const/4 v6, 0x2

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v8, v6, :cond_22

    const/4 v6, 0x5

    .line 354
    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v9, v6, :cond_22

    const/16 v6, 0xb

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v10, v6, :cond_22

    .line 355
    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->increment(Lcom/igaworks/model/ActivityCounter;)V

    .line 356
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Engagement count increased"

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    :goto_10
    add-int/lit8 v23, v23, 0x1

    .line 364
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getTrigger()Lcom/igaworks/adbrix/model/Trigger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Trigger;->getCount()I

    move-result v6

    move/from16 v0, v23

    if-lt v0, v6, :cond_23

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v27

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler;->handleRewardSchedule(Landroid/content/Context;Lcom/igaworks/adbrix/model/Engagement;Ljava/util/ArrayList;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;)V

    .line 378
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->removeCounter(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Engagement completed"

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 285
    .end local v33    # "currentCalendar":Ljava/util/Calendar;
    :cond_1f
    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 286
    const/4 v6, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 287
    const/4 v6, 0x5

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 288
    const/16 v6, 0xb

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v10}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_d

    .line 307
    .restart local v28    # "counter":Lcom/igaworks/model/ActivityCounter;
    .restart local v33    # "currentCalendar":Ljava/util/Calendar;
    :catch_2
    move-exception v37

    .line 308
    .restart local v37    # "e":Ljava/text/ParseException;
    const/4 v11, 0x1

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getYearUpdated()I

    move-result v13

    move-object/from16 v0, v33

    invoke-virtual {v0, v11, v13}, Ljava/util/Calendar;->set(II)V

    .line 309
    const/4 v11, 0x2

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getMonthUpdated()I

    move-result v13

    move-object/from16 v0, v33

    invoke-virtual {v0, v11, v13}, Ljava/util/Calendar;->set(II)V

    .line 310
    const/4 v11, 0x5

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getDayUpdated()I

    move-result v13

    move-object/from16 v0, v33

    invoke-virtual {v0, v11, v13}, Ljava/util/Calendar;->set(II)V

    .line 311
    const/16 v11, 0xb

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getHourUpdated()I

    move-result v13

    move-object/from16 v0, v33

    invoke-virtual {v0, v11, v13}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_f

    .line 325
    .end local v37    # "e":Ljava/text/ParseException;
    :cond_20
    const-string v11, "IGAW_QA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ADBrixManager > Engagement current count : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getCounter()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v13, v14, v15}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 326
    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getCounter()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v11

    add-int v23, v23, v11

    .line 329
    :try_start_6
    sget-object v11, Lcom/igaworks/dao/CounterDAOForCPEActivity;->DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getNoCountingUpdateDatetime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    .line 330
    .local v26, "continuousCalendarDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    .line 331
    invoke-virtual/range {v25 .. v26}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 338
    .end local v26    # "continuousCalendarDate":Ljava/util/Date;
    :goto_11
    :try_start_7
    new-instance v11, Ljava/util/Date;

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    sub-long v14, v14, v42

    invoke-direct {v11, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto/16 :goto_e

    .line 332
    :catch_3
    move-exception v37

    .line 333
    .restart local v37    # "e":Ljava/text/ParseException;
    const/4 v11, 0x1

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getYear()I

    move-result v13

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v13}, Ljava/util/Calendar;->set(II)V

    .line 334
    const/4 v11, 0x2

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getMonth()I

    move-result v13

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v13}, Ljava/util/Calendar;->set(II)V

    .line 335
    const/4 v11, 0x5

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getDay()I

    move-result v13

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v13}, Ljava/util/Calendar;->set(II)V

    .line 336
    const/16 v11, 0xb

    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getHour()I

    move-result v13

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v13}, Ljava/util/Calendar;->set(II)V

    goto :goto_11

    .line 343
    .end local v37    # "e":Ljava/text/ParseException;
    :cond_21
    invoke-virtual/range {v28 .. v28}, Lcom/igaworks/model/ActivityCounter;->getCounter()I

    move-result v11

    add-int v23, v23, v11

    goto/16 :goto_e

    .end local v28    # "counter":Lcom/igaworks/model/ActivityCounter;
    :cond_22
    move-object/from16 v13, v30

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    .line 358
    invoke-virtual/range {v13 .. v19}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->insertCounter(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Engagement counter row inserted"

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 382
    :cond_23
    invoke-virtual/range {v38 .. v38}, Lcom/igaworks/adbrix/model/Engagement;->getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/EngagementDisplay;->isProgressShow()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 384
    move/from16 v22, v23

    .line 386
    .local v22, "cCnt":I
    new-instance v6, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;

    move-object/from16 v0, v38

    move/from16 v1, v22

    move-object/from16 v2, p0

    invoke-direct {v6, v0, v1, v2}, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$2;-><init>(Lcom/igaworks/adbrix/model/Engagement;ILandroid/content/Context;)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 405
    .end local v7    # "year":I
    .end local v8    # "month":I
    .end local v9    # "day":I
    .end local v10    # "hour":I
    .end local v12    # "lastCounter":Lcom/igaworks/model/ActivityCounter;
    .end local v22    # "cCnt":I
    .end local v23    # "cnt":I
    .end local v24    # "continuous":Z
    .end local v25    # "continuousCalendar":Ljava/util/Calendar;
    .end local v31    # "counterList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/ActivityCounter;>;"
    .end local v33    # "currentCalendar":Ljava/util/Calendar;
    .end local v42    # "interval":J
    .end local v44    # "intervalDate":Ljava/util/Calendar;
    .end local v47    # "lastCounterCalendar":Ljava/util/Calendar;
    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v27

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler;->handleRewardSchedule(Landroid/content/Context;Lcom/igaworks/adbrix/model/Engagement;Ljava/util/ArrayList;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;)V

    .line 418
    const-string v6, "IGAW_QA"

    const-string v11, "ADBrixManager > Engagement completed without count check"

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 422
    :cond_25
    const-string v6, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ADBrixManager > Engagement check : current engagement group/activity = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " / "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " is Not Matched"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v6, v11, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1
.end method

.method private static checkResetData(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/igaworks/adbrix/model/Trigger;)Z
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentCalendar"    # Ljava/util/Calendar;
    .param p2, "lastCounterCalendar"    # Ljava/util/Calendar;
    .param p3, "trigger"    # Lcom/igaworks/adbrix/model/Trigger;

    .prologue
    .line 436
    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/adbrix/model/Trigger;->getResetType()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 438
    const/16 v22, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .local v7, "cMonth":I
    const/16 v22, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .local v9, "cWeek":I
    const/16 v22, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .local v4, "cDay":I
    const/16 v22, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 439
    .local v5, "cHour":I
    const/16 v22, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .local v6, "cMin":I
    const/16 v22, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 440
    .local v8, "cSec":I
    const/16 v22, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .local v15, "lMonth":I
    const/16 v22, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .local v17, "lWeek":I
    const/16 v22, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .local v12, "lDay":I
    const/16 v22, 0xb

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 441
    .local v13, "lHour":I
    const/16 v22, 0xc

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .local v14, "lMin":I
    const/16 v22, 0xd

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 443
    .local v16, "lSec":I
    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/adbrix/model/Trigger;->getResetType()Ljava/lang/String;

    move-result-object v22

    const-string v23, "daily"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 444
    const-string v22, "IGAW_QA"

    const-string v23, "ADBrixManager > Engagement check reset data RESET_DAILY"

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 446
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 447
    .local v10, "cTime":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 448
    .local v18, "lTime":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/adbrix/model/Trigger;->getResetData()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "0000"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 450
    .local v20, "rTime":I
    move/from16 v0, v18

    if-ge v10, v0, :cond_0

    .line 451
    const-string v22, "IGAW_QA"

    const-string v23, "Add Current/ResetTime +240000"

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 452
    const v22, 0x3a980

    add-int v10, v10, v22

    .line 453
    const v22, 0x3a980

    add-int v20, v20, v22

    .line 456
    :cond_0
    const-string v22, "IGAW_QA"

    const-string v23, "cTime : %d, lTime : %d, rTime : %d"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 458
    move/from16 v0, v20

    if-lt v10, v0, :cond_5

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_5

    .line 459
    const/16 v22, 0x1

    .line 503
    .end local v4    # "cDay":I
    .end local v5    # "cHour":I
    .end local v6    # "cMin":I
    .end local v7    # "cMonth":I
    .end local v8    # "cSec":I
    .end local v9    # "cWeek":I
    .end local v10    # "cTime":I
    .end local v12    # "lDay":I
    .end local v13    # "lHour":I
    .end local v14    # "lMin":I
    .end local v15    # "lMonth":I
    .end local v16    # "lSec":I
    .end local v17    # "lWeek":I
    .end local v18    # "lTime":I
    .end local v20    # "rTime":I
    :goto_0
    return v22

    .line 462
    .restart local v4    # "cDay":I
    .restart local v5    # "cHour":I
    .restart local v6    # "cMin":I
    .restart local v7    # "cMonth":I
    .restart local v8    # "cSec":I
    .restart local v9    # "cWeek":I
    .restart local v12    # "lDay":I
    .restart local v13    # "lHour":I
    .restart local v14    # "lMin":I
    .restart local v15    # "lMonth":I
    .restart local v16    # "lSec":I
    .restart local v17    # "lWeek":I
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/adbrix/model/Trigger;->getResetType()Ljava/lang/String;

    move-result-object v22

    const-string v23, "weekly"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 463
    const-string v22, "IGAW_QA"

    const-string v23, "ADBrixManager > Engagement check reset data RESET_WEEKLY"

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 465
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 466
    .local v10, "cTime":J
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 467
    .local v18, "lTime":J
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "000000"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 469
    .local v20, "rTime":J
    cmp-long v22, v10, v18

    if-gez v22, :cond_2

    .line 470
    const-string v22, "IGAW_QA"

    const-string v23, "Add Current/ResetTime +6000000"

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 471
    const-wide/32 v22, 0x5b8d80

    add-long v10, v10, v22

    .line 472
    const-wide/32 v22, 0x5b8d80

    add-long v20, v20, v22

    .line 475
    :cond_2
    const-string v22, "IGAW_QA"

    const-string v23, "cTime : %d, lTime : %d, rTime : %d"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 477
    cmp-long v22, v10, v20

    if-ltz v22, :cond_5

    cmp-long v22, v18, v20

    if-gtz v22, :cond_5

    .line 478
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 481
    .end local v10    # "cTime":J
    .end local v18    # "lTime":J
    .end local v20    # "rTime":J
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/igaworks/adbrix/model/Trigger;->getResetType()Ljava/lang/String;

    move-result-object v22

    const-string v23, "monthly"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 482
    const-string v22, "IGAW_QA"

    const-string v23, "ADBrixManager > Engagement check reset data RESET_MONTHLY"

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 484
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 485
    .restart local v10    # "cTime":J
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 486
    .restart local v18    # "lTime":J
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "00000000"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 488
    .restart local v20    # "rTime":J
    cmp-long v22, v10, v18

    if-gez v22, :cond_4

    .line 489
    const-string v22, "IGAW_QA"

    const-string v23, "Add Current/ResetTime +1200000000"

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 490
    const-wide/32 v22, 0x47868c00

    add-long v10, v10, v22

    .line 491
    const-wide/32 v22, 0x47868c00

    add-long v20, v20, v22

    .line 494
    :cond_4
    const-string v22, "IGAW_QA"

    const-string v23, "cTime : %d, lTime : %d, rTime : %d"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 496
    cmp-long v22, v10, v20

    if-ltz v22, :cond_5

    cmp-long v22, v18, v20

    if-gtz v22, :cond_5

    .line 497
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 501
    .end local v10    # "cTime":J
    .end local v18    # "lTime":J
    .end local v20    # "rTime":J
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 503
    .end local v4    # "cDay":I
    .end local v5    # "cHour":I
    .end local v6    # "cMin":I
    .end local v7    # "cMonth":I
    .end local v8    # "cSec":I
    .end local v9    # "cWeek":I
    .end local v12    # "lDay":I
    .end local v13    # "lHour":I
    .end local v14    # "lMin":I
    .end local v15    # "lMonth":I
    .end local v16    # "lSec":I
    .end local v17    # "lWeek":I
    :cond_6
    const/16 v22, 0x1

    goto/16 :goto_0
.end method

.method private static handleRewardSchedule(Landroid/content/Context;Lcom/igaworks/adbrix/model/Engagement;Ljava/util/ArrayList;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/igaworks/adbrix/model/Engagement;
    .param p3, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p4, "tracerInstance"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/adbrix/model/Engagement;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/igaworks/core/RequestParameter;",
            "Lcom/igaworks/adbrix/core/ADBrixHttpManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "conversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 566
    const-string v1, "IGAW_QA"

    const-string v2, "ADBrixManager > handleRewardSchedule start"

    const/4 v3, 0x3

    invoke-static {p0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 568
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v5, "conversionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/igaworks/adbrix/model/Engagement;->getConversionKey()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    new-instance v4, Lcom/igaworks/util/bolts_task/Capture;

    invoke-direct {v4, v0}, Lcom/igaworks/util/bolts_task/Capture;-><init>(Ljava/lang/Object;)V

    .line 572
    .local v4, "activityParam":Lcom/igaworks/util/bolts_task/Capture;, "Lcom/igaworks/util/bolts_task/Capture<Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;>;"
    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$5;

    invoke-direct {v1, p0}, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$4;

    invoke-direct {v1, v4, p0}, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$4;-><init>(Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;)V

    .line 576
    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v6

    new-instance v0, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$3;

    move-object v1, p4

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adbrix/cpe/EngagementCompletionHandler$3;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Lcom/igaworks/util/bolts_task/Capture;Ljava/util/ArrayList;)V

    .line 581
    invoke-virtual {v6, v0}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    .line 593
    return-void
.end method
