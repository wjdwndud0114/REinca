.class public abstract Lcom/igaworks/impl/CommonFrameworkImpl;
.super Ljava/lang/Object;
.source "CommonFrameworkImpl.java"

# interfaces
.implements Lcom/igaworks/interfaces/CommonInterface;


# static fields
.field protected static ContinueSessionMillis:J

.field public static final GROUPS_FOR_TRACKING_INSTANTLY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static REMOVE_NETWORKS_STATE_PERMISSION:Z

.field private static TempProcessedConversionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static UEH_Enable:Ljava/lang/Boolean;

.field protected static appContext:Landroid/content/Context;

.field protected static appkey:Ljava/lang/String;

.field private static callStartApplicationAlready:Z

.field protected static clientRewardlistener:Lcom/igaworks/interfaces/IgawRewardItemEventListener;

.field protected static eListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/igaworks/interfaces/ExtendedCommonActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field protected static endSessionParam:J

.field protected static endTimer:J

.field protected static hashkey:Ljava/lang/String;

.field public static httpManager:Lcom/igaworks/net/CommonHttpManager;

.field public static isFocusOnForCrashlytics:Z

.field private static isInitializingAppInfo:Z

.field public static isPremiumPostBack:Z

.field public static isTest:Z

.field protected static listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/igaworks/interfaces/CommonActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field protected static localDemographicInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final lock:Ljava/lang/Object;

.field protected static marketInfo:Ljava/lang/String;

.field public static parameter:Lcom/igaworks/core/RequestParameter;

.field protected static prev_activity:Ljava/lang/String;

.field protected static prev_group:Ljava/lang/String;

.field public static processedClickID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static receiverComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static restoreForNullContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field protected static security_enable:Z

.field protected static session_stack_count:I

.field protected static shouldSendCompleteCall:Z

.field protected static startSessionTime:J

.field protected static test_server_enable:Z

.field protected static thirdPartyID:Ljava/lang/String;


# instance fields
.field activity_info:Ljava/lang/String;

.field private commonAPCallbackListener:Lcom/igaworks/interfaces/ICommonAPCallbackListener;

.field private commonLiveOpsCallbackListener:Lcom/igaworks/interfaces/ICommonLiveOpsCallbackListener;

.field private mReferrerThread:Lcom/igaworks/impl/ReferrerThread;

