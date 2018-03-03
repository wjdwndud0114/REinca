.class public Lcom/igaworks/cpe/ConditionChecker;
.super Ljava/lang/Object;
.source "ConditionChecker.java"


# static fields
.field public static final CPE_TYPE_NOTI:I = 0x3

.field public static final CPE_TYPE_REWARD:I = 0x2

.field public static final KEY_ACTIVITY_GROUP_DELIMETER:Ljava/lang/String; = "::--::"

.field public static final KEY_APP_LAUNCH_COUNT:Ljava/lang/String; = "app_launch_count"

.field public static final KEY_CARRIER:Ljava/lang/String; = "carrier"

.field public static final KEY_CHANNEL_TYPE:Ljava/lang/String; = "channel_type"

.field public static final KEY_CONVERSION_KEY:Ljava/lang/String; = "conversion_key"

.field public static final KEY_COUNTRY:Ljava/lang/String; = "country"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_IS_PORTRAIT:Ljava/lang/String; = "is_portrait"

.field public static final KEY_LANGUAGE:Ljava/lang/String; = "language"

.field public static final KEY_LAST_IMP_MINUTE:Ljava/lang/String; = "last_imp_minute"

.field public static final KEY_LIFE_HOUR:Ljava/lang/String; = "life_hour"

.field public static final KEY_MODEL:Ljava/lang/String; = "model"

.field public static final KEY_NETWORKS:Ljava/lang/String; = "network"

.field public static final KEY_OS:Ljava/lang/String; = "os"

.field public static final KEY_PACKAGE:Ljava/lang/String; = "package"

.field public static final KEY_PLATFORM_TYPE:Ljava/lang/String; = "ptype"

.field public static final KEY_SESSION_COUNT:Ljava/lang/String; = "session_count"

.field public static final KEY_TOTAL_COUNT:Ljava/lang/String; = "total_count"

.field public static final KEY_VENDOR:Ljava/lang/String; = "vendor"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final OP_CONTAINS:Ljava/lang/String; = "contains"

.field public static final OP_EQUAL:Ljava/lang/String; = "equal"

.field public static final OP_GREATER:Ljava/lang/String; = "greater"

.field public static final OP_HAS:Ljava/lang/String; = "has"

.field public static final OP_INFIX:Ljava/lang/String; = "infix"

.field public static final OP_LESS:Ljava/lang/String; = "less"

.field public static final OP_NOT_CONTAINS:Ljava/lang/String; = "not_contains"

.field public static final OP_NOT_EQUAL:Ljava/lang/String; = "not_equal"

.field public static final OP_NOT_INFIX:Ljava/lang/String; = "not_infix"

.field public static final OP_NOT_POST_FIX:Ljava/lang/String; = "not_postfix"

.field public static final OP_NOT_PREFIX:Ljava/lang/String; = "not_prefix"

.field public static final OP_POSTFIX:Ljava/lang/String; = "postfix"

.field public static final OP_PREFIX:Ljava/lang/String; = "prefix"

.field public static final RESET_DAILY:Ljava/lang/String; = "daily"

.field public static final RESET_MONTHLY:Ljava/lang/String; = "monthly"

.field public static final RESET_WEEKLY:Ljava/lang/String; = "weekly"

.field public static final SCHEME_ACTIVITY_COUNTER:Ljava/lang/String; = "activity_count"

.field public static final SCHEME_ADBRIX:Ljava/lang/String; = "adbrix"

.field public static final SCHEME_APP:Ljava/lang/String; = "app"

.field public static final SCHEME_DEVICE:Ljava/lang/String; = "device"

.field public static final SCHEME_GROUP_COUNT:Ljava/lang/String; = "group_count"

.field public static final SCHEME_IMPRESSION:Ljava/lang/String; = "impression"

