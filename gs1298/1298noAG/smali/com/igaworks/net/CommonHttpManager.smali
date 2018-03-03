.class public Lcom/igaworks/net/CommonHttpManager;
.super Lcom/igaworks/net/HttpManager;
.source "CommonHttpManager.java"


# static fields
.field public static final API1:I = 0x1

.field public static final API2:I = 0x2

.field public static final COMMON_CALLBACK_REFERRAL:I = 0x1

.field public static final ERR_MSG:Ljava/lang/String; = "errMsg"

.field private static isReturnDL:Z

.field private static mDeferredLinkListener:Lcom/igaworks/interfaces/DeferredLinkListener;

.field private static onCPIReferrerCall:Z

.field private static onReferrerCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lcom/igaworks/net/CommonHttpManager;->onReferrerCall:Z

    .line 63
    sput-boolean v0, Lcom/igaworks/net/CommonHttpManager;->onCPIReferrerCall:Z

    .line 64
    sput-boolean v0, Lcom/igaworks/net/CommonHttpManager;->isReturnDL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/igaworks/net/HttpManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;JLjava/lang/String;)Z
    .locals 2
    .param p0, "x0"    # Lcom/igaworks/net/CommonHttpManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igaworks/net/CommonHttpManager;->isNewInstall(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/igaworks/net/CommonHttpManager;->isReturnDL:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 54
    sput-boolean p0, Lcom/igaworks/net/CommonHttpManager;->isReturnDL:Z

    return p0
.end method