.field private sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->GROUPS_FOR_TRACKING_INSTANTLY:Ljava/util/List;

    .line 70
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->GROUPS_FOR_TRACKING_INSTANTLY:Ljava/util/List;

    const-string v1, "fte"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->GROUPS_FOR_TRACKING_INSTANTLY:Ljava/util/List;

    const-string v1, "buy"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->isFocusOnForCrashlytics:Z

    .line 75
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->lock:Ljava/lang/Object;

    .line 77
    sput-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->UEH_Enable:Ljava/lang/Boolean;

    .line 78
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    .line 79
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->isInitializingAppInfo:Z

    .line 80
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->REMOVE_NETWORKS_STATE_PERMISSION:Z

    .line 83
    sput-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->appkey:Ljava/lang/String;

    .line 84
    sput-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->hashkey:Ljava/lang/String;

    .line 85
    sput-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->marketInfo:Ljava/lang/String;

    .line 86
    sput-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->thirdPartyID:Ljava/lang/String;

    .line 87
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->security_enable:Z

    .line 88
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->test_server_enable:Z

    .line 90
    sput-wide v4, Lcom/igaworks/impl/CommonFrameworkImpl;->startSessionTime:J

    .line 92
    sput-wide v4, Lcom/igaworks/impl/CommonFrameworkImpl;->endTimer:J

    .line 93
    sput-wide v4, Lcom/igaworks/impl/CommonFrameworkImpl;->endSessionParam:J

    .line 95
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/igaworks/impl/CommonFrameworkImpl;->ContinueSessionMillis:J

    .line 96
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->shouldSendCompleteCall:Z

    .line 97
    sput v2, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->restoreForNullContext:Ljava/util/List;

    .line 105
    const-string v0, ""

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_activity:Ljava/lang/String;

    .line 106
    const-string v0, ""

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_group:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->processedClickID:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->TempProcessedConversionList:Ljava/util/List;

    .line 111
    sput-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    .line 119
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->callStartApplicationAlready:Z

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->receiverComponents:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->mReferrerThread:Lcom/igaworks/impl/ReferrerThread;

    .line 118
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->sdf:Ljava/text/SimpleDateFormat;

    .line 315
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->activity_info:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/impl/CommonFrameworkImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/impl/CommonFrameworkImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl;->setAgeAdpopcorn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/igaworks/impl/CommonFrameworkImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/impl/CommonFrameworkImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl;->setGenderAdpopcorn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/igaworks/impl/CommonFrameworkImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/impl/CommonFrameworkImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl;->setUsnAdpopcorn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/igaworks/impl/CommonFrameworkImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/impl/CommonFrameworkImpl;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/igaworks/impl/CommonFrameworkImpl;->setUsnLiveOps(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->TempProcessedConversionList:Ljava/util/List;

    return-object v0
.end method

.method public static addActivityListener(Ljava/lang/String;Lcom/igaworks/interfaces/CommonActivityListener;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/igaworks/interfaces/CommonActivityListener;

    .prologue
    .line 137
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->listeners:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->listeners:Ljava/util/Map;

    .line 141
    :cond_0
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->listeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->listeners:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_1
    return-void
.end method

.method public static addExtendedActivityListener(Ljava/lang/String;Lcom/igaworks/interfaces/ExtendedCommonActivityListener;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/igaworks/interfaces/ExtendedCommonActivityListener;

    .prologue
    .line 159
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->eListeners:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->eListeners:Ljava/util/Map;

    .line 163
    :cond_0
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->eListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->eListeners:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_1
    return-void
.end method

.method private dailyRetentionEvent(Landroid/content/Context;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1919
    invoke-static/range {p1 .. p1}, Lcom/igaworks/dao/AppImpressionDAO;->getLastDailyRentionDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1921
    .local v9, "lastDailyRentionDate":Ljava/lang/String;
    :try_start_0
    const-string v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1922
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 1923
    .local v11, "now":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1924
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 1925
    .local v17, "year":I
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 1926
    .local v10, "month":I
    const/4 v1, 0x5

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1928
    .local v7, "dayOfMonth":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 1929
    .local v15, "past":Ljava/util/Calendar;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1930
    .local v16, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1932
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 1933
    .local v14, "pYear":I
    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 1934
    .local v13, "pMonth":I
    const/4 v1, 0x5

    invoke-virtual {v15, v1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 1936
    .local v12, "pDayOfMonth":I
    move/from16 v0, v17

    if-le v0, v14, :cond_1

    .line 1937
    const-string v2, "session"

    const-string v3, "retention"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1938
    invoke-static/range {p1 .. p1}, Lcom/igaworks/dao/AppImpressionDAO;->setLastDailyRentionDate(Landroid/content/Context;)V

    .line 1963
    .end local v7    # "dayOfMonth":I
    .end local v10    # "month":I
    .end local v11    # "now":Ljava/util/Calendar;
    .end local v12    # "pDayOfMonth":I
    .end local v13    # "pMonth":I
    .end local v14    # "pYear":I
    .end local v15    # "past":Ljava/util/Calendar;
    .end local v16    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v17    # "year":I
    :cond_0
    :goto_0
    return-void

    .line 1939
    .restart local v7    # "dayOfMonth":I
    .restart local v10    # "month":I
    .restart local v11    # "now":Ljava/util/Calendar;
    .restart local v12    # "pDayOfMonth":I
    .restart local v13    # "pMonth":I
    .restart local v14    # "pYear":I
    .restart local v15    # "past":Ljava/util/Calendar;
    .restart local v16    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v17    # "year":I
    :cond_1
    if-le v10, v13, :cond_2

    .line 1940
    const-string v2, "session"

    const-string v3, "retention"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1941
    invoke-static/range {p1 .. p1}, Lcom/igaworks/dao/AppImpressionDAO;->setLastDailyRentionDate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1958
    .end local v7    # "dayOfMonth":I
    .end local v10    # "month":I
    .end local v11    # "now":Ljava/util/Calendar;
    .end local v12    # "pDayOfMonth":I
    .end local v13    # "pMonth":I
    .end local v14    # "pYear":I
    .end local v15    # "past":Ljava/util/Calendar;
    .end local v16    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v17    # "year":I
    :catch_0
    move-exception v8

    .line 1959
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dailyRetentionEvent Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1960
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1

    .line 1942
    .restart local v7    # "dayOfMonth":I
    .restart local v10    # "month":I
    .restart local v11    # "now":Ljava/util/Calendar;
    .restart local v12    # "pDayOfMonth":I
    .restart local v13    # "pMonth":I
    .restart local v14    # "pYear":I
    .restart local v15    # "past":Ljava/util/Calendar;
    .restart local v16    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v17    # "year":I
    :cond_2
    if-le v7, v12, :cond_0

    .line 1943
    :try_start_2
    const-string v2, "session"

    const-string v3, "retention"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1944
    invoke-static/range {p1 .. p1}, Lcom/igaworks/dao/AppImpressionDAO;->setLastDailyRentionDate(Landroid/content/Context;)V

    goto :goto_0

    .line 1955
    .end local v7    # "dayOfMonth":I
    .end local v10    # "month":I
    .end local v11    # "now":Ljava/util/Calendar;
    .end local v12    # "pDayOfMonth":I
    .end local v13    # "pMonth":I
    .end local v14    # "pYear":I
    .end local v15    # "past":Ljava/util/Calendar;
    .end local v16    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v17    # "year":I
    :cond_3
    const-string v2, "session"

    const-string v3, "retention"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1956
    invoke-static/range {p1 .. p1}, Lcom/igaworks/dao/AppImpressionDAO;->setLastDailyRentionDate(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private endSessionImpl()V
    .locals 14

    .prologue
    .line 887
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/igaworks/impl/CommonFrameworkImpl;->isFocusOnForCrashlytics:Z

    .line 889
    sget-boolean v0, Lcom/igaworks/IgawCommon;->isProtectSessionTrackingCall:Z

    if-eqz v0, :cond_1

    .line 890
    const-string v0, "IGAW_QA"

    const-string v1, "The endSessionImpl is blocked because the protectSessionTracking is activated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    const-wide/16 v12, 0x0

    .line 896
    .local v12, "sessionTime":J
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 897
    const-string v0, "IGAW_QA"

    const-string v1, "ADBrixManager > application context error, please check context value. startSession() should be called at least once."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 993
    .end local v12    # "sessionTime":J
    :catch_0
    move-exception v8

    .line 994
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 995
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0

    .line 901
    .restart local v12    # "sessionTime":J
    :cond_2
    :try_start_2
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->appContext:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 904
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endSession : stack_count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 906
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igaworks/impl/CommonFrameworkImpl;->getHttpManager(Landroid/content/Context;)Lcom/igaworks/net/CommonHttpManager;

    move-result-object v0

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    .line 908
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 909
    .local v10, "endSession":J
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 910
    :try_start_4
    sget v0, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    if-lez v0, :cond_3

    .line 911
    sget v0, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    .line 913
    :cond_3
    sget v0, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    if-nez v0, :cond_7

    .line 914
    sput-wide v10, Lcom/igaworks/impl/CommonFrameworkImpl;->endTimer:J

    .line 915
    sget-wide v2, Lcom/igaworks/impl/CommonFrameworkImpl;->startSessionTime:J

    sub-long v12, v10, v2

    .line 916
    sput-wide v12, Lcom/igaworks/impl/CommonFrameworkImpl;->endSessionParam:J

    .line 920
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 923
    :try_start_5
    sget v0, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    if-nez v0, :cond_4

    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 924
    invoke-static {}, Lcom/igaworks/impl/InternalAction;->getInstance()Lcom/igaworks/impl/InternalAction;

    move-result-object v0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    const-string v4, "session"

    const-string v5, "end"

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/igaworks/impl/InternalAction;->trackingForAdbrixCall(Landroid/content/Context;ZLcom/igaworks/net/CommonHttpManager;Ljava/lang/String;Ljava/lang/String;J)V

    .line 930
    :cond_4
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/impl/CommonFrameworkImpl$3;

    invoke-direct {v1, p0}, Lcom/igaworks/impl/CommonFrameworkImpl$3;-><init>(Lcom/igaworks/impl/CommonFrameworkImpl;)V

    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 981
    sget v0, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    if-nez v0, :cond_5

    .line 982
    const-string v1, "session"

    const-string v2, "end"

    sget-wide v4, Lcom/igaworks/impl/CommonFrameworkImpl;->endSessionParam:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 984
    :cond_5
    iget-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->commonLiveOpsCallbackListener:Lcom/igaworks/interfaces/ICommonLiveOpsCallbackListener;

    if-eqz v0, :cond_6

    .line 985
    iget-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->commonLiveOpsCallbackListener:Lcom/igaworks/interfaces/ICommonLiveOpsCallbackListener;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/igaworks/interfaces/ICommonLiveOpsCallbackListener;->onEndSession(Landroid/content/Context;)V

    .line 988
    :cond_6
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getExtendedActivityListener()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 989
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getExtendedActivityListener()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/igaworks/interfaces/ExtendedCommonActivityListener;

    .line 990
    .local v9, "item":Lcom/igaworks/interfaces/ExtendedCommonActivityListener;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    invoke-interface {v9, v1, v2}, Lcom/igaworks/interfaces/ExtendedCommonActivityListener;->onEndSession(Landroid/content/Context;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 918
    .end local v9    # "item":Lcom/igaworks/interfaces/ExtendedCommonActivityListener;
    :cond_7
    const-wide/16 v2, 0x0

    :try_start_6
    sput-wide v2, Lcom/igaworks/impl/CommonFrameworkImpl;->endTimer:J

    goto/16 :goto_2

    .line 920
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 902
    .end local v10    # "endSession":J
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public static getActivityListener()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/igaworks/interfaces/CommonActivityListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->listeners:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static getClientRewardListener()Lcom/igaworks/interfaces/IgawRewardItemEventListener;
    .locals 1

    .prologue
    .line 1250
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->clientRewardlistener:Lcom/igaworks/interfaces/IgawRewardItemEventListener;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getExtendedActivityListener()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/igaworks/interfaces/ExtendedCommonActivityListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->eListeners:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->eListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method private navigateDeeplinkActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 1310
    if-eqz p2, :cond_1

    .line 1313
    :try_start_0
    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deeplink referral param : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {p1, v6, v7, v8, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1316
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1317
    .local v1, "i":Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1318
    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1321
    const-string v6, "&"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v4, v7, v6

    .line 1323
    .local v4, "param":Ljava/lang/String;
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deeplink splitted param : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1324
    const-string v9, "="

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1325
    .local v3, "kv":[Ljava/lang/String;
    array-length v9, v3

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 1326
    const/4 v9, 0x0

    aget-object v9, v3, v9

    const-string v10, "igaw_intent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-eqz v9, :cond_2

    .line 1328
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v3, v9

    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1329
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deeplink data : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1321
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1330
    :catch_0
    move-exception v0

    .line 1331
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deeplink data error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {p1, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1367
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "kv":[Ljava/lang/String;
    .end local v4    # "param":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1368
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1376
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 1334
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v3    # "kv":[Ljava/lang/String;
    .restart local v4    # "param":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    :try_start_4
    aget-object v9, v3, v9

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1340
    .end local v3    # "kv":[Ljava/lang/String;
    .end local v4    # "param":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/igaworks/impl/CommonFrameworkImpl;->receiverComponents:Ljava/util/List;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/igaworks/impl/CommonFrameworkImpl;->receiverComponents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1341
    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deeplink receiverComponents size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->receiverComponents:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {p1, v6, v7, v8, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1343
    sget-object v6, Lcom/igaworks/impl/CommonFrameworkImpl;->receiverComponents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1345
    .local v2, "item":Ljava/lang/String;
    const-string v7, "IGAW_QA"

    const-string v8, "deeplink intent broadcasting : %s << %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {p1, v7, v8, v9, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1347
    const-string v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1349
    .local v5, "splitted":[Ljava/lang/String;
    if-eqz v5, :cond_4

    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1351
    new-instance v7, Landroid/content/ComponentName;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1352
    sget-object v7, Lcom/igaworks/impl/CommonFrameworkImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 1356
    .end local v2    # "item":Ljava/lang/String;
    .end local v5    # "splitted":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1358
    const-string v6, "IGAW_QA"

    const-string v7, "deeplink intent broadcasting"

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {p1, v6, v7, v8, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1359
    sget-object v6, Lcom/igaworks/impl/CommonFrameworkImpl;->appContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_6

    .line 1360
    sget-object v6, Lcom/igaworks/impl/CommonFrameworkImpl;->appContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1362
    :cond_6
    sget-object v6, Lcom/igaworks/impl/CommonFrameworkImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 1373
    .end local v1    # "i":Landroid/content/Intent;
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1374
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private resendDeeplinkConversion(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1415
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->delay(J)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/impl/CommonFrameworkImpl$8;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl$8;-><init>(Lcom/igaworks/impl/CommonFrameworkImpl;Landroid/content/Context;)V

    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 1465
    return-void
.end method

.method private restoreActivityForNullContext(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1381
    :try_start_0
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->restoreForNullContext:Ljava/util/List;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->restoreForNullContext:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1382
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->restoreForNullContext:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 1383
    .local v7, "item":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "group":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "activity":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "param":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1385
    .local v4, "createdAt":Ljava/lang/String;
    const-string v0, "group"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1386
    const-string v0, "group"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1389
    :cond_0
    const-string v0, "activity"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1390
    const-string v0, "activity"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1393
    :cond_1
    const-string v0, "param"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1394
    const-string v0, "param"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1397
    :cond_2
    const-string v0, "createdAt"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1398
    const-string v0, "createdAt"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    move-object v0, p0

    move-object v5, p1

    .line 1401
    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1402
    const-string v0, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ADBrixManager >restore activity for null context : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " / "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " / "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {p1, v0, v5, v9, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1408
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "activity":Ljava/lang/String;
    .end local v3    # "param":Ljava/lang/String;
    .end local v4    # "createdAt":Ljava/lang/String;
    .end local v7    # "item":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 1409
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1411
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-void

    .line 1406
    :cond_5
    :try_start_1
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->restoreForNullContext:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static sendCrashReport(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1966
    .local p0, "err":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/igaworks/net/CommonHttpManager;->reportingCrash(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/List;)V

    .line 1967
    return-void
.end method

.method private setAgeAdpopcorn(Ljava/lang/String;)V
    .locals 5
    .param p1, "age"    # Ljava/lang/String;

    .prologue
    .line 1183
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adpopcorn_parameter"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1184
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1185
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "adpopcorn_sdk_age"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1187
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->appContext:Landroid/content/Context;

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    sput-object p0, Lcom/igaworks/impl/CommonFrameworkImpl;->appContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private setGenderAdpopcorn(Ljava/lang/String;)V
    .locals 5
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 1176
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adpopcorn_parameter"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1177
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1178
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "adpopcorn_sdk_gender"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1180
    return-void
.end method

.method private setUsnAdpopcorn(Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 1166
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adpopcorn_parameter"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1167
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "adpopcorn_sdk_usn"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1171
    iget-object v2, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->commonAPCallbackListener:Lcom/igaworks/interfaces/ICommonAPCallbackListener;

    if-eqz v2, :cond_0

    .line 1172
    iget-object v2, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->commonAPCallbackListener:Lcom/igaworks/interfaces/ICommonAPCallbackListener;

    invoke-interface {v2, p1}, Lcom/igaworks/interfaces/ICommonAPCallbackListener;->OnCommonSetUsn(Ljava/lang/String;)V

    .line 1173
    :cond_0
    return-void
.end method

.method private setUsnLiveOps(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->commonLiveOpsCallbackListener:Lcom/igaworks/interfaces/ICommonLiveOpsCallbackListener;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->commonLiveOpsCallbackListener:Lcom/igaworks/interfaces/ICommonLiveOpsCallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/igaworks/interfaces/ICommonLiveOpsCallbackListener;->OnCommonSetUsn(Landroid/content/Context;Ljava/lang/String;)V

    .line 1163
    :cond_0
    return-void
.end method

.method private startSessionImpl(Landroid/content/Context;)V
    .locals 14
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    .line 694
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/igaworks/impl/CommonFrameworkImpl;->isFocusOnForCrashlytics:Z

    .line 696
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/IgawCommon;->isProtectSessionTrackingCall:Z

    .line 697
    sget-object v0, Lcom/igaworks/IgawCommon;->igawT:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 698
    sget-object v0, Lcom/igaworks/IgawCommon;->igawT:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 699
    const/4 v0, 0x0

    sput-object v0, Lcom/igaworks/IgawCommon;->igawT:Ljava/util/Timer;

    .line 703
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igaworks/impl/CommonFrameworkImpl;->dailyRetentionEvent(Landroid/content/Context;)V

    .line 705
    const/4 v13, 0x0

    .line 706
    .local v13, "session_continue":Z
    const-wide/16 v8, 0x0

    .line 708
    .local v8, "background_time":J
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igaworks/impl/CommonFrameworkImpl;->getHttpManager(Landroid/content/Context;)Lcom/igaworks/net/CommonHttpManager;

    move-result-object v0

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    .line 710
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADBrixManager > startSession() : stack_count :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 712
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v0

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    .line 713
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->appkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igaworks/core/RequestParameter;->setAppKey(Ljava/lang/String;)V

    .line 714
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->appkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igaworks/core/RequestParameter;->setMc(Ljava/lang/String;)V

    .line 715
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->thirdPartyID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igaworks/core/RequestParameter;->setThirdPartyID(Ljava/lang/String;)V

    .line 716
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Lcom/igaworks/core/RequestParameter;->setActivityName(Ljava/lang/String;)V

    .line 717
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->marketInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igaworks/core/RequestParameter;->setMarketPlace(Ljava/lang/String;)V

    .line 718
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    sget-boolean v1, Lcom/igaworks/impl/CommonFrameworkImpl;->security_enable:Z

    invoke-virtual {v0, v1}, Lcom/igaworks/core/RequestParameter;->setSecurity_enable(Z)V

    .line 719
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->hashkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igaworks/core/RequestParameter;->setHashkey(Ljava/lang/String;)V

    .line 720
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->setFirstLaunchTimeInfos()V

    .line 731
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 732
    :try_start_1
    sget v0, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 733
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "IGAW_QA"

    const-string v3, "ADBrixManager > startSession() : The startSession API is called continuously without endSession API. Please make sure that the startSession and endSession API is called as a pair of an activity unit"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 736
    const/4 v0, 0x0

    sput v0, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    .line 737
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/igaworks/impl/CommonFrameworkImpl;->endTimer:J

    .line 739
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 742
    :try_start_2
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 743
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/dao/ReferralInfoDAO;->getOnReceiveReferralFlag(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 744
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/dao/AppImpressionDAO;->getSynAdbrix(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->mReferrerThread:Lcom/igaworks/impl/ReferrerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->mReferrerThread:Lcom/igaworks/impl/ReferrerThread;

    invoke-virtual {v0}, Lcom/igaworks/impl/ReferrerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_4

    .line 747
    :cond_3
    new-instance v0, Lcom/igaworks/impl/ReferrerThread;

    invoke-direct {v0}, Lcom/igaworks/impl/ReferrerThread;-><init>()V

    iput-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->mReferrerThread:Lcom/igaworks/impl/ReferrerThread;

    .line 748
    iget-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->mReferrerThread:Lcom/igaworks/impl/ReferrerThread;

    invoke-virtual {v0}, Lcom/igaworks/impl/ReferrerThread;->start()V

    .line 758
    :cond_4
    :goto_0
    sget v0, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    if-nez v0, :cond_b

    .line 759
    sget-wide v0, Lcom/igaworks/impl/CommonFrameworkImpl;->endTimer:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_a

    .line 760
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/igaworks/impl/CommonFrameworkImpl;->endTimer:J

    sub-long v8, v0, v2

    .line 761
    sget-wide v0, Lcom/igaworks/impl/CommonFrameworkImpl;->ContinueSessionMillis:J

    cmp-long v0, v8, v0

    if-gtz v0, :cond_9

    .line 762
    const/4 v13, 0x1

    .line 763
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/impl/CommonFrameworkImpl;->shouldSendCompleteCall:Z

    .line 777
    :goto_1
    sget-boolean v0, Lcom/igaworks/impl/CommonFrameworkImpl;->shouldSendCompleteCall:Z

    if-eqz v0, :cond_5

    .line 778
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->increaseAppLaunchCount()V

    .line 786
    :cond_5
    if-nez v13, :cond_6

    sget-boolean v0, Lcom/igaworks/impl/CommonFrameworkImpl;->isPremiumPostBack:Z

    if-nez v0, :cond_6

    .line 787
    new-instance v0, Lcom/igaworks/impl/CommonFrameworkImpl$2;

    invoke-direct {v0, p0}, Lcom/igaworks/impl/CommonFrameworkImpl$2;-><init>(Lcom/igaworks/impl/CommonFrameworkImpl;)V

    .line 806
    invoke-virtual {v0}, Lcom/igaworks/impl/CommonFrameworkImpl$2;->start()V

    .line 812
    :cond_6
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getActivityListener()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 813
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getActivityListener()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/igaworks/interfaces/CommonActivityListener;

    .line 814
    .local v12, "item":Lcom/igaworks/interfaces/CommonActivityListener;
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-interface {v12, p1, v1, v13}, Lcom/igaworks/interfaces/CommonActivityListener;->onStartSession(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 858
    .end local v8    # "background_time":J
    .end local v12    # "item":Lcom/igaworks/interfaces/CommonActivityListener;
    .end local v13    # "session_continue":Z
    .end local p1    # "activityContext":Landroid/content/Context;
    :catch_0
    move-exception v10

    .line 859
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 864
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    return-void

    .line 739
    .restart local v8    # "background_time":J
    .restart local v13    # "session_continue":Z
    .restart local p1    # "activityContext":Landroid/content/Context;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 860
    .end local v8    # "background_time":J
    .end local v13    # "session_continue":Z
    .end local p1    # "activityContext":Landroid/content/Context;
    :catchall_1
    move-exception v0

    throw v0

    .line 752
    .restart local v8    # "background_time":J
    .restart local v13    # "session_continue":Z
    .restart local p1    # "activityContext":Landroid/content/Context;
    :cond_8
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->mReferrerThread:Lcom/igaworks/impl/ReferrerThread;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 753
    :catch_1
    move-exception v11

    .line 754
    .local v11, "exception":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 765
    .end local v11    # "exception":Ljava/lang/Exception;
    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/igaworks/impl/CommonFrameworkImpl;->shouldSendCompleteCall:Z

    .line 766
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/igaworks/impl/CommonFrameworkImpl;->startSessionTime:J

    goto :goto_1

    .line 769
    :cond_a
    const/4 v0, 0x1

    sput-boolean v0, Lcom/igaworks/impl/CommonFrameworkImpl;->shouldSendCompleteCall:Z

    .line 770
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/igaworks/impl/CommonFrameworkImpl;->startSessionTime:J

    goto :goto_1

    .line 773
    :cond_b
    const/4 v13, 0x1

    .line 774
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/impl/CommonFrameworkImpl;->shouldSendCompleteCall:Z

    goto :goto_1

    .line 818
    :cond_c
    if-nez v13, :cond_d

    .line 820
    const-string v0, ""

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_activity:Ljava/lang/String;

    .line 821
    const-string v0, ""

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_group:Ljava/lang/String;

    .line 822
    const-string v1, "session"

    const-string v2, "start"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 828
    :cond_d
    if-nez v13, :cond_e

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igaworks/impl/CommonFrameworkImpl;->endSessionParam:J

    .line 829
    :cond_e
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 830
    invoke-static {}, Lcom/igaworks/impl/InternalAction;->getInstance()Lcom/igaworks/impl/InternalAction;

    move-result-object v0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    const-string v4, "session"

    const-string v5, "start"

    sget-wide v6, Lcom/igaworks/impl/CommonFrameworkImpl;->endSessionParam:J

    invoke-virtual/range {v0 .. v7}, Lcom/igaworks/impl/InternalAction;->trackingForAdbrixCall(Landroid/content/Context;ZLcom/igaworks/net/CommonHttpManager;Ljava/lang/String;Ljava/lang/String;J)V

    .line 833
    :cond_f
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igaworks/impl/CommonFrameworkImpl;->endTimer:J

    .line 834
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 835
    :try_start_8
    sget v0, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    .line 836
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 845
    :try_start_9
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_11

    .line 846
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "activityContext":Landroid/content/Context;
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/impl/CommonFrameworkImpl;->deeplinkConversion(Landroid/app/Activity;Z)V

    .line 851
    :goto_4
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/util/CommonHelper;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 852
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igaworks/impl/CommonFrameworkImpl;->resendDeeplinkConversion(Landroid/content/Context;)V

    .line 854
    :cond_10
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    if-eqz v0, :cond_7

    .line 855
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IGAW_QA"

    const-string v2, "channel_type : %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v5}, Lcom/igaworks/core/RequestParameter;->getChannelType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    .line 836
    .restart local p1    # "activityContext":Landroid/content/Context;
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    .line 848
    :cond_11
    const-string v0, "IGAW_QA"

    const-string v1, "appContext is not Activity context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4
.end method


# virtual methods
.method protected activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;
    .param p4, "createdAt"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/igaworks/impl/CommonFrameworkImpl;->activityImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected activityImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;
    .param p4, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    const-string v7, ""

    .line 327
    .local v7, "created_at":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 328
    .local v13, "mDateAndTime":Ljava/util/Calendar;
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 329
    .local v9, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, "event_id":Ljava/lang/String;
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5

    .line 332
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 333
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 334
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->GetKSTServerTimeAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 347
    :goto_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_6

    .line 349
    const-string v2, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 352
    .local v14, "restoreObj":Lorg/json/JSONObject;
    const-string v2, "group"

    move-object/from16 v0, p1

    invoke-virtual {v14, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v2, "activity"

    move-object/from16 v0, p2

    invoke-virtual {v14, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v2, "param"

    move-object/from16 v0, p3

    invoke-virtual {v14, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    const-string v2, "createdAt"

    invoke-virtual {v14, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    sget-object v2, Lcom/igaworks/impl/CommonFrameworkImpl;->restoreForNullContext:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v14    # "restoreObj":Lorg/json/JSONObject;
    :cond_1
    const-string v2, "IGAW_QA"

    const-string v3, "ADBrixManager > application context error, please check context value. startSession() should be called at least once."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v7    # "created_at":Ljava/lang/String;
    .end local v8    # "event_id":Ljava/lang/String;
    .end local v9    # "date":Ljava/util/Date;
    .end local v13    # "mDateAndTime":Ljava/util/Calendar;
    :cond_2
    :goto_1
    return-void

    .line 336
    .restart local v7    # "created_at":Ljava/lang/String;
    .restart local v8    # "event_id":Ljava/lang/String;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v13    # "mDateAndTime":Ljava/util/Calendar;
    :cond_3
    const-string v7, ""

    goto :goto_0

    .line 339
    :cond_4
    const-string v7, ""

    goto :goto_0

    .line 344
    :cond_5
    move-object/from16 v7, p4

    goto :goto_0

    .line 365
    :cond_6
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/igaworks/impl/CommonFrameworkImpl;->initAppInfo(Landroid/content/Context;)V

    .line 367
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixManager > activity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_group:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_activity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :try_start_1
    sget-object v2, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_group:Ljava/lang/String;

    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_activity:Ljava/lang/String;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v8}, Lcom/igaworks/core/RequestParameter;->convertActivityStringToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->activity_info:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 398
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->activity_info:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->addTrackingActivityAsyn(Ljava/lang/String;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    .line 414
    const-string v2, "session"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "end"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 421
    :goto_3
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getActivityListener()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 422
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getActivityListener()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/igaworks/interfaces/CommonActivityListener;

    .line 424
    .local v12, "item":Lcom/igaworks/interfaces/CommonActivityListener;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v12, v3, v0, v1, v4}, Lcom/igaworks/interfaces/CommonActivityListener;->onActivityCalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 443
    .end local v7    # "created_at":Ljava/lang/String;
    .end local v8    # "event_id":Ljava/lang/String;
    .end local v9    # "date":Ljava/util/Date;
    .end local v12    # "item":Lcom/igaworks/interfaces/CommonActivityListener;
    .end local v13    # "mDateAndTime":Ljava/util/Calendar;
    :catch_0
    move-exception v10

    .line 444
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 373
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "created_at":Ljava/lang/String;
    .restart local v8    # "event_id":Ljava/lang/String;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v13    # "mDateAndTime":Ljava/util/Calendar;
    :catch_1
    move-exception v10

    .line 376
    .restart local v10    # "e":Ljava/lang/Exception;
    if-eqz p3, :cond_7

    .line 377
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->activity_info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{\"prev_group\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_group:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"prev_activity\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_activity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"group\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"activity\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"param\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"event_id\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"created_at\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->activity_info:Ljava/lang/String;

    .line 388
    :goto_5
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error occurred during create activity_info text : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 389
    :catch_2
    move-exception v11

    .line 390
    .local v11, "e1":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activityImpl Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 382
    .end local v11    # "e1":Ljava/lang/Exception;
    :cond_7
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->activity_info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{\"prev_group\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_group:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"prev_activity\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_activity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"group\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"activity\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"param\":\"\",\"event_id\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"created_at\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->activity_info:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_5

    .line 417
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_6
    sput-object p2, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_activity:Ljava/lang/String;

    .line 418
    sput-object p1, Lcom/igaworks/impl/CommonFrameworkImpl;->prev_group:Ljava/lang/String;

    goto/16 :goto_3

    .line 431
    :cond_9
    sget-object v2, Lcom/igaworks/impl/CommonFrameworkImpl;->GROUPS_FOR_TRACKING_INSTANTLY:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "session"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "start"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "end"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 432
    :cond_a
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 433
    invoke-virtual {p0}, Lcom/igaworks/impl/CommonFrameworkImpl;->flush()V

    goto/16 :goto_1

    .line 436
    :cond_b
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IGAW_QA"

    const-string v4, "Can not connect to Adbrix. No internet connection now"

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1
.end method

.method public aprt(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1023
    const-string v1, "ret"

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1024
    return-void
.end method

.method public aprt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 1027
    const-string v1, "ret"

    const/4 v4, 0x0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1028
    return-void
.end method

.method public custom(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1219
    const-string v1, "custom"

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1221
    return-void
.end method

.method public custom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1227
    const-string v1, "custom"

    const/4 v4, 0x0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1229
    return-void
.end method

.method public custom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;

    .prologue
    .line 1237
    const/4 v4, 0x0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1239
    return-void
.end method

.method public deeplinkConversion(Landroid/app/Activity;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callFromAPI"    # Z

    .prologue
    .line 1471
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/impl/CommonFrameworkImpl$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/impl/CommonFrameworkImpl$9;-><init>(Lcom/igaworks/impl/CommonFrameworkImpl;Landroid/app/Activity;Z)V

    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 1732
    return-void
.end method

.method public endSession()V
    .locals 4

    .prologue
    .line 871
    :try_start_0
    new-instance v1, Lcom/igaworks/impl/SessionTrackingIntegration;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/igaworks/impl/SessionTrackingIntegration;-><init>(II)V

    .line 872
    .local v1, "mSessionTrackingIntegration":Lcom/igaworks/impl/SessionTrackingIntegration;
    invoke-virtual {v1}, Lcom/igaworks/impl/SessionTrackingIntegration;->validSessionIntegration()Z

    move-result v2

    if-nez v2, :cond_0

    .line 873
    const-string v2, "IGAW_QA"

    const-string v3, "Skip calling endSession. endSession consecutively"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    .end local v1    # "mSessionTrackingIntegration":Lcom/igaworks/impl/SessionTrackingIntegration;
    :goto_0
    return-void

    .line 876
    .restart local v1    # "mSessionTrackingIntegration":Lcom/igaworks/impl/SessionTrackingIntegration;
    :cond_0
    invoke-direct {p0}, Lcom/igaworks/impl/CommonFrameworkImpl;->endSessionImpl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 877
    .end local v1    # "mSessionTrackingIntegration":Lcom/igaworks/impl/SessionTrackingIntegration;
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 879
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorName"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1211
    const-string v1, "error"

    const/4 v4, 0x0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1213
    return-void
.end method

.method public flush()V
    .locals 9

    .prologue
    .line 1002
    :try_start_0
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1020
    :goto_0
    return-void

    .line 1005
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1006
    const-string v0, "IGAW_QA"

    const-string v1, "ADBrixManager > application context error, please check context value. startSession() should be called at least once."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1014
    :catch_0
    move-exception v8

    .line 1015
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FLUSH ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1017
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0

    .line 1010
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IGAW_QA"

    const-string v2, "ADBrixManager > flush started"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1011
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igaworks/impl/CommonFrameworkImpl;->getHttpManager(Landroid/content/Context;)Lcom/igaworks/net/CommonHttpManager;

    move-result-object v0

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    .line 1012
    invoke-static {}, Lcom/igaworks/impl/InternalAction;->getInstance()Lcom/igaworks/impl/InternalAction;

    move-result-object v0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    const-string v4, "n/a"

    const-string v5, "n/a"

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/igaworks/impl/InternalAction;->trackingForAdbrixCall(Landroid/content/Context;ZLcom/igaworks/net/CommonHttpManager;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected getHttpManager(Landroid/content/Context;)Lcom/igaworks/net/CommonHttpManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl;->initAppInfo(Landroid/content/Context;)V

    .line 183
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    if-nez v0, :cond_1

    .line 184
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/igaworks/net/CommonHttpManager;

    invoke-direct {v0}, Lcom/igaworks/net/CommonHttpManager;-><init>()V

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    .line 188
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_1
    sget-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public initAppInfo(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 202
    :try_start_0
    sget-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->appkey:Ljava/lang/String;

    if-eqz v8, :cond_1

    sget-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->hashkey:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    sget-boolean v8, Lcom/igaworks/impl/CommonFrameworkImpl;->isInitializingAppInfo:Z

    if-nez v8, :cond_0

    .line 206
    const/4 v8, 0x1

    sput-boolean v8, Lcom/igaworks/impl/CommonFrameworkImpl;->isInitializingAppInfo:Z

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 210
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v8, :cond_2

    .line 211
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "ADBrix SDK can not find meta-data tags required. Please check that meta-data tag is in the application tag."

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v5

    .line 274
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/Exception;

    const-string v10, "ADBrix >> AndroidManifest.xml setting Error : Check AndroidManifest.xml file -> Are meta-data tags in application tag"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 214
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_1
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "adbrix_app_key"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 215
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "adbrix_app_key"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->appkey:Ljava/lang/String;

    .line 217
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "adbrix_hash_key"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 218
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "adbrix_hash_key"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->hashkey:Ljava/lang/String;

    .line 222
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "adbrix_market_info"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 223
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "adbrix_market_info"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->marketInfo:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    :goto_1
    :try_start_2
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "igaworks_third_party_id"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 260
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "igaworks_third_party_id"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->thirdPartyID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 267
    :cond_3
    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/igaworks/core/OpenUDID_manager;->sync(Landroid/content/Context;)V

    .line 268
    sget-object v10, Lcom/igaworks/impl/CommonFrameworkImpl;->lock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 269
    const/4 v8, 0x0

    :try_start_4
    sput v8, Lcom/igaworks/impl/CommonFrameworkImpl;->session_stack_count:I

    .line 270
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    :try_start_5
    const-string v8, "android.permission.INTERNET"

    invoke-static {p1, v8}, Lcom/igaworks/util/CommonHelper;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 279
    .local v1, "canAccessInternet":Z
    const-string v8, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v8}, Lcom/igaworks/util/CommonHelper;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 280
    .local v2, "canAccessNetworkState":Z
    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v8}, Lcom/igaworks/util/CommonHelper;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 281
    .local v3, "canReadExternalStorage":Z
    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v8}, Lcom/igaworks/util/CommonHelper;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 282
    .local v4, "canWriteExternalStrorage":Z
    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    .line 283
    .local v7, "haveAllRequiredPermisison":Z
    :goto_3
    sget-boolean v8, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasAdbrixSDK:Z

    if-eqz v8, :cond_e

    .line 284
    const-string v8, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADBrixManager > adbrix version : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/igaworks/core/IgawUpdateLog;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {p1, v8, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 288
    :goto_4
    const-string v8, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADBrixManager > common version : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/igaworks/core/IgawUpdateLog;->getCommonVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {p1, v8, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 289
    const-string v8, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADBrixManager > appkey : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/igaworks/impl/CommonFrameworkImpl;->appkey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {p1, v8, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 290
    const-string v8, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADBrixManager > marketInfo : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/igaworks/impl/CommonFrameworkImpl;->marketInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {p1, v8, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 291
    const-string v8, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADBrixManager > thirdPartyInfo : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/igaworks/impl/CommonFrameworkImpl;->thirdPartyID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {p1, v8, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 292
    const-string v8, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADBrixManager > set READ_EXTERNAL_STORAGE permission : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {p1, v8, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 293
    const-string v8, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADBrixManager > set WRITE_EXTERNAL_STORAGE permission : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {p1, v8, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 294
    const-string v8, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADBrixManager > set Adbrix Receiver : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Lcom/igaworks/util/CommonHelper;->checkReceiver(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {p1, v8, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 295
    const-string v8, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADBrixManager > have all required permisison: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {p1, v8, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 300
    .end local v1    # "canAccessInternet":Z
    .end local v2    # "canAccessNetworkState":Z
    .end local v3    # "canReadExternalStorage":Z
    .end local v4    # "canWriteExternalStrorage":Z
    .end local v7    # "haveAllRequiredPermisison":Z
    :goto_5
    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v8

    sget-object v10, Lcom/igaworks/impl/CommonFrameworkImpl;->appkey:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/igaworks/core/RequestParameter;->setAppKey(Ljava/lang/String;)V

    .line 301
    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v8

    sget-object v10, Lcom/igaworks/impl/CommonFrameworkImpl;->hashkey:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/igaworks/core/RequestParameter;->setHashkey(Ljava/lang/String;)V

    .line 302
    sput-boolean v9, Lcom/igaworks/impl/CommonFrameworkImpl;->isInitializingAppInfo:Z

    goto/16 :goto_0

    .line 220
    :cond_4
    :try_start_6
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "ADBrix SDK can not find meta-data tag named \'adbrix_hash_key\'. please check a menifest file and add \'adbrix_hash_key\'. "

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 225
    :cond_5
    const-string v8, "google"

    sput-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->marketInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 226
    :cond_6
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "adPOPcorn_media_key"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 228
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "adPOPcorn_media_key"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->appkey:Ljava/lang/String;

    .line 230
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "adPOPcorn_hash_key"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 231
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "adPOPcorn_hash_key"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->hashkey:Ljava/lang/String;

    .line 235
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "adPOPcorn_market_info"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 236
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "adPOPcorn_market_info"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->marketInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 233
    :cond_7
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "ADBrix SDK can not find meta-data tag named \'adPOPcorn_hash_key\'. please check a menifest file and add \'adPOPcorn_hash_key\'. "

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 238
    :cond_8
    const-string v8, "google"

    sput-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->marketInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 242
    :cond_9
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "igaworks_app_key"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 243
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "igaworks_app_key"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->appkey:Ljava/lang/String;

    .line 247
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "igaworks_hash_key"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 248
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "igaworks_hash_key"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->hashkey:Ljava/lang/String;

    .line 252
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "igaworks_market_info"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 253
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "igaworks_market_info"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->marketInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 245
    :cond_a
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "ADBrix SDK can not find meta-data tag named \'igaworks_app_key\'. please check a menifest file and add \'igaworks_app_key\'. "

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 250
    :cond_b
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "ADBrix SDK can not find meta-data tag named \'igaworks_hash_key\'. please check a menifest file and add \'igaworks_hash_key\'. "

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 255
    :cond_c
    const-string v8, "google"

    sput-object v8, Lcom/igaworks/impl/CommonFrameworkImpl;->marketInfo:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 270
    :catchall_0
    move-exception v8

    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .restart local v1    # "canAccessInternet":Z
    .restart local v2    # "canAccessNetworkState":Z
    .restart local v3    # "canReadExternalStorage":Z
    .restart local v4    # "canWriteExternalStrorage":Z
    :cond_d
    move v7, v9

    .line 282
    goto/16 :goto_3

    .line 286
    .restart local v7    # "haveAllRequiredPermisison":Z
    :cond_e
    :try_start_9
    const-string v8, "IGAW_QA"

    const-string v10, "ADBrixManager > common only"

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {p1, v8, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4

    .line 296
    .end local v1    # "canAccessInternet":Z
    .end local v2    # "canAccessNetworkState":Z
    .end local v3    # "canReadExternalStorage":Z
    .end local v4    # "canWriteExternalStrorage":Z
    .end local v7    # "haveAllRequiredPermisison":Z
    :catch_1
    move-exception v6

    .line 297
    .local v6, "e1":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    const-string v8, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 262
    .end local v6    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    goto/16 :goto_2
.end method

.method public onReceiveReferral(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/impl/CommonFrameworkImpl;->onReceiveReferral(Landroid/content/Context;Ljava/lang/String;)V

    .line 1258
    return-void
.end method

.method public onReceiveReferral(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 1264
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1265
    const-string v1, "IGAW_QA"

    const-string v2, "ADBrixManager > application context error, please check context value. startSession() should be called at least once."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1303
    :goto_0
    return-void

    .line 1270
    :cond_0
    invoke-virtual {p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl;->initAppInfo(Landroid/content/Context;)V

    .line 1272
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    if-nez v1, :cond_1

    .line 1273
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v1

    sput-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    .line 1276
    :cond_1
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v1}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v1}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 1277
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/dao/ReferralInfoDAO;->getOnReceiveReferralFlag(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1279
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/igaworks/impl/CommonFrameworkImpl$7;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl$7;-><init>(Lcom/igaworks/impl/CommonFrameworkImpl;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1289
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/igaworks/impl/CommonFrameworkImpl;->navigateDeeplinkActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1298
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method protected save_demographic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1107
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1108
    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->localDemographicInfo:Ljava/util/List;

    if-nez v5, :cond_0

    .line 1109
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->localDemographicInfo:Ljava/util/List;

    .line 1110
    :cond_0
    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->localDemographicInfo:Ljava/util/List;

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    const-string v5, "IGAW_QA"

    const-string v6, "Null context on save_demographic, pls call startSession first"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :goto_0
    return-void

    .line 1113
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADBrixManager > save_demographic() >> key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1116
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "persistantDemoForTracking"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1117
    .local v4, "persistantDemoPref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1118
    .local v3, "persistantDemoEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1119
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1121
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "demoForTracking"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1122
    .local v1, "demoPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1123
    .local v0, "demoEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1127
    .end local v0    # "demoEditor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "demoPref":Landroid/content/SharedPreferences;
    .end local v3    # "persistantDemoEditor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "persistantDemoPref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 1128
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAge(I)V
    .locals 2
    .param p1, "age"    # I

    .prologue
    .line 1033
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1034
    const-string v0, "IGAW_QA"

    const-string v1, "ADBrixManager > application context error, please check context value. startSession() should be called at least once."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :goto_0
    return-void

    .line 1038
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igaworks/impl/CommonFrameworkImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl$4;-><init>(Lcom/igaworks/impl/CommonFrameworkImpl;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1050
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setClientRewardEventListener(Lcom/igaworks/interfaces/IgawRewardItemEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/igaworks/interfaces/IgawRewardItemEventListener;

    .prologue
    .line 1246
    sput-object p1, Lcom/igaworks/impl/CommonFrameworkImpl;->clientRewardlistener:Lcom/igaworks/interfaces/IgawRewardItemEventListener;

    .line 1247
    return-void
.end method

.method public setCommonAPCallbackListener(Lcom/igaworks/interfaces/ICommonAPCallbackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/igaworks/interfaces/ICommonAPCallbackListener;

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->commonAPCallbackListener:Lcom/igaworks/interfaces/ICommonAPCallbackListener;

    .line 1098
    return-void
.end method

.method public setCommonLiveOpsCallbackListener(Lcom/igaworks/interfaces/ICommonLiveOpsCallbackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/igaworks/interfaces/ICommonLiveOpsCallbackListener;

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/igaworks/impl/CommonFrameworkImpl;->commonLiveOpsCallbackListener:Lcom/igaworks/interfaces/ICommonLiveOpsCallbackListener;

    .line 1102
    return-void
.end method

.method public setDeferredLinkListener(Landroid/content/Context;Lcom/igaworks/interfaces/DeferredLinkListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/igaworks/interfaces/DeferredLinkListener;

    .prologue
    .line 1736
    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1737
    invoke-virtual {p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl;->getHttpManager(Landroid/content/Context;)Lcom/igaworks/net/CommonHttpManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igaworks/net/CommonHttpManager;->setDeferredLinkListener(Landroid/content/Context;Lcom/igaworks/interfaces/DeferredLinkListener;)V

    .line 1742
    :goto_0
    return-void

    .line 1740
    :cond_0
    const-string v0, "IGAW_QA"

    const-string v1, "Skip setDeferredLinkListener >> it is called after sdk gets Adbrix information"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public setGender(I)V
    .locals 2
    .param p1, "gender"    # I

    .prologue
    .line 1057
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1058
    const-string v0, "IGAW_QA"

    const-string v1, "ADBrixManager > application context error, please check context value. startSession() should be called at least once."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :goto_0
    return-void

    .line 1062
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igaworks/impl/CommonFrameworkImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl$5;-><init>(Lcom/igaworks/impl/CommonFrameworkImpl;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1070
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setReferralUrlForFacebook(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deeplinkStr"    # Ljava/lang/String;

    .prologue
    .line 1747
    invoke-static {p1}, Lcom/igaworks/impl/CommonFrameworkImpl;->setContext(Landroid/content/Context;)V

    .line 1748
    invoke-virtual {p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl;->initAppInfo(Landroid/content/Context;)V

    .line 1749
    invoke-static {p1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v0

    sput-object v0, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    .line 1750
    sget-object v0, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/impl/CommonFrameworkImpl$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/impl/CommonFrameworkImpl$10;-><init>(Lcom/igaworks/impl/CommonFrameworkImpl;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1915
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 1075
    move-object v1, p1

    .line 1076
    .local v1, "usn":Ljava/lang/String;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1077
    const-string v2, "IGAW_QA"

    const-string v3, "setUserId: ADBrixManager > application context error, please check context value. startSession() should be called at least once."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_0
    return-void

    .line 1081
    :cond_0
    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1082
    :cond_1
    const-string v1, ""

    .line 1084
    :cond_2
    move-object v0, v1

    .line 1085
    .local v0, "_usn":Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/igaworks/impl/CommonFrameworkImpl$6;

    invoke-direct {v3, p0, v0}, Lcom/igaworks/impl/CommonFrameworkImpl$6;-><init>(Lcom/igaworks/impl/CommonFrameworkImpl;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1093
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public startApplicationForInternalUse(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 457
    sget-boolean v1, Lcom/igaworks/impl/CommonFrameworkImpl;->callStartApplicationAlready:Z

    if-eqz v1, :cond_0

    .line 494
    :goto_0
    return-void

    .line 460
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/igaworks/impl/CommonFrameworkImpl;->callStartApplicationAlready:Z

    .line 464
    :try_start_0
    invoke-static {p1}, Lcom/igaworks/impl/CommonFrameworkImpl;->setContext(Landroid/content/Context;)V

    .line 465
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IGAW_QA"

    const-string v3, "IgawSDK >> initialized"

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 466
    invoke-static {}, Lcom/igaworks/dao/CoreIDDAO;->getInstance()Lcom/igaworks/dao/CoreIDDAO;

    move-result-object v1

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/igaworks/dao/CoreIDDAO;->initialize(Landroid/content/Context;)V

    .line 469
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v1

    sput-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    .line 470
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/igaworks/impl/CommonFrameworkImpl;->getHttpManager(Landroid/content/Context;)Lcom/igaworks/net/CommonHttpManager;

    move-result-object v1

    sput-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    .line 472
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/igaworks/impl/CommonFrameworkImpl;->initAppInfo(Landroid/content/Context;)V

    .line 474
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v1

    sput-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    .line 475
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    sget-object v2, Lcom/igaworks/impl/CommonFrameworkImpl;->appkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/igaworks/core/RequestParameter;->setAppKey(Ljava/lang/String;)V

    .line 476
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    sget-object v2, Lcom/igaworks/impl/CommonFrameworkImpl;->appkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/igaworks/core/RequestParameter;->setMc(Ljava/lang/String;)V

    .line 477
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    sget-object v2, Lcom/igaworks/impl/CommonFrameworkImpl;->thirdPartyID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/igaworks/core/RequestParameter;->setThirdPartyID(Ljava/lang/String;)V

    .line 478
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    const-string v2, "start"

    invoke-virtual {v1, v2}, Lcom/igaworks/core/RequestParameter;->setActivityName(Ljava/lang/String;)V

    .line 479
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    sget-object v2, Lcom/igaworks/impl/CommonFrameworkImpl;->marketInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/igaworks/core/RequestParameter;->setMarketPlace(Ljava/lang/String;)V

    .line 480
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    sget-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->security_enable:Z

    invoke-virtual {v1, v2}, Lcom/igaworks/core/RequestParameter;->setSecurity_enable(Z)V

    .line 481
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    sget-object v2, Lcom/igaworks/impl/CommonFrameworkImpl;->hashkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/igaworks/core/RequestParameter;->setHashkey(Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/igaworks/impl/InternalAction;->getInstance()Lcom/igaworks/impl/InternalAction;

    move-result-object v1

    sget-boolean v2, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    invoke-virtual {v1, p1, v2, v3}, Lcom/igaworks/impl/InternalAction;->sendOphanActivities(Landroid/content/Context;ZLcom/igaworks/net/CommonHttpManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public startSession(Landroid/content/Context;)V
    .locals 23
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 503
    new-instance v15, Lcom/igaworks/impl/SessionTrackingIntegration;

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lcom/igaworks/impl/SessionTrackingIntegration;-><init>(II)V

    .line 504
    .local v15, "mSessionTrackingIntegration":Lcom/igaworks/impl/SessionTrackingIntegration;
    invoke-virtual {v15}, Lcom/igaworks/impl/SessionTrackingIntegration;->validSessionIntegration()Z

    move-result v18

    if-nez v18, :cond_1

    .line 505
    const-string v18, "IGAW_QA"

    const-string v19, "Skip calling startSession. startSession consecutively"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    :try_start_0
    const-string v18, "com.igaworks.adbrix.impl.ADBrixFrameworkFactory"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 517
    :goto_1
    :try_start_1
    sget-object v18, Lcom/igaworks/impl/CommonFrameworkImpl;->UEH_Enable:Ljava/lang/Boolean;

    if-nez v18, :cond_2

    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x80

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 519
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 520
    .local v8, "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_2

    .line 521
    const-string v18, "igaw_ueh_enable"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 522
    .local v6, "UEH_Setting":Ljava/lang/String;
    if-eqz v6, :cond_5

    const-string v18, "disable"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 523
    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v18, Lcom/igaworks/impl/CommonFrameworkImpl;->UEH_Enable:Ljava/lang/Boolean;

    .line 524
    const-string v18, "IGAW_QA"

    const-string v19, "Manifest Settings: igaw_ueh_enable = disable"

    const/16 v20, 0x3

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 541
    .end local v6    # "UEH_Setting":Ljava/lang/String;
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_2
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/igaworks/impl/CommonFrameworkImpl;->setContext(Landroid/content/Context;)V

    .line 542
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v18

    sput-object v18, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    .line 543
    invoke-virtual/range {p0 .. p1}, Lcom/igaworks/impl/CommonFrameworkImpl;->getHttpManager(Landroid/content/Context;)Lcom/igaworks/net/CommonHttpManager;

    move-result-object v18

    sput-object v18, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    .line 544
    invoke-virtual/range {p0 .. p1}, Lcom/igaworks/impl/CommonFrameworkImpl;->initAppInfo(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    :try_start_3
    sget-boolean v18, Lcom/igaworks/impl/CommonFrameworkImpl;->callStartApplicationAlready:Z

    if-nez v18, :cond_3

    .line 548
    const/16 v18, 0x1

    sput-boolean v18, Lcom/igaworks/impl/CommonFrameworkImpl;->callStartApplicationAlready:Z

    .line 549
    invoke-static {}, Lcom/igaworks/impl/InternalAction;->getInstance()Lcom/igaworks/impl/InternalAction;

    move-result-object v18

    sget-boolean v19, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    sget-object v20, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/igaworks/impl/InternalAction;->sendOphanActivities(Landroid/content/Context;ZLcom/igaworks/net/CommonHttpManager;)V

    .line 550
    invoke-static {}, Lcom/igaworks/dao/CoreIDDAO;->getInstance()Lcom/igaworks/dao/CoreIDDAO;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/igaworks/dao/CoreIDDAO;->initialize(Landroid/content/Context;)V

    .line 551
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "IGAW_QA"

    const-string v20, "IgawSDK >> initialized."

    const/16 v21, 0x3

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 562
    :cond_3
    :goto_3
    const/16 v18, 0x0

    :try_start_4
    invoke-static/range {v18 .. v18}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v18

    new-instance v19, Lcom/igaworks/impl/CommonFrameworkImpl$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/igaworks/impl/CommonFrameworkImpl$1;-><init>(Lcom/igaworks/impl/CommonFrameworkImpl;)V

    sget-object v20, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual/range {v18 .. v20}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 643
    invoke-direct/range {p0 .. p1}, Lcom/igaworks/impl/CommonFrameworkImpl;->startSessionImpl(Landroid/content/Context;)V

    .line 644
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/igaworks/impl/CommonFrameworkImpl;->restoreActivityForNullContext(Landroid/content/Context;)V

    .line 649
    invoke-static/range {p1 .. p1}, Lcom/igaworks/dao/CrashDAO;->getCrashes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 650
    .local v10, "crashInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v18, "IGAW_QA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "We have crash info count "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 651
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v18

    if-lez v18, :cond_0

    .line 654
    :try_start_5
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v16, "pArr":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const-string v18, "IGAW_QA"

    const-string v19, "Start to retrry sending crashReporting"

    const/16 v20, 0x2

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 657
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v18

    if-lez v18, :cond_0

    .line 660
    const/4 v5, 0x2

    .line 661
    .local v5, "SIZE_LIMIT":I
    const/4 v9, 0x1

    .line 662
    .local v9, "count":I
    :try_start_6
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 663
    .local v17, "pJsonString":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    .line 664
    if-le v9, v5, :cond_7

    .line 665
    const-string v18, "IGAW_QA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Size limit >> Keep only "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " event log."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 671
    .end local v17    # "pJsonString":Ljava/lang/String;
    :cond_4
    const-string v18, "IGAW_QA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Start to retrry sending crashReporting II "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 672
    sget-object v18, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    sget-object v19, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/igaworks/net/CommonHttpManager;->reportingCrash(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 673
    :catch_0
    move-exception v11

    .line 674
    .local v11, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 677
    .end local v5    # "SIZE_LIMIT":I
    .end local v9    # "count":I
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v16    # "pArr":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :catch_1
    move-exception v11

    .line 678
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 681
    .end local v10    # "crashInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    .line 682
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 683
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    throw v18

    .line 512
    :catch_3
    move-exception v11

    .line 513
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v18, "IGAW_QA"

    const-string v19, "IgawCommon >> Common only sdk mode."

    const/16 v20, 0x3

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 526
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "UEH_Setting":Ljava/lang/String;
    .restart local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :cond_5
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/igaworks/impl/CustomExceptionHandler;

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 527
    new-instance v18, Lcom/igaworks/impl/CustomExceptionHandler;

    invoke-direct/range {v18 .. v18}, Lcom/igaworks/impl/CustomExceptionHandler;-><init>()V

    invoke-static/range {v18 .. v18}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 530
    :cond_6
    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v18, Lcom/igaworks/impl/CommonFrameworkImpl;->UEH_Enable:Ljava/lang/Boolean;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_2

    .line 534
    .end local v6    # "UEH_Setting":Ljava/lang/String;
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "bundle":Landroid/os/Bundle;
    :catch_4
    move-exception v18

    goto/16 :goto_2

    .line 535
    :catch_5
    move-exception v13

    .line 536
    .local v13, "e2":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 554
    .end local v13    # "e2":Ljava/lang/Exception;
    :catch_6
    move-exception v12

    .line 555
    .local v12, "e1":Ljava/lang/Exception;
    :try_start_b
    const-string v18, "IGAW_QA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sendOphanActivities Error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 668
    .end local v12    # "e1":Ljava/lang/Exception;
    .restart local v5    # "SIZE_LIMIT":I
    .restart local v9    # "count":I
    .restart local v10    # "crashInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "pArr":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v17    # "pJsonString":Ljava/lang/String;
    :cond_7
    :try_start_c
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 669
    .local v14, "jsonObj":Lorg/json/JSONObject;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4
.end method

.method public viral(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1195
    const-string v1, "viral"

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1197
    return-void
.end method

.method public viral(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1203
    const-string v1, "viral"

    const/4 v4, 0x0

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/impl/CommonFrameworkImpl;->activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1205
    return-void
.end method