.field public static final SCHEME_USER:Ljava/lang/String; = "user"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 465
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 467
    :cond_0
    :goto_0
    return v1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getUserValue(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "scheduleType"    # I
    .param p3, "targetStorageKey"    # Ljava/lang/String;
    .param p4, "scheme"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    const-string v16, "device"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 327
    const-string v16, "vendor"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getMarketPlace()Ljava/lang/String;

    move-result-object v16

    .line 458
    :goto_0
    return-object v16

    .line 329
    :cond_0
    const-string v16, "model"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getModel()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 331
    :cond_1
    const-string v16, "network"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 332
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/igaworks/core/RequestParameter;->getCustomNetworkInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 333
    :cond_2
    const-string v16, "os"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 334
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "a_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 335
    :cond_3
    const-string v16, "ptype"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 336
    const-string v16, "android"

    goto :goto_0

    .line 337
    :cond_4
    const-string v16, "width"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 338
    const-string v16, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 345
    .local v9, "display":Landroid/view/Display;
    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto :goto_0

    .line 348
    .end local v9    # "display":Landroid/view/Display;
    :cond_5
    const-string v16, "height"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 349
    const-string v16, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 356
    .restart local v9    # "display":Landroid/view/Display;
    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto/16 :goto_0

    .line 359
    .end local v9    # "display":Landroid/view/Display;
    :cond_6
    const-string v16, "is_portrait"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto/16 :goto_0

    .line 364
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 367
    :cond_8
    const-string v16, "user"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 368
    const-string v16, "carrier"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 369
    const-string v16, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 370
    :cond_9
    const-string v16, "country"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 371
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 372
    :cond_a
    const-string v16, "language"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 373
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 375
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 377
    :cond_c
    const-string v16, "adbrix"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 378
    const-string v16, "life_hour"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->calculateLifeHour()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    goto/16 :goto_0

    .line 380
    :cond_d
    const-string v16, "app_launch_count"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getappLaunchCount()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    goto/16 :goto_0

    .line 382
    :cond_e
    const-string v16, "channel_type"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 383
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getChannelType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto/16 :goto_0

    .line 384
    :cond_f
    const-string v16, "conversion_key"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/core/RequestParameter;->getConversionCache()Ljava/util/ArrayList;

    move-result-object v16

    goto/16 :goto_0

    .line 387
    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 389
    :cond_11
    const-string v16, "impression"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    .line 391
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/igaworks/dao/CPEImpressionDAOFactory;->getImpressionDAO(Ljava/lang/String;Ljava/lang/String;I)Lcom/igaworks/dao/AbstractCPEImpressionDAO;

    move-result-object v8

    .line 393
    .local v8, "dao":Lcom/igaworks/dao/AbstractCPEImpressionDAO;
    if-nez v8, :cond_12

    .line 394
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v16

    goto/16 :goto_0

    .line 398
    :cond_12
    :try_start_1
    const-string v16, "total_count"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 399
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/igaworks/dao/AbstractCPEImpressionDAO;->getImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto/16 :goto_0

    .line 400
    :cond_13
    const-string v16, "session_count"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 401
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/igaworks/dao/AbstractCPEImpressionDAO;->getImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto/16 :goto_0

    .line 402
    :cond_14
    const-string v16, "last_imp_minute"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 404
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/igaworks/dao/AbstractCPEImpressionDAO;->getImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 406
    .local v15, "strValue":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 407
    .local v12, "lastCompletionTime":J
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 409
    .local v6, "currentTime":J
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v18, v6, v12

    const-wide/32 v20, 0xea60

    div-long v18, v18, v20

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 411
    .end local v6    # "currentTime":J
    .end local v12    # "lastCompletionTime":J
    .end local v15    # "strValue":Ljava/lang/String;
    :cond_15
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    goto/16 :goto_0

    .line 413
    :catch_0
    move-exception v10

    .line 414
    .local v10, "e":Ljava/lang/Exception;
    const/16 v16, 0x0

    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto/16 :goto_0

    .line 416
    .end local v8    # "dao":Lcom/igaworks/dao/AbstractCPEImpressionDAO;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_16
    const-string v16, "activity_count"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 418
    const/4 v11, 0x0

    .local v11, "group":Ljava/lang/String;
    const/4 v5, 0x0

    .line 420
    .local v5, "activity":Ljava/lang/String;
    const-string v16, "::--::"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 422
    .local v14, "splittedKey":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_17

    .line 423
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 426
    :cond_17
    const/16 v16, 0x0

    aget-object v11, v14, v16

    .line 427
    const/16 v16, 0x1

    aget-object v5, v14, v16

    .line 429
    if-nez v11, :cond_18

    if-nez v5, :cond_18

    .line 430
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 433
    :cond_18
    invoke-static/range {p0 .. p0}, Lcom/igaworks/dao/CounterDAOForAllActivity;->getDAO(Landroid/content/Context;)Lcom/igaworks/dao/CounterDAOForAllActivity;

    move-result-object v4

    .line 435
    .local v4, "acDao":Lcom/igaworks/dao/CounterDAOForAllActivity;
    invoke-virtual {v4, v11, v5}, Lcom/igaworks/dao/CounterDAOForAllActivity;->getCountInAllActivityByGroupAndActivity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto/16 :goto_0

    .line 437
    .end local v4    # "acDao":Lcom/igaworks/dao/CounterDAOForAllActivity;
    .end local v5    # "activity":Ljava/lang/String;
    .end local v11    # "group":Ljava/lang/String;
    .end local v14    # "splittedKey":[Ljava/lang/String;
    :cond_19
    const-string v16, "group_count"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 439
    invoke-static/range {p0 .. p0}, Lcom/igaworks/dao/CounterDAOForAllActivity;->getDAO(Landroid/content/Context;)Lcom/igaworks/dao/CounterDAOForAllActivity;

    move-result-object v4

    .line 441
    .restart local v4    # "acDao":Lcom/igaworks/dao/CounterDAOForAllActivity;
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/igaworks/dao/CounterDAOForAllActivity;->getCountInAllActivityByGroup(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto/16 :goto_0

    .line 443
    .end local v4    # "acDao":Lcom/igaworks/dao/CounterDAOForAllActivity;
    :cond_1a
    const-string v16, "app"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v16

    if-eqz v16, :cond_1c

    .line 445
    :try_start_3
    const-string v16, "package"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 446
    const-string v16, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 448
    :cond_1b
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 450
    :catch_1
    move-exception v10

    .line 451
    .restart local v10    # "e":Ljava/lang/Exception;
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 454
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1c
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 456
    :catch_2
    move-exception v10

    .line 457
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 458
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public static isMatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "checkPackage"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 77
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 316
    .end local p2    # "target":Ljava/lang/Object;
    .end local p3    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v9

    .line 81
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    if-eqz p4, :cond_4

    .line 83
    :try_start_0
    const-string v3, "contains"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    check-cast p2, Ljava/lang/String;

    .end local p2    # "target":Ljava/lang/Object;
    invoke-static {p0, p2}, Lcom/igaworks/cpe/ConditionChecker;->checkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    goto :goto_0

    .line 85
    .restart local p2    # "target":Ljava/lang/Object;
    :cond_2
    const-string v3, "not_contains"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    check-cast p2, Ljava/lang/String;

    .end local p2    # "target":Ljava/lang/Object;
    invoke-static {p0, p2}, Lcom/igaworks/cpe/ConditionChecker;->checkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v8

    :goto_1
    move v9, v3

    goto :goto_0

    :cond_3
    move v3, v9

    goto :goto_1

    .line 93
    .restart local p2    # "target":Ljava/lang/Object;
    :cond_4
    const-string v3, "equal"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v3

    if-eqz v3, :cond_c

    .line 97
    const-wide/16 v6, 0x0

    .local v6, "val":J
    const-wide/16 v4, 0x0

    .line 99
    .local v4, "tar":J
    :try_start_1
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 100
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 109
    :goto_2
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 110
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 119
    :goto_3
    cmp-long v3, v6, v4

    if-nez v3, :cond_b

    :goto_4
    move v9, v8

    goto :goto_0

    .line 101
    :cond_5
    instance-of v3, p3, Ljava/lang/Double;

    if-eqz v3, :cond_6

    .line 102
    move-object v0, p3

    check-cast v0, Ljava/lang/Double;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    goto :goto_2

    .line 103
    :cond_6
    instance-of v3, p3, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    .line 104
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    goto :goto_2

    .line 106
    :cond_7
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    .line 111
    :cond_8
    instance-of v3, p2, Ljava/lang/Double;

    if-eqz v3, :cond_9

    .line 112
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    goto :goto_3

    .line 113
    :cond_9
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_a

    .line 114
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    goto :goto_3

    .line 116
    :cond_a
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    goto :goto_3

    :cond_b
    move v8, v9

    .line 119
    goto :goto_4

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    instance-of v3, p3, Ljava/lang/Comparable;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/lang/Comparable;

    if-eqz v3, :cond_0

    .line 123
    check-cast p3, Ljava/lang/Comparable;

    .end local p3    # "value":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "target":Ljava/lang/Object;
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto/16 :goto_0

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "tar":J
    .end local v6    # "val":J
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_c
    const-string v3, "contains"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 130
    instance-of v3, p3, Ljava/util/Collection;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/util/Collection;

    if-eqz v3, :cond_0

    .line 131
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "target":Ljava/lang/Object;
    check-cast p3, Ljava/util/Collection;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-interface {p2, p3}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    goto/16 :goto_0

    .line 135
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_d
    const-string v3, "not_equal"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result v3

    if-eqz v3, :cond_16

    .line 138
    const-wide/16 v6, 0x0

    .restart local v6    # "val":J
    const-wide/16 v4, 0x0

    .line 140
    .restart local v4    # "tar":J
    :try_start_3
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 141
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 150
    :goto_5
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 151
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 160
    :goto_6
    cmp-long v3, v6, v4

    if-eqz v3, :cond_14

    :goto_7
    move v9, v8

    goto/16 :goto_0

    .line 142
    :cond_e
    instance-of v3, p3, Ljava/lang/Double;

    if-eqz v3, :cond_f

    .line 143
    move-object v0, p3

    check-cast v0, Ljava/lang/Double;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    goto :goto_5

    .line 144
    :cond_f
    instance-of v3, p3, Ljava/lang/Integer;

    if-eqz v3, :cond_10

    .line 145
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    goto :goto_5

    .line 147
    :cond_10
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_5

    .line 152
    :cond_11
    instance-of v3, p2, Ljava/lang/Double;

    if-eqz v3, :cond_12

    .line 153
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    goto :goto_6

    .line 154
    :cond_12
    instance-of v3, p3, Ljava/lang/Integer;

    if-eqz v3, :cond_13

    .line 155
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    goto :goto_6

    .line 157
    :cond_13
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v4

    goto :goto_6

    :cond_14
    move v8, v9

    .line 160
    goto :goto_7

    .line 162
    :catch_1
    move-exception v2

    .line 163
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    instance-of v3, p3, Ljava/lang/Comparable;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/lang/Comparable;

    if-eqz v3, :cond_0

    .line 164
    check-cast p3, Ljava/lang/Comparable;

    .end local p3    # "value":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "target":Ljava/lang/Object;
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :goto_8
    move v9, v8

    goto/16 :goto_0

    :cond_15
    move v8, v9

    goto :goto_8

    .line 169
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "tar":J
    .end local v6    # "val":J
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_16
    const-string v3, "not_contains"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 170
    instance-of v3, p3, Ljava/util/Collection;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/util/Collection;

    if-eqz v3, :cond_0

    .line 171
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "target":Ljava/lang/Object;
    check-cast p3, Ljava/util/Collection;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-interface {p2, p3}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    goto/16 :goto_0

    .line 175
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_17
    const-string v3, "prefix"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 176
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 177
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "target":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_0

    .line 181
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_18
    const-string v3, "postfix"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 182
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 183
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "target":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_0

    .line 187
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_19
    const-string v3, "infix"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 188
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 189
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "target":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    goto/16 :goto_0

    .line 193
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1a
    const-string v3, "not_prefix"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 194
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 195
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "target":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    :goto_9
    move v9, v8

    goto/16 :goto_0

    :cond_1b
    move v8, v9

    goto :goto_9

    .line 199
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1c
    const-string v3, "not_postfix"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 200
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 201
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "target":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    goto/16 :goto_0

    .line 205
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1d
    const-string v3, "not_infix"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 206
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 207
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "target":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    goto/16 :goto_0

    .line 211
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1e
    const-string v3, "greater"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v3

    if-eqz v3, :cond_27

    .line 213
    const-wide/16 v6, 0x0

    .restart local v6    # "val":J
    const-wide/16 v4, 0x0

    .line 215
    .restart local v4    # "tar":J
    :try_start_5
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_1f

    .line 216
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 225
    :goto_a
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_22

    .line 226
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 235
    :goto_b
    cmp-long v3, v6, v4

    if-ltz v3, :cond_25

    :goto_c
    move v9, v8

    goto/16 :goto_0

    .line 217
    :cond_1f
    instance-of v3, p3, Ljava/lang/Double;

    if-eqz v3, :cond_20

    .line 218
    move-object v0, p3

    check-cast v0, Ljava/lang/Double;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    goto :goto_a

    .line 219
    :cond_20
    instance-of v3, p3, Ljava/lang/Integer;

    if-eqz v3, :cond_21

    .line 220
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    goto :goto_a

    .line 222
    :cond_21
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_a

    .line 227
    :cond_22
    instance-of v3, p2, Ljava/lang/Double;

    if-eqz v3, :cond_23

    .line 228
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    goto :goto_b

    .line 229
    :cond_23
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_24

    .line 230
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    goto :goto_b

    .line 232
    :cond_24
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-wide v4

    goto :goto_b

    :cond_25
    move v8, v9

    .line 235
    goto :goto_c

    .line 237
    :catch_2
    move-exception v2

    .line 238
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_6
    instance-of v3, p3, Ljava/lang/Comparable;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/lang/Comparable;

    if-eqz v3, :cond_0

    .line 239
    check-cast p3, Ljava/lang/Comparable;

    .end local p3    # "value":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "target":Ljava/lang/Object;
    invoke-interface {p3, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_26

    :goto_d
    move v9, v8

    goto/16 :goto_0

    :cond_26
    move v8, v9

    goto :goto_d

    .line 244
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "tar":J
    .end local v6    # "val":J
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_27
    const-string v3, "less"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v3

    if-eqz v3, :cond_30

    .line 246
    const-wide/16 v6, 0x0

    .restart local v6    # "val":J
    const-wide/16 v4, 0x0

    .line 248
    .restart local v4    # "tar":J
    :try_start_7
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 249
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 258
    :goto_e
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_2b

    .line 259
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 268
    :goto_f
    cmp-long v3, v6, v4

    if-gtz v3, :cond_2e

    :goto_10
    move v9, v8

    goto/16 :goto_0

    .line 250
    :cond_28
    instance-of v3, p3, Ljava/lang/Double;

    if-eqz v3, :cond_29

    .line 251
    move-object v0, p3

    check-cast v0, Ljava/lang/Double;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    goto :goto_e

    .line 252
    :cond_29
    instance-of v3, p3, Ljava/lang/Integer;

    if-eqz v3, :cond_2a

    .line 253
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    goto :goto_e

    .line 255
    :cond_2a
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_e

    .line 260
    :cond_2b
    instance-of v3, p2, Ljava/lang/Double;

    if-eqz v3, :cond_2c

    .line 261
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    goto :goto_f

    .line 262
    :cond_2c
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_2d

    .line 263
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    goto :goto_f

    .line 265
    :cond_2d
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-wide v4

    goto :goto_f

    :cond_2e
    move v8, v9

    .line 268
    goto :goto_10

    .line 270
    :catch_3
    move-exception v2

    .line 271
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_8
    instance-of v3, p3, Ljava/lang/Comparable;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/lang/Comparable;

    if-eqz v3, :cond_0

    .line 272
    check-cast p3, Ljava/lang/Comparable;

    .end local p3    # "value":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "target":Ljava/lang/Object;
    invoke-interface {p3, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_2f

    :goto_11
    move v9, v8

    goto/16 :goto_0

    :cond_2f
    move v8, v9

    goto :goto_11

    .line 277
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "tar":J
    .end local v6    # "val":J
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_30
    const-string v3, "has"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    const-wide/16 v6, 0x0

    .restart local v6    # "val":J
    const-wide/16 v4, 0x0

    .line 282
    .restart local v4    # "tar":J
    :try_start_9
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_31

    .line 283
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 292
    :goto_12
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_34

    .line 293
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 302
    :goto_13
    and-long v10, v6, v4

    cmp-long v3, v10, v6

    if-nez v3, :cond_37

    :goto_14
    move v9, v8

    goto/16 :goto_0

    .line 284
    :cond_31
    instance-of v3, p3, Ljava/lang/Double;

    if-eqz v3, :cond_32

    .line 285
    move-object v0, p3

    check-cast v0, Ljava/lang/Double;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    goto :goto_12

    .line 286
    :cond_32
    instance-of v3, p3, Ljava/lang/Integer;

    if-eqz v3, :cond_33

    .line 287
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    goto :goto_12

    .line 289
    :cond_33
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_12

    .line 294
    :cond_34
    instance-of v3, p2, Ljava/lang/Double;

    if-eqz v3, :cond_35

    .line 295
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    goto :goto_13

    .line 296
    :cond_35
    instance-of v3, p3, Ljava/lang/Integer;

    if-eqz v3, :cond_36

    .line 297
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    goto :goto_13

    .line 299
    :cond_36
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-result-wide v4

    goto :goto_13

    :cond_37
    move v8, v9

    .line 302
    goto :goto_14

    .line 304
    :catch_4
    move-exception v2

    .line 305
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_a
    instance-of v3, p3, Ljava/lang/Comparable;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/lang/Comparable;

    if-eqz v3, :cond_0

    .line 306
    check-cast p3, Ljava/lang/Comparable;

    .end local p3    # "value":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "target":Ljava/lang/Object;
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-result v3

    if-nez v3, :cond_38

    :goto_15
    move v9, v8

    goto/16 :goto_0

    :cond_38
    move v8, v9

    goto :goto_15

    .line 314
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "tar":J
    .end local v6    # "val":J
    :catch_5
    move-exception v2

    .line 315
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
