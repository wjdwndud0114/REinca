.class public Lcom/igaworks/adbrix/cpe/PromotionHandler;
.super Ljava/lang/Object;
.source "PromotionHandler.java"


# static fields
.field public static dialogOpenner:Landroid/app/Activity;

.field public static nextCampaigns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static onPlayBtnClickListener:Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;

.field public static promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

.field private static promotionDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/Dialog;

    .prologue
    .line 32
    sput-object p0, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static checkAvailablePromotion(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;)V
    .locals 37
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "parameter"    # Lcom/igaworks/core/RequestParameter;

    .prologue
    .line 42
    new-instance v15, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v15, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .local v15, "handler":Landroid/os/Handler;
    :try_start_0
    sget-object v4, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v4

    if-nez v4, :cond_2

    .line 48
    :cond_0
    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    if-eqz v4, :cond_1

    .line 49
    new-instance v4, Lcom/igaworks/adbrix/cpe/PromotionHandler$1;

    invoke-direct {v4}, Lcom/igaworks/adbrix/cpe/PromotionHandler$1;-><init>()V

    invoke-virtual {v15, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    const/16 v16, 0x0

    .line 63
    .local v16, "hasMatchedSpaceKey":Z
    sget-object v4, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/Schedule;->getSpaces()Ljava/util/List;

    move-result-object v28

    .line 65
    .local v28, "spaces":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Space;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_3
    :goto_1
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/igaworks/adbrix/model/Space;

    .line 67
    .local v27, "space":Lcom/igaworks/adbrix/model/Space;
    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    const/16 v16, 0x1

    .line 72
    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getCampaignList()Ljava/util/List;

    move-result-object v12

    .line 73
    .local v12, "campaignKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/Schedule;->getPromotions()Ljava/util/List;

    move-result-object v23

    .line 74
    .local v23, "promotionList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Promotion;>;"
    const/16 v21, 0x0

    .line 75
    .local v21, "primaryCampaignKey":I
    const/4 v10, 0x0

    .line 77
    .local v10, "alternativeCampaignKey":I
    invoke-static {}, Lcom/igaworks/dao/NotAvailableCampaignDAO;->getInstance()Lcom/igaworks/dao/NotAvailableCampaignDAO;

    move-result-object v19

    .line 78
    .local v19, "nacDao":Lcom/igaworks/dao/NotAvailableCampaignDAO;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/igaworks/dao/NotAvailableCampaignDAO;->getNotAvailableCampaign(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v20

    .line 79
    .local v20, "notAvailableCampaigns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    .line 80
    .local v17, "hasVisibleCampaign":Z
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v32, "visibleCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    .line 83
    .local v26, "setNextPromotion":Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_4
    :goto_2
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 86
    .local v11, "campaignKey":I
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_5
    :goto_3
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/igaworks/adbrix/model/Promotion;

    .line 88
    .local v22, "promotion":Lcom/igaworks/adbrix/model/Promotion;
    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v4

    if-ne v4, v11, :cond_5

    .line 90
    const-string v5, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADBrixManager > All Space Segment size =  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceSegments()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_e

    const-string v4, "null"

    .line 91
    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    .line 90
    move-object/from16 v0, p0

    invoke-static {v0, v5, v4, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceSegments()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 96
    const/4 v13, 0x0

    .line 98
    .local v13, "currentSegment":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Segment;>;"
    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/igaworks/adbrix/model/SpaceSegment;

    .line 100
    .local v24, "sSeg":Lcom/igaworks/adbrix/model/SpaceSegment;
    invoke-virtual/range {v24 .. v24}, Lcom/igaworks/adbrix/model/SpaceSegment;->getCampaignType()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignType()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 101
    invoke-virtual/range {v24 .. v24}, Lcom/igaworks/adbrix/model/SpaceSegment;->getSegments()Ljava/util/List;

    move-result-object v13

    .line 108
    .end local v24    # "sSeg":Lcom/igaworks/adbrix/model/SpaceSegment;
    :cond_7
    const-string v5, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADBrixManager > Space Segment size =  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v13, :cond_f

    const-string v4, "null"

    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v5, v4, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    if-eqz v13, :cond_16

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_16

    .line 113
    const-string v4, "IGAW_QA"

    const-string v5, "ADBrixManager > Space Segment Check Start."

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    const/16 v18, 0x1

    .line 116
    .local v18, "isMatch":Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_6
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/igaworks/adbrix/model/Segment;

    .line 119
    .local v25, "segment":Lcom/igaworks/adbrix/model/Segment;
    const/4 v6, 0x2

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getKey()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-static/range {v4 .. v9}, Lcom/igaworks/adbrix/cpe/ConditionChecker;->getUserValue(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    .line 121
    .local v30, "value":Ljava/lang/Object;
    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getVal()Ljava/lang/Object;

    move-result-object v29

    .line 123
    .local v29, "target":Ljava/lang/Object;
    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getVal()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Collection;

    if-eqz v4, :cond_9

    .line 125
    move-object/from16 v0, v30

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_8

    .line 126
    const/16 v30, 0x0

    .line 129
    .end local v30    # "value":Ljava/lang/Object;
    :cond_8
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v31, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    move-object/from16 v30, v31

    .line 135
    .end local v31    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    if-eqz v29, :cond_a

    if-eqz v30, :cond_a

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getOp()Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v6, "app"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v6, "package"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    .line 135
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v5, v1, v2, v4}, Lcom/igaworks/adbrix/cpe/ConditionChecker;->isMatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_13

    .line 138
    :cond_a
    const-string v4, "IGAW_QA"

    const-string v5, "ADBrixManager > Space Segment check failed : "

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 139
    const-string v5, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getOp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v29, :cond_11

    const-string v4, "null"

    .line 140
    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", UserValue = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v30, :cond_12

    const-string v4, "null"

    :goto_9
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    .line 139
    move-object/from16 v0, p0

    invoke-static {v0, v5, v4, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    const/16 v18, 0x0

    .line 150
    .end local v25    # "segment":Lcom/igaworks/adbrix/model/Segment;
    .end local v29    # "target":Ljava/lang/Object;
    :cond_b
    if-eqz v18, :cond_5

    .line 162
    .end local v13    # "currentSegment":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Segment;>;"
    .end local v18    # "isMatch":Z
    :cond_c
    :goto_a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getTargetAppScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getTargetAppScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_17

    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->isIsFilterAlreadyInstalled()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 163
    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getTargetAppScheme()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/igaworks/adbrix/cpe/ConditionChecker;->checkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 166
    :cond_d
    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADBrixManager > not available campaign - promotion skipped : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 332
    .end local v10    # "alternativeCampaignKey":I
    .end local v11    # "campaignKey":I
    .end local v12    # "campaignKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "hasMatchedSpaceKey":Z
    .end local v17    # "hasVisibleCampaign":Z
    .end local v19    # "nacDao":Lcom/igaworks/dao/NotAvailableCampaignDAO;
    .end local v20    # "notAvailableCampaigns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local v21    # "primaryCampaignKey":I
    .end local v22    # "promotion":Lcom/igaworks/adbrix/model/Promotion;
    .end local v23    # "promotionList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Promotion;>;"
    .end local v26    # "setNextPromotion":Z
    .end local v27    # "space":Lcom/igaworks/adbrix/model/Space;
    .end local v28    # "spaces":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Space;>;"
    .end local v32    # "visibleCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v14

    .line 333
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 91
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v10    # "alternativeCampaignKey":I
    .restart local v11    # "campaignKey":I
    .restart local v12    # "campaignKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "hasMatchedSpaceKey":Z
    .restart local v17    # "hasVisibleCampaign":Z
    .restart local v19    # "nacDao":Lcom/igaworks/dao/NotAvailableCampaignDAO;
    .restart local v20    # "notAvailableCampaigns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .restart local v21    # "primaryCampaignKey":I
    .restart local v22    # "promotion":Lcom/igaworks/adbrix/model/Promotion;
    .restart local v23    # "promotionList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Promotion;>;"
    .restart local v26    # "setNextPromotion":Z
    .restart local v27    # "space":Lcom/igaworks/adbrix/model/Space;
    .restart local v28    # "spaces":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Space;>;"
    .restart local v32    # "visibleCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_e
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    .line 108
    .restart local v13    # "currentSegment":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Segment;>;"
    :cond_f
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_5

    .line 136
    .restart local v18    # "isMatch":Z
    .restart local v25    # "segment":Lcom/igaworks/adbrix/model/Segment;
    .restart local v29    # "target":Ljava/lang/Object;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 140
    :cond_11
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    :cond_12
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    .line 144
    :cond_13
    const-string v5, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADBrixManager > Space Segment check passed : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 145
    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getOp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v29, :cond_14

    const-string v4, "null"

    :goto_b
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", UserValue = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v30, :cond_15

    const-string v4, "null"

    .line 146
    :goto_c
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    .line 144
    move-object/from16 v0, p0

    invoke-static {v0, v5, v4, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 145
    :cond_14
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 146
    :cond_15
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 155
    .end local v18    # "isMatch":Z
    .end local v25    # "segment":Lcom/igaworks/adbrix/model/Segment;
    .end local v29    # "target":Ljava/lang/Object;
    :cond_16
    const-string v4, "IGAW_QA"

    const-string v5, "ADBrixManager > Space Check : Segment not exist"

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_a

    .line 172
    .end local v13    # "currentSegment":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Segment;>;"
    :cond_17
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getSegments()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 178
    const-string v4, "IGAW_QA"

    const-string v5, "ADBrixManager > Promotion Segment Check Start"

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    const/16 v18, 0x1

    .line 181
    .restart local v18    # "isMatch":Z
    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_d
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/igaworks/adbrix/model/Segment;

    .line 184
    .restart local v25    # "segment":Lcom/igaworks/adbrix/model/Segment;
    const/4 v6, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getKey()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-static/range {v4 .. v9}, Lcom/igaworks/adbrix/cpe/ConditionChecker;->getUserValue(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    .line 186
    .restart local v30    # "value":Ljava/lang/Object;
    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getVal()Ljava/lang/Object;

    move-result-object v29

    .line 188
    .restart local v29    # "target":Ljava/lang/Object;
    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getVal()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Collection;

    if-eqz v4, :cond_19

    .line 190
    move-object/from16 v0, v30

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_18

    .line 191
    const/16 v30, 0x0

    .line 194
    .end local v30    # "value":Ljava/lang/Object;
    :cond_18
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .restart local v31    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    move-object/from16 v30, v31

    .line 200
    .end local v31    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_19
    if-eqz v29, :cond_1a

    if-eqz v30, :cond_1a

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getOp()Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v6, "app"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v6, "package"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x1

    .line 200
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v5, v1, v2, v4}, Lcom/igaworks/adbrix/cpe/ConditionChecker;->isMatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 203
    :cond_1a
    const-string v4, "IGAW_QA"

    const-string v5, "ADBrixManager > Promotion Segment check failed : "

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 204
    const-string v5, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getOp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v29, :cond_1d

    const-string v4, "null"

    :goto_f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", UserValue = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v30, :cond_1e

    const-string v4, "null"

    .line 205
    :goto_10
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    .line 204
    move-object/from16 v0, p0

    invoke-static {v0, v5, v4, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    const/16 v18, 0x0

    .line 207
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/igaworks/adbrix/model/Promotion;->setVisible(Z)V

    .line 217
    .end local v25    # "segment":Lcom/igaworks/adbrix/model/Segment;
    .end local v29    # "target":Ljava/lang/Object;
    :cond_1b
    if-nez v18, :cond_20

    .line 218
    const-string v4, "IGAW_QA"

    const-string v5, "ADBrixManager > not matched promotion"

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 220
    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 201
    .restart local v25    # "segment":Lcom/igaworks/adbrix/model/Segment;
    .restart local v29    # "target":Ljava/lang/Object;
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_e

    .line 204
    :cond_1d
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    .line 205
    :cond_1e
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    .line 211
    :cond_1f
    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADBrixManager > Promotion Segment check passed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 212
    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Lcom/igaworks/adbrix/model/Segment;->getOp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", UserValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 211
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_d

    .line 225
    .end local v25    # "segment":Lcom/igaworks/adbrix/model/Segment;
    .end local v29    # "target":Ljava/lang/Object;
    :cond_20
    const-string v4, "IGAW_QA"

    const-string v5, "ADBrixManager > matched promotion"

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    const/16 v17, 0x1

    .line 229
    if-nez v21, :cond_25

    .line 231
    if-nez v10, :cond_21

    .line 232
    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v10

    .line 235
    :cond_21
    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v5

    if-ne v4, v5, :cond_24

    .line 236
    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 238
    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v5, v4, :cond_22

    .line 240
    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_22
    :goto_11
    if-lez v21, :cond_4

    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 251
    :cond_23
    const/16 v26, 0x1

    goto/16 :goto_2

    .line 244
    :cond_24
    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 246
    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v21

    goto :goto_11

    .line 256
    :cond_25
    if-eqz v26, :cond_4

    .line 258
    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 269
    .end local v18    # "isMatch":Z
    :cond_26
    const-string v4, "IGAW_QA"

    const-string v5, "ADBrixManager > Promotion Check : Segment not exist"

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 279
    .end local v11    # "campaignKey":I
    .end local v22    # "promotion":Lcom/igaworks/adbrix/model/Promotion;
    :cond_27
    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 281
    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->nextCampaigns:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_28
    if-eqz v17, :cond_2b

    .line 286
    const-string v4, "IGAW_QA"

    const-string v5, "ADBrixManager > has visible promotion"

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 287
    if-nez v21, :cond_29

    if-lez v10, :cond_29

    .line 288
    move/from16 v21, v10

    .line 291
    :cond_29
    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    if-eqz v4, :cond_2a

    .line 292
    new-instance v4, Lcom/igaworks/adbrix/cpe/PromotionHandler$2;

    invoke-direct {v4}, Lcom/igaworks/adbrix/cpe/PromotionHandler$2;-><init>()V

    invoke-virtual {v15, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    :cond_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adbrix/cpe/PromotionHandler;->showPromotion(Landroid/content/Context;Lcom/igaworks/adbrix/model/Space;Ljava/util/ArrayList;I)V

    goto/16 :goto_1

    .line 304
    :cond_2b
    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    if-eqz v4, :cond_2c

    .line 305
    new-instance v4, Lcom/igaworks/adbrix/cpe/PromotionHandler$3;

    invoke-direct {v4}, Lcom/igaworks/adbrix/cpe/PromotionHandler$3;-><init>()V

    invoke-virtual {v15, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    :cond_2c
    const-string v4, "IGAW_QA"

    const-string v5, "ADBrixManager > Promotion Check : not found available campaign"

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 320
    .end local v10    # "alternativeCampaignKey":I
    .end local v12    # "campaignKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "hasVisibleCampaign":Z
    .end local v19    # "nacDao":Lcom/igaworks/dao/NotAvailableCampaignDAO;
    .end local v20    # "notAvailableCampaigns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local v21    # "primaryCampaignKey":I
    .end local v23    # "promotionList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Promotion;>;"
    .end local v26    # "setNextPromotion":Z
    .end local v27    # "space":Lcom/igaworks/adbrix/model/Space;
    .end local v32    # "visibleCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2d
    if-nez v16, :cond_1

    .line 321
    sget-object v4, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    if-eqz v4, :cond_1

    .line 322
    new-instance v4, Lcom/igaworks/adbrix/cpe/PromotionHandler$4;

    invoke-direct {v4}, Lcom/igaworks/adbrix/cpe/PromotionHandler$4;-><init>()V

    invoke-virtual {v15, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static closePromotion()V
    .locals 2

    .prologue
    .line 406
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 407
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/igaworks/adbrix/cpe/PromotionHandler$6;

    invoke-direct {v1}, Lcom/igaworks/adbrix/cpe/PromotionHandler$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 429
    return-void
.end method

.method private static showPromotion(Landroid/content/Context;Lcom/igaworks/adbrix/model/Space;Ljava/util/ArrayList;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "space"    # Lcom/igaworks/adbrix/model/Space;
    .param p3, "primaryCampaignKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/igaworks/adbrix/model/Space;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 340
    .local p2, "visibleCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 342
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;

    invoke-direct {v1, p3, p2, p1, p0}, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;-><init>(ILjava/util/ArrayList;Lcom/igaworks/adbrix/model/Space;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    return-void
.end method
