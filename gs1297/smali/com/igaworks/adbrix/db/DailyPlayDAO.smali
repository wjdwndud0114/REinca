.class public Lcom/igaworks/adbrix/db/DailyPlayDAO;
.super Ljava/lang/Object;
.source "DailyPlayDAO.java"


# static fields
.field private static final DAILYPLAY_SP_NAME:Ljava/lang/String; = "daily_play_sp"

.field private static final LASTEST_CONVERION_KEY:Ljava/lang/String; = "LastConversionKey"

.field private static final LAST_CONVERSION_COMPLETE_DATE_KEY:Ljava/lang/String; = "previous_date"

.field private static final LAST_ON_START_SESSION_DATETIME:Ljava/lang/String; = "lastOnStartSessionTime"

.field private static final PENDING_CONVERSION:Ljava/lang/String; = "PendingConversionKey"

.field private static final PLAY_TIME:Ljava/lang/String; = "RequiredPlayTime"

.field private static final WAITING_TIME:Ljava/lang/String; = "waiting_time"

.field public static sdf:Ljava/text/SimpleDateFormat;

.field private static singleton:Lcom/igaworks/adbrix/db/DailyPlayDAO;


# instance fields
.field isChecking:Z

.field lastConversionKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/igaworks/adbrix/db/DailyPlayDAO;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO;->lastConversionKey:I

    .line 38
    iput-boolean v1, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/adbrix/db/DailyPlayDAO;Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/db/DailyPlayDAO;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method private getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/igaworks/adbrix/db/DailyPlayDAO;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/igaworks/adbrix/db/DailyPlayDAO;->singleton:Lcom/igaworks/adbrix/db/DailyPlayDAO;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/igaworks/adbrix/db/DailyPlayDAO;

    invoke-direct {v0}, Lcom/igaworks/adbrix/db/DailyPlayDAO;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/db/DailyPlayDAO;->singleton:Lcom/igaworks/adbrix/db/DailyPlayDAO;

    .line 47
    :cond_0
    sget-object v0, Lcom/igaworks/adbrix/db/DailyPlayDAO;->singleton:Lcom/igaworks/adbrix/db/DailyPlayDAO;

    return-object v0
.end method