.method static synthetic access$200()Lcom/igaworks/interfaces/DeferredLinkListener;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/igaworks/net/CommonHttpManager;->mDeferredLinkListener:Lcom/igaworks/interfaces/DeferredLinkListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/igaworks/interfaces/DeferredLinkListener;)Lcom/igaworks/interfaces/DeferredLinkListener;
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/interfaces/DeferredLinkListener;

    .prologue
    .line 54
    sput-object p0, Lcom/igaworks/net/CommonHttpManager;->mDeferredLinkListener:Lcom/igaworks/interfaces/DeferredLinkListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/net/CommonHttpManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/igaworks/model/DeeplinkReEngagementConversion;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/igaworks/net/CommonHttpManager;->storeForRetryReEngagementConversion(Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V

    return-void
.end method

.method static synthetic access$400(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/net/CommonHttpManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/igaworks/model/DeeplinkReEngagementConversion;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/igaworks/net/CommonHttpManager;->storeForRetryThirdPartyConversion(Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V

    return-void
.end method

.method private isNewInstall(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "servertime_utc"    # J
    .param p4, "installDateTime_kst"    # Ljava/lang/String;

    .prologue
    .line 982
    const-wide/16 v10, -0x1

    cmp-long v7, p2, v10

    if-nez v7, :cond_0

    .line 983
    const-string v7, "IGAW_QA"

    const-string v10, "checking new install : missing baseTime"

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {p1, v7, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 984
    const/4 v7, 0x1

    .line 1001
    :goto_0
    return v7

    .line 986
    :cond_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMddHHmmss"

    sget-object v10, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v6, v7, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 987
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    const-string v7, "GMT+9"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 989
    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 990
    .local v3, "installDateTime_Date":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 991
    .local v4, "installDateTime_epoch":J
    sub-long v8, p2, v4

    .line 992
    .local v8, "time_pass":J
    const-string v7, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Time Pass: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {p1, v7, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 993
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    const-wide/32 v12, 0xea60

    cmp-long v7, v10, v12

    if-gez v7, :cond_1

    .line 994
    const/4 v7, 0x1

    goto :goto_0

    .line 995
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 997
    .end local v3    # "installDateTime_Date":Ljava/util/Date;
    .end local v4    # "installDateTime_epoch":J
    .end local v8    # "time_pass":J
    :catch_0
    move-exception v2

    .line 999
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 1000
    const-string v7, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checking new install : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {p1, v7, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1001
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private storeForRetryReEngagementConversion(Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlReEngMntConversion"    # Lcom/igaworks/model/DeeplinkReEngagementConversion;

    .prologue
    .line 1113
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/net/CommonHttpManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/net/CommonHttpManager$8;-><init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V

    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 1126
    return-void
.end method

.method private storeForRetryThirdPartyConversion(Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thirdPartyConversion"    # Lcom/igaworks/model/DeeplinkReEngagementConversion;

    .prologue
    .line 1252
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/net/CommonHttpManager$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/net/CommonHttpManager$10;-><init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V

    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 1265
    return-void
.end method


# virtual methods
.method public CPI_referrerCallForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/core/RequestParameter;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 358
    invoke-virtual {p0, v2}, Lcom/igaworks/net/CommonHttpManager;->setOnReferrerCall(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/igaworks/net/CommonHttpManager;->getOnCPIReferrerCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const-string v1, "IGAW_QA"

    const-string v2, "CPI referrerCallForADBrix > referral call already sent."

    const/4 v3, 0x3

    invoke-static {p2, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 644
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {p0, v2}, Lcom/igaworks/net/CommonHttpManager;->setOnCPIReferrerCall(Z)V

    .line 367
    :try_start_0
    invoke-static {p2}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v1

    new-instance v2, Lcom/igaworks/net/CommonHttpManager$2;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/igaworks/net/CommonHttpManager$2;-><init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Ljava/util/ArrayList;)V

    invoke-virtual {v1, p2, v2}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 638
    const-string v1, "IGAW_QA"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 639
    invoke-virtual {p0, v3}, Lcom/igaworks/net/CommonHttpManager;->setOnReferrerCall(Z)V

    .line 640
    invoke-virtual {p0, v3}, Lcom/igaworks/net/CommonHttpManager;->setOnCPIReferrerCall(Z)V

    .line 641
    invoke-static {p2, p3}, Lcom/igaworks/dao/ActivityInfoDAO;->restoreReferralTrackingInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public ReEngagementConversion(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    .locals 2
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dlReEngMntConversion"    # Lcom/igaworks/model/DeeplinkReEngagementConversion;

    .prologue
    .line 1008
    invoke-static {p2}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    new-instance v1, Lcom/igaworks/net/CommonHttpManager$7;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/igaworks/net/CommonHttpManager$7;-><init>(Lcom/igaworks/net/CommonHttpManager;Lcom/igaworks/model/DeeplinkReEngagementConversion;Lcom/igaworks/core/RequestParameter;Landroid/content/Context;)V

    invoke-virtual {v0, p2, v1}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .line 1110
    return-void
.end method

.method public ThirdPartyConversion(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    .locals 2
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "thirdPartyConversion"    # Lcom/igaworks/model/DeeplinkReEngagementConversion;

    .prologue
    .line 1132
    invoke-static {p2}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    new-instance v1, Lcom/igaworks/net/CommonHttpManager$9;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/igaworks/net/CommonHttpManager$9;-><init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;Lcom/igaworks/core/RequestParameter;)V

    invoke-virtual {v0, p2, v1}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .line 1249
    return-void
.end method

.method public conversionForDeeplink(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/core/RequestParameter;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/model/DeeplinkConversionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p3, "conversions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkConversionItem;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igaworks/net/CommonHttpManager$5;

    invoke-direct {v1, p0, p2, p3}, Lcom/igaworks/net/CommonHttpManager$5;-><init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 933
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 934
    return-void
.end method

.method public demographicCallForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;)V
    .locals 13
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 781
    iget-object v3, p0, Lcom/igaworks/net/CommonHttpManager;->DEMOGRAPHIC_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    .line 782
    .local v3, "url":Ljava/lang/String;
    const-string v10, ""

    .line 785
    .local v10, "param":Ljava/lang/String;
    :try_start_0
    const-string v0, "IGAW_QA"

    const-string v1, "demoCallForADBrix"

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-static {p2, v0, v1, v2, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 786
    invoke-virtual {p1}, Lcom/igaworks/core/RequestParameter;->getDemographicParameter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igaworks/core/RequestParameter;->getHashkey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igaworks/core/AESGetTrackParam;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 788
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 789
    .local v4, "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "k"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/igaworks/core/RequestParameter;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string v0, "j"

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    new-instance v11, Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/igaworks/net/HttpsUrlConnectionThread;

    const/4 v2, 0x1

    new-instance v5, Lcom/igaworks/net/CommonHttpManager$4;

    invoke-direct {v5, p0, p2}, Lcom/igaworks/net/CommonHttpManager$4;-><init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/net/HttpsUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    invoke-direct {v11, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 825
    .local v11, "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 826
    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    .end local v4    # "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v9

    .line 829
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 830
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 831
    .local v8, "Trace":[Ljava/lang/StackTraceElement;
    const-string v0, "IGAW_QA"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected declared-synchronized getOnCPIReferrerCall()Z
    .locals 1

    .prologue
    .line 971
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/igaworks/net/CommonHttpManager;->onCPIReferrerCall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getOnReferrerCall()Z
    .locals 1

    .prologue
    .line 963
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/igaworks/net/CommonHttpManager;->onReferrerCall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public normal_referrerCallForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/core/RequestParameter;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/igaworks/net/CommonHttpManager;->getOnReferrerCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "IGAW_QA"

    const-string v2, "referrerCallForADBrix > referral call already sent."

    const/4 v3, 0x3

    invoke-static {p2, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/igaworks/net/CommonHttpManager;->setOnReferrerCall(Z)V

    .line 78
    :try_start_0
    invoke-static {p2}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v1

    new-instance v2, Lcom/igaworks/net/CommonHttpManager$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/igaworks/net/CommonHttpManager$1;-><init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Ljava/util/ArrayList;)V

    invoke-virtual {v1, p2, v2}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    const-string v1, "IGAW_QA"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 349
    invoke-virtual {p0, v3}, Lcom/igaworks/net/CommonHttpManager;->setOnReferrerCall(Z)V

    .line 350
    invoke-static {p2, p3}, Lcom/igaworks/dao/ActivityInfoDAO;->restoreReferralTrackingInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public reportingCrash(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/core/RequestParameter;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1268
    .local p3, "err":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-static {p2}, Lcom/igaworks/util/CommonHelper;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    sget-object v0, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/net/CommonHttpManager$11;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/igaworks/net/CommonHttpManager$11;-><init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Ljava/util/List;Lcom/igaworks/core/RequestParameter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1444
    :goto_0
    return-void

    .line 1271
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/igaworks/net/CommonHttpManager;->restoreCrashInfo_Common(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

.method public restoreConversionInfo(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/DeeplinkConversionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 937
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/DeeplinkConversionItem;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/net/CommonHttpManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/net/CommonHttpManager$6;-><init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Ljava/util/List;)V

    sget-object v2, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 956
    return-void
.end method

.method protected restoreCrashInfo_Common(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "err":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 1447
    const/4 v1, 0x1

    .line 1448
    .local v1, "pCount":I
    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADBrixTracer, save Crash infos : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5, v9, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1449
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1450
    .local v0, "errJObject":Lorg/json/JSONObject;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy_MM_dd_HHmmss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1451
    .local v2, "s":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1452
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1453
    .local v3, "timestamp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "igaworks_crash_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1454
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADBrixTracer, save Crash infos to SP key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "values :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6, v9, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1455
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/igaworks/dao/CrashDAO;->updateCrash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    add-int/lit8 v1, v1, 0x1

    .line 1457
    goto :goto_0

    .line 1458
    .end local v0    # "errJObject":Lorg/json/JSONObject;
    .end local v2    # "s":Ljava/text/SimpleDateFormat;
    .end local v3    # "timestamp":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 774
    .local p2, "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    .local p3, "imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    invoke-static {p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v0

    const-string v1, "tbl_AppTracking"

    invoke-virtual {v0, p2, p1, v1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->reclaimDirtyDataForRetry(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    .line 775
    invoke-static {p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v0

    const-string v1, "tbl_ImpressionTracking"

    invoke-virtual {v0, p3, p1, v1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->reclaimDirtyDataForRetry(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    .line 776
    return-void
.end method

.method public setConversionCacheHistoryWithOneCommit(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 661
    .local p1, "conversionCacheHistoryData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "conversionCacheHistory"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 662
    .local v0, "conversionPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 664
    .local v1, "inputConversionKey":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 666
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::--::;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 669
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 670
    return-void
.end method

.method public setConversionCacheWithOutCommit(Ljava/util/ArrayList;Lcom/igaworks/core/RequestParameter;)V
    .locals 8
    .param p2, "params"    # Lcom/igaworks/core/RequestParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/igaworks/core/RequestParameter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 647
    .local p1, "conversionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "conversionCache"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 648
    .local v1, "conversionPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 649
    .local v2, "inputConversionKey":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 650
    .local v0, "conversionKey":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/igaworks/core/RequestParameter;->setTempConversionCache(I)V

    .line 651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 652
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "IGAW_QA"

    const-string v6, "conversionKey was already saved in storage"

    const/4 v7, 0x3

    invoke-static {v4, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 654
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 657
    .end local v0    # "conversionKey":Ljava/lang/Integer;
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 658
    return-void
.end method

.method public setDeferredLinkListener(Landroid/content/Context;Lcom/igaworks/interfaces/DeferredLinkListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_listener"    # Lcom/igaworks/interfaces/DeferredLinkListener;

    .prologue
    .line 975
    const-string v0, "IGAW_QA"

    const-string v1, "set DeferredLink Listener"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 976
    sput-object p2, Lcom/igaworks/net/CommonHttpManager;->mDeferredLinkListener:Lcom/igaworks/interfaces/DeferredLinkListener;

    .line 977
    return-void
.end method

.method protected declared-synchronized setOnCPIReferrerCall(Z)V
    .locals 1
    .param p1, "_onReferrerCall"    # Z

    .prologue
    .line 967
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/igaworks/net/CommonHttpManager;->onCPIReferrerCall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    monitor-exit p0

    return-void

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setOnReferrerCall(Z)V
    .locals 1
    .param p1, "_onReferrerCall"    # Z

    .prologue
    .line 959
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/igaworks/net/CommonHttpManager;->onReferrerCall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    monitor-exit p0

    return-void

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trackingForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/core/RequestParameter;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p3, "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    .local p4, "imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    :try_start_0
    invoke-static {p2}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v7

    new-instance v0, Lcom/igaworks/net/CommonHttpManager$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/net/CommonHttpManager$3;-><init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/igaworks/core/RequestParameter;)V

    invoke-virtual {v7, p2, v0}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_0
    return-void

    .line 763
    :catch_0
    move-exception v6

    .line 764
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 765
    const-string v0, "IGAW_QA"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 766
    invoke-virtual {p0, p2, p3, p4}, Lcom/igaworks/net/CommonHttpManager;->restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