.method private getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v0, "daily_play_sp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canJoinCampaignToday(Landroid/content/Context;)Z
    .locals 44
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    move/from16 v39, v0

    if-eqz v39, :cond_0

    .line 166
    const-string v39, "IGAW_QA"

    const-string v40, "DailyPlay Skip >> Multiple trigger"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    const/4 v11, 0x0

    .line 315
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    .line 313
    :goto_0
    return v11

    .line 169
    :cond_0
    const/16 v39, 0x1

    :try_start_1
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    .line 170
    invoke-virtual/range {p0 .. p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getWaitingTime(Landroid/content/Context;)I

    move-result v38

    .line 171
    .local v38, "waiting_time":I
    invoke-direct/range {p0 .. p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v39

    const-string v40, "previous_date"

    const-string v41, ""

    invoke-interface/range {v39 .. v41}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 174
    .local v24, "lastCoversionDateTime":Ljava/lang/String;
    const-string v39, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_b

    .line 176
    invoke-static/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v33, v0

    .line 177
    .local v33, "referrerKey":I
    if-lez v33, :cond_a

    .line 179
    invoke-static/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/igaworks/core/RequestParameter;->getConversionCache()Ljava/util/ArrayList;

    move-result-object v13

    .line 180
    .local v13, "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 181
    .local v14, "conversionCacheListSize":I
    if-lez v14, :cond_9

    .line 182
    sget-object v39, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual/range {v39 .. v39}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/igaworks/adbrix/model/Schedule;->getReEngagement()Lcom/igaworks/adbrix/model/ReEngagement;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/igaworks/adbrix/model/ReEngagement;->getDailyPlay()Ljava/util/List;

    move-result-object v6

    .line 183
    .local v6, "DailyPlayStepList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/DailyPlay;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 185
    .local v7, "DailyPlayStepListSize":I
    if-lez v7, :cond_8

    .line 187
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v9, "campaignKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v20, 0x1

    .line 189
    .local v20, "isContinueLoop":Z
    move/from16 v26, v33

    .line 190
    .local v26, "nextConversionKey":I
    :cond_1
    :goto_1
    if-eqz v20, :cond_3

    .line 191
    const/16 v20, 0x0

    .line 192
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v7, :cond_1

    .line 193
    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/igaworks/adbrix/model/DailyPlay;

    invoke-virtual/range {v39 .. v39}, Lcom/igaworks/adbrix/model/DailyPlay;->getParentConversionKey()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 194
    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/igaworks/adbrix/model/DailyPlay;

    invoke-virtual/range {v39 .. v39}, Lcom/igaworks/adbrix/model/DailyPlay;->getConversionKey()I

    move-result v26

    .line 195
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const/16 v20, 0x1

    .line 197
    goto :goto_1

    .line 192
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 201
    .end local v17    # "i":I
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 202
    .local v10, "campaignKeyListSize":I
    const/16 v32, -0x1

    .line 203
    .local v32, "recoverLastConversionKey":I
    if-lez v10, :cond_6

    .line 205
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v10, :cond_6

    .line 206
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v37

    .line 207
    .local v37, "targetParentCoversion":I
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_4
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    .line 208
    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 209
    .local v8, "cKey":I
    move/from16 v0, v37

    if-ne v0, v8, :cond_5

    .line 210
    move/from16 v32, v8

    .line 205
    .end local v8    # "cKey":I
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 207
    .restart local v8    # "cKey":I
    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 216
    .end local v8    # "cKey":I
    .end local v17    # "i":I
    .end local v22    # "j":I
    .end local v37    # "targetParentCoversion":I
    :cond_6
    const/16 v39, -0x1

    move/from16 v0, v32

    move/from16 v1, v39

    if-eq v0, v1, :cond_7

    .line 217
    const-string v39, "IGAW_QA"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "DailyPlay Recover >> Last conversion Key = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->setLatestConversionKey(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    const/4 v11, 0x1

    .line 315
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    goto/16 :goto_0

    .line 222
    :cond_7
    :try_start_2
    const-string v39, "IGAW_QA"

    const-string v40, "DailyPlay Skip >> First day app launches, recoverLastConversionKey is null "

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual/range {p0 .. p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->saveLastConversionDateTime(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    const/4 v11, 0x0

    .line 315
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    goto/16 :goto_0

    .line 229
    .end local v9    # "campaignKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "campaignKeyListSize":I
    .end local v20    # "isContinueLoop":Z
    .end local v26    # "nextConversionKey":I
    .end local v32    # "recoverLastConversionKey":I
    :cond_8
    :try_start_3
    const-string v39, "IGAW_QA"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "DailyPlay Skip >> Campaign Size = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual/range {p0 .. p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->saveLastConversionDateTime(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    const/4 v11, 0x0

    .line 315
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    goto/16 :goto_0

    .line 236
    .end local v6    # "DailyPlayStepList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/DailyPlay;>;"
    .end local v7    # "DailyPlayStepListSize":I
    :cond_9
    :try_start_4
    const-string v39, "IGAW_QA"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "DailyPlay Skip >> First day app launches, empty conversion cache"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual/range {p0 .. p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->saveLastConversionDateTime(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    const/4 v11, 0x0

    .line 315
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    goto/16 :goto_0

    .line 241
    .end local v13    # "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "conversionCacheListSize":I
    :cond_a
    :try_start_5
    const-string v39, "IGAW_QA"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "DailyPlay Skip >> Referrer: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 242
    const/4 v11, 0x0

    .line 315
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    goto/16 :goto_0

    .line 247
    .end local v33    # "referrerKey":I
    :cond_b
    if-lez v38, :cond_f

    .line 249
    :try_start_6
    new-instance v28, Ljava/util/Date;

    invoke-direct/range {v28 .. v28}, Ljava/util/Date;-><init>()V

    .line 250
    .local v28, "nowDate":Ljava/util/Date;
    sget-object v39, Lcom/igaworks/adbrix/db/DailyPlayDAO;->sdf:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v23

    .line 251
    .local v23, "lastConversionDate":Ljava/util/Date;
    invoke-virtual/range {v28 .. v28}, Ljava/util/Date;->getTime()J

    move-result-wide v30

    .line 252
    .local v30, "nowTime":J
    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v40

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v18, v40, v42

    .line 253
    .local v18, "expectingTime":J
    cmp-long v39, v30, v18

    if-lez v39, :cond_e

    const/4 v11, 0x1

    .line 254
    .local v11, "canJoinCampaignNow":Z
    :goto_5
    const-string v39, "IGAW_QA"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Now: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " > ExpectingTime: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " >> "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v3, v41

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    if-eqz v11, :cond_c

    .line 256
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->setWaitingTime(Landroid/content/Context;I)V

    .line 258
    :cond_c
    if-nez v11, :cond_d

    .line 259
    const-string v39, "IGAW_QA"

    const-string v40, "Skip DailyPlayCP >> Waiting time not expire"

    const/16 v41, 0x3

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 260
    invoke-virtual/range {p0 .. p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->saveLastConversionDateTime(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 315
    :cond_d
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    goto/16 :goto_0

    .line 253
    .end local v11    # "canJoinCampaignNow":Z
    :cond_e
    const/4 v11, 0x0

    goto :goto_5

    .line 263
    .end local v18    # "expectingTime":J
    .end local v23    # "lastConversionDate":Ljava/util/Date;
    .end local v28    # "nowDate":Ljava/util/Date;
    .end local v30    # "nowTime":J
    :catch_0
    move-exception v16

    .line 264
    .local v16, "e1":Ljava/lang/Exception;
    :try_start_7
    const-string v39, "IGAW_QA"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Error: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v16    # "e1":Ljava/lang/Exception;
    :cond_f
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    .line 270
    .local v25, "lastTimeJoinCp":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v27

    .line 271
    .local v27, "now":Ljava/util/Calendar;
    sget-object v39, Lcom/igaworks/adbrix/db/DailyPlayDAO;->sdf:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v39

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 272
    const/16 v39, 0x5

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v39

    const/16 v40, 0x5

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_10

    const/16 v39, 0x2

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v39

    const/16 v40, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_10

    const/16 v39, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v39

    const/16 v40, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_10

    .line 273
    const-string v39, "IGAW_QA"

    const-string v40, "Skip DailyPlayCP >> Same day"

    const/16 v41, 0x3

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 274
    invoke-virtual/range {p0 .. p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->saveLastConversionDateTime(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 275
    const/4 v11, 0x0

    .line 315
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    goto/16 :goto_0

    .line 279
    :cond_10
    :try_start_8
    invoke-virtual/range {p0 .. p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getPendingConversionKey(Landroid/content/Context;)I

    move-result v29

    .line 281
    .local v29, "pending_CK":I
    if-lez v29, :cond_15

    .line 283
    invoke-static/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/igaworks/core/RequestParameter;->getConversionCache()Ljava/util/ArrayList;

    move-result-object v12

    .line 284
    .local v12, "conversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_11

    .line 285
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->setPendingConversionKey(Landroid/content/Context;I)V

    .line 286
    const/16 v29, -0x1

    .line 289
    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->getDAO(Landroid/content/Context;)Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    move-result-object v36

    .line 290
    .local v36, "retryDao":Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;
    invoke-virtual/range {v36 .. v36}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->getRetryConversions()Ljava/util/List;

    move-result-object v35

    .line 291
    .local v35, "retryConversions":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/RetryCompleteConversion;>;"
    const/16 v21, 0x0

    .line 292
    .local v21, "isOnRetry":Z
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_12
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_13

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/igaworks/adbrix/model/RetryCompleteConversion;

    .line 293
    .local v34, "retry":Lcom/igaworks/adbrix/model/RetryCompleteConversion;
    invoke-virtual/range {v34 .. v34}, Lcom/igaworks/adbrix/model/RetryCompleteConversion;->getConversionKey()I

    move-result v40

    move/from16 v0, v40

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 294
    const/16 v21, 0x1

    .line 298
    .end local v34    # "retry":Lcom/igaworks/adbrix/model/RetryCompleteConversion;
    :cond_13
    const/16 v39, 0x1

    move/from16 v0, v21

    move/from16 v1, v39

    if-ne v0, v1, :cond_14

    .line 299
    invoke-virtual/range {p0 .. p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->saveLastConversionDateTime(Landroid/content/Context;)V

    .line 300
    const-string v39, "IGAW_QA"

    const-string v40, "Skip DailyPlayCP >> Pending CK is on-retry "

    const/16 v41, 0x3

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 301
    const/4 v11, 0x0

    .line 315
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    goto/16 :goto_0

    .line 304
    :cond_14
    const/16 v39, -0x1

    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->setPendingConversionKey(Landroid/content/Context;I)V
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 309
    .end local v12    # "conversionCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "isOnRetry":Z
    .end local v35    # "retryConversions":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/RetryCompleteConversion;>;"
    .end local v36    # "retryDao":Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;
    :cond_15
    const/4 v11, 0x1

    .line 315
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    goto/16 :goto_0

    .line 310
    .end local v24    # "lastCoversionDateTime":Ljava/lang/String;
    .end local v25    # "lastTimeJoinCp":Ljava/util/Calendar;
    .end local v27    # "now":Ljava/util/Calendar;
    .end local v29    # "pending_CK":I
    .end local v38    # "waiting_time":I
    :catch_1
    move-exception v15

    .line 312
    .local v15, "e":Ljava/text/ParseException;
    :try_start_a
    const-string v39, "IGAW_QA"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "DailyPlayDAO >> canJoinCampaignToday Error: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v15}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 313
    const/4 v11, 0x0

    .line 315
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    goto/16 :goto_0

    .end local v15    # "e":Ljava/text/ParseException;
    :catchall_0
    move-exception v39

    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/adbrix/db/DailyPlayDAO;->isChecking:Z

    throw v39
.end method

.method public getLastOnStartSessionDateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastOnStartSessionTime"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatestConversionKey(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 94
    iget v0, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO;->lastConversionKey:I

    if-eq v0, v2, :cond_0

    .line 95
    iget v0, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO;->lastConversionKey:I

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LastConversionKey"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getPendingConversionKey(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PendingConversionKey"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPlayTime(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "RequiredPlayTime"

    const/16 v2, 0x7d0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWaitingTime(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "waiting_time"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public saveLastConversionDateTime(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/adbrix/db/DailyPlayDAO$1;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO$1;-><init>(Lcom/igaworks/adbrix/db/DailyPlayDAO;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public setLastOnStartSessionDateTime(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 322
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    const-string v1, "lastOnStartSessionTime"

    sget-object v2, Lcom/igaworks/adbrix/db/DailyPlayDAO;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 324
    return-void
.end method

.method public setLatestConversionKey(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentCK"    # I

    .prologue
    .line 77
    iput p2, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO;->lastConversionKey:I

    .line 78
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/adbrix/db/DailyPlayDAO$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/adbrix/db/DailyPlayDAO$2;-><init>(Lcom/igaworks/adbrix/db/DailyPlayDAO;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public setPendingConversionKey(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "previous_parentCK"    # I

    .prologue
    .line 103
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/adbrix/db/DailyPlayDAO$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/adbrix/db/DailyPlayDAO$3;-><init>(Lcom/igaworks/adbrix/db/DailyPlayDAO;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public setPlayTime(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playTime"    # I

    .prologue
    .line 124
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/adbrix/db/DailyPlayDAO$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/adbrix/db/DailyPlayDAO$4;-><init>(Lcom/igaworks/adbrix/db/DailyPlayDAO;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public setWaitingTime(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "waitingTime"    # I

    .prologue
    .line 143
    sget-object v0, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/adbrix/db/DailyPlayDAO$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/adbrix/db/DailyPlayDAO$5;-><init>(Lcom/igaworks/adbrix/db/DailyPlayDAO;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method
