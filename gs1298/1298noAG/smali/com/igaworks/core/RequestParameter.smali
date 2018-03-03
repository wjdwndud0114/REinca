.class public Lcom/igaworks/core/RequestParameter;
.super Ljava/lang/Object;
.source "RequestParameter.java"


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "activity"

.field public static final AG:Ljava/lang/String; = "ag"

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final APPKEY:Ljava/lang/String; = "appkey"

.field public static final CARRIER:Ljava/lang/String; = "carrier"

.field public static final COHORT_1_NAME:Ljava/lang/String; = "custom_cohort_1"

.field public static final COHORT_2_NAME:Ljava/lang/String; = "custom_cohort_2"

.field public static final COHORT_3_NAME:Ljava/lang/String; = "custom_cohort_3"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final ERROR:Ljava/lang/String; = "ERROR"

.field public static final GOOGLE_AD_ID:Ljava/lang/String; = "google_ad_id"

.field public static final GOOGLE_AD_ID_OPT_OUT:Ljava/lang/String; = "google_ad_id_opt_out"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final INIT_AD_ID:Ljava/lang/String; = "initial_ad_id"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final MARKET:Ljava/lang/String; = "vendor"

.field public static final MC:Ljava/lang/String; = "mc"

.field public static final MODEL:Ljava/lang/String; = "model"

.field public static final NON_CUSTOM_NETWORK:Ljava/lang/String; = "nonCustomNetwork"

.field public static final OS:Ljava/lang/String; = "os"

.field public static final PLATFORM_TYPE:Ljava/lang/String; = "ptype"

.field public static final PUDID:Ljava/lang/String; = "pudid"

.field public static final PUID:Ljava/lang/String; = "puid"

.field public static final REQSEQ:Ljava/lang/String; = "reqseq"

.field private static final TAG:Ljava/lang/String; = "ATRequestParameter"

.field public static final VERSION:Ljava/lang/String; = "version"

.field public static final WIDTH:Ljava/lang/String; = "width"

.field public static final WIFI_DEVICE:Ljava/lang/String; = "wifi_device"

.field public static final df:Ljava/text/SimpleDateFormat;

.field private static singletonATRequestParameter:Lcom/igaworks/core/RequestParameter;

.field private static tempConversionCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static tempProcessedConversions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static tempRetainedConversionCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activity:Ljava/lang/String;

.field private adbrix_user_no:J

.field private adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

.field private ag:Ljava/lang/String;

.field private android_id:Ljava/lang/String;

.field private app_first_launch_time:J

.field private app_launch_count:J

.field private appkey:Ljava/lang/String;

.field private carrier:Ljava/lang/String;

.field private channel_type:I

.field private conversion_key:I

.field private didManager:Lcom/igaworks/core/DeviceIDManger;

.field private google_ad_id:Ljava/lang/String;

.field private google_ad_id_opt_out:Z

.field private hashkey:Ljava/lang/String;

.field private install_datetime:Ljava/lang/String;

.field private isNewInstall:Z

.field private isWifiDevice:Z

.field private last_referral_data:Ljava/lang/String;

.field private last_referral_datetime:Ljava/lang/String;

.field private last_referral_key:J

.field private life_hour:J

.field private market:Ljava/lang/String;

.field private mc:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private mudid:Ljava/lang/String;

.field private nonCustomNetwork:I

.field private openudid:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private pudid:Ljava/lang/String;

.field private puid:Ljava/lang/String;

.field private reengagement_conversion_key:J

.field private reengagement_data:Ljava/lang/String;

.field private reengagement_datetime:Ljava/lang/String;

.field private referral_data:Ljava/lang/String;

.field private referral_key:J

.field private refusn:Ljava/lang/String;

.field private reqseq:I

.field private security_enable:Z

.field private session_no:J

.field private shard_no:I

.field private subreferral_key:Ljava/lang/String;

.field private thirdPartyID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/core/RequestParameter;->df:Ljava/text/SimpleDateFormat;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igaworks/core/RequestParameter;->tempConversionCache:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igaworks/core/RequestParameter;->tempRetainedConversionCache:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igaworks/core/RequestParameter;->tempProcessedConversions:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v2, p0, Lcom/igaworks/core/RequestParameter;->reqseq:I

    .line 71
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->mc:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/core/RequestParameter;->appkey:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->puid:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->activity:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/core/RequestParameter;->model:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/core/RequestParameter;->carrier:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/core/RequestParameter;->os:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/core/RequestParameter;->market:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->pudid:Ljava/lang/String;

    .line 82
    iput v2, p0, Lcom/igaworks/core/RequestParameter;->nonCustomNetwork:I

    .line 83
    iput-boolean v2, p0, Lcom/igaworks/core/RequestParameter;->isWifiDevice:Z

    .line 84
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->android_id:Ljava/lang/String;

    .line 85
    iput-boolean v2, p0, Lcom/igaworks/core/RequestParameter;->security_enable:Z

    .line 86
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->openudid:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->hashkey:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->mudid:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/core/RequestParameter;->google_ad_id:Ljava/lang/String;

    .line 91
    iput-boolean v2, p0, Lcom/igaworks/core/RequestParameter;->google_ad_id_opt_out:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/core/RequestParameter;->ag:Ljava/lang/String;

    .line 94
    iput v3, p0, Lcom/igaworks/core/RequestParameter;->conversion_key:I

    .line 95
    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->session_no:J

    .line 96
    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->referral_key:J

    .line 97
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->subreferral_key:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->referral_data:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->reengagement_data:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->refusn:Ljava/lang/String;

    .line 101
    iput v3, p0, Lcom/igaworks/core/RequestParameter;->channel_type:I

    .line 102
    iput-wide v6, p0, Lcom/igaworks/core/RequestParameter;->app_launch_count:J

    .line 103
    iput-wide v6, p0, Lcom/igaworks/core/RequestParameter;->app_first_launch_time:J

    .line 104
    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->adbrix_user_no:J

    .line 105
    iput v3, p0, Lcom/igaworks/core/RequestParameter;->shard_no:I

    .line 106
    iput-wide v6, p0, Lcom/igaworks/core/RequestParameter;->life_hour:J

    .line 107
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->reengagement_datetime:Ljava/lang/String;

    .line 147
    iput-boolean v2, p0, Lcom/igaworks/core/RequestParameter;->isNewInstall:Z

    .line 1794
    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->reengagement_conversion_key:J

    .line 1822
    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->last_referral_key:J

    .line 1847
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/core/RequestParameter;->last_referral_datetime:Ljava/lang/String;

    .line 1872
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/core/RequestParameter;->last_referral_data:Ljava/lang/String;

    .line 152
    invoke-static {p1}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    .line 155
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igaworks/core/RequestParameter$1;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/core/RequestParameter$1;-><init>(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 178
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private GetDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1035
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/igaworks/core/RequestParameter;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/core/RequestParameter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/igaworks/core/RequestParameter;->adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/igaworks/core/RequestParameter;Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/core/RequestParameter;
    .param p1, "x1"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    return-object p1
.end method

.method static synthetic access$102(Lcom/igaworks/core/RequestParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/core/RequestParameter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->google_ad_id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/igaworks/core/RequestParameter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/core/RequestParameter;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/igaworks/core/RequestParameter;->google_ad_id_opt_out:Z

    return p1
.end method

.method private checkIsNullOrEmptyAndReturnRegString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 261
    .end local p1    # "src":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "src":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public static convertActivityStringToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prevGroup"    # Ljava/lang/String;
    .param p1, "prevActivity"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "param"    # Ljava/lang/String;
    .param p5, "createdAt"    # Ljava/lang/String;
    .param p6, "event_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1235
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1236
    .local v0, "result":Lorg/json/JSONObject;
    const-string v1, "prev_group"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1237
    const-string v1, "prev_activity"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1238
    const-string v1, "group"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1239
    const-string v1, "activity"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1241
    if-nez p4, :cond_0

    .line 1242
    const-string p4, ""

    .line 1245
    :cond_0
    const-string v1, "param"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1246
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1247
    const-string v1, "created_at"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1249
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static convertImpressionStringToJson(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "campaignKey"    # I
    .param p1, "spaceKey"    # Ljava/lang/String;
    .param p2, "resourceKey"    # I
    .param p3, "createdAt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1254
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1255
    .local v0, "result":Lorg/json/JSONObject;
    const-string v1, "campaign_key"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1256
    const-string v1, "space_key"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1257
    const-string v1, "resource_key"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1258
    const-string v1, "created_at"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1260
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatSize(J)Ljava/lang/String;
    .locals 8
    .param p0, "size"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x400

    .line 466
    const/4 v2, 0x0

    .line 468
    .local v2, "suffix":Ljava/lang/String;
    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    .line 469
    const-string v2, "KB"

    .line 470
    div-long/2addr p0, v4

    .line 471
    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    .line 472
    const-string v2, "MB"

    .line 473
    div-long/2addr p0, v4

    .line 474
    cmp-long v3, p0, v6

    if-ltz v3, :cond_0

    .line 475
    const-string v2, "GB"

    .line 476
    div-long/2addr p0, v6

    .line 481
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .local v1, "resultBuffer":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x3

    .line 484
    .local v0, "commaOffset":I
    :goto_0
    if-lez v0, :cond_1

    .line 485
    const/16 v3, 0x2c

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 486
    add-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 489
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 243
    sget-object v0, Lcom/igaworks/core/RequestParameter;->singletonATRequestParameter:Lcom/igaworks/core/RequestParameter;

    if-nez v0, :cond_1

    .line 244
    const-class v1, Lcom/igaworks/core/RequestParameter;

    monitor-enter v1

    .line 245
    :try_start_0
    sget-object v0, Lcom/igaworks/core/RequestParameter;->singletonATRequestParameter:Lcom/igaworks/core/RequestParameter;

    if-nez v0, :cond_0

    .line 246
    const-string v0, "IGAW_QA"

    const-string v2, "new ATRequest Parameter created"

    const/4 v3, 0x3

    invoke-static {p0, v0, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    new-instance v0, Lcom/igaworks/core/RequestParameter;

    invoke-direct {v0, p0}, Lcom/igaworks/core/RequestParameter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igaworks/core/RequestParameter;->singletonATRequestParameter:Lcom/igaworks/core/RequestParameter;

    .line 249
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_1
    sget-object v0, Lcom/igaworks/core/RequestParameter;->singletonATRequestParameter:Lcom/igaworks/core/RequestParameter;

    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getAdbrixJSONParameter(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 8
    .param p4, "adid"    # Ljava/lang/String;
    .param p5, "adidOptOut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "complete_conversion_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/core/RequestParameter;->getAdbrixJSONParameter(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;ZZ)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getAdbrixJSONParameter(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;ZZ)Lorg/json/JSONObject;
    .locals 72
    .param p5, "adid"    # Ljava/lang/String;
    .param p6, "adidOptOut"    # Z
    .param p7, "createSign"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/DeeplinkConversionItem;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "complete_conversion_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "deeplink_conversions":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/DeeplinkConversionItem;>;"
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v26

    .line 504
    .local v26, "context":Landroid/content/Context;
    new-instance v60, Lorg/json/JSONObject;

    invoke-direct/range {v60 .. v60}, Lorg/json/JSONObject;-><init>()V

    .line 505
    .local v60, "rootObj":Lorg/json/JSONObject;
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 506
    .local v12, "activityInfoArr":Lorg/json/JSONArray;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 507
    .local v13, "adbrixUserInfoObj":Lorg/json/JSONObject;
    new-instance v24, Lorg/json/JSONArray;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONArray;-><init>()V

    .line 508
    .local v24, "completeConversionArr":Lorg/json/JSONArray;
    new-instance v27, Lorg/json/JSONArray;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONArray;-><init>()V

    .line 509
    .local v27, "conversionCacheArr":Lorg/json/JSONArray;
    new-instance v31, Lorg/json/JSONArray;

    invoke-direct/range {v31 .. v31}, Lorg/json/JSONArray;-><init>()V

    .line 510
    .local v31, "demoArray":Lorg/json/JSONArray;
    new-instance v33, Lorg/json/JSONObject;

    invoke-direct/range {v33 .. v33}, Lorg/json/JSONObject;-><init>()V

    .line 511
    .local v33, "deviceInfoObj":Lorg/json/JSONObject;
    new-instance v58, Lorg/json/JSONObject;

    invoke-direct/range {v58 .. v58}, Lorg/json/JSONObject;-><init>()V

    .line 512
    .local v58, "referralInfoObj":Lorg/json/JSONObject;
    new-instance v28, Lorg/json/JSONObject;

    invoke-direct/range {v28 .. v28}, Lorg/json/JSONObject;-><init>()V

    .line 513
    .local v28, "deeplinkInfoObj":Lorg/json/JSONObject;
    new-instance v64, Lorg/json/JSONObject;

    invoke-direct/range {v64 .. v64}, Lorg/json/JSONObject;-><init>()V

    .line 514
    .local v64, "userInfoObj":Lorg/json/JSONObject;
    new-instance v41, Lorg/json/JSONArray;

    invoke-direct/range {v41 .. v41}, Lorg/json/JSONArray;-><init>()V

    .line 517
    .local v41, "impInfoArr":Lorg/json/JSONArray;
    const-string v67, "appkey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->appkey:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string v67, "package_name"

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string v46, ""

    .line 523
    .local v46, "installer":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v67

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 525
    if-eqz v46, :cond_0

    const-string v67, "installer"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    const-string v67, "version"

    invoke-static {}, Lcom/igaworks/core/IgawUpdateLog;->getCommonVersion()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v67

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v67 .. v69}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v55

    .line 537
    .local v55, "pi":Landroid/content/pm/PackageInfo;
    const-string v67, "app_version_name"

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const-string v67, "app_version_code"

    move-object/from16 v0, v55

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v68, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    .line 545
    .end local v55    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    :try_start_2
    const-string v67, "third_party_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->thirdPartyID:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12

    .line 553
    :goto_2
    invoke-static/range {v26 .. v26}, Lcom/igaworks/dao/ReferralInfoDAO;->getReferralInfo_conversionKey(Landroid/content/Context;)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Lcom/igaworks/core/RequestParameter;->conversion_key:I

    .line 554
    const-string v67, "conversion_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/core/RequestParameter;->conversion_key:I

    move/from16 v68, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 557
    invoke-static/range {v26 .. v26}, Lcom/igaworks/dao/ReferralInfoDAO;->getReferralInfo_session_no(Landroid/content/Context;)J

    move-result-wide v68

    move-wide/from16 v0, v68

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/igaworks/core/RequestParameter;->session_no:J

    .line 558
    const-string v67, "session_no"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/igaworks/core/RequestParameter;->session_no:J

    move-wide/from16 v68, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v67

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 561
    invoke-static/range {v26 .. v26}, Lcom/igaworks/dao/ReferralInfoDAO;->getReferralInfo_referrer_params(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v59

    .line 563
    .local v59, "referrer_param":Ljava/lang/String;
    :try_start_3
    const-string v67, "referrer_param"

    const-string v68, "UTF-8"

    move-object/from16 v0, v59

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v58

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 568
    :goto_3
    const-string v67, "referral_info"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getConversionCache()Ljava/util/ArrayList;

    move-result-object v18

    .line 573
    .local v18, "cacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v67

    if-lez v67, :cond_1

    .line 574
    const/16 v40, 0x0

    .local v40, "i":I
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v67

    move/from16 v0, v40

    move/from16 v1, v67

    if-ge v0, v1, :cond_1

    .line 576
    :try_start_4
    move-object/from16 v0, v18

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v67

    move-object/from16 v0, v27

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 574
    :goto_5
    add-int/lit8 v40, v40, 0x1

    goto :goto_4

    .line 526
    .end local v18    # "cacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v40    # "i":I
    .end local v59    # "referrer_param":Ljava/lang/String;
    :cond_0
    :try_start_5
    const-string v67, "installer"

    const-string v68, "unknown"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 527
    :catch_0
    move-exception v36

    .line 528
    .local v36, "e":Ljava/lang/Exception;
    const-string v67, "IGAW_QA"

    const-string v68, "installer error"

    const/16 v69, 0x3

    move-object/from16 v0, v26

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    move/from16 v3, v69

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 529
    const/16 v46, 0x0

    .line 530
    const-string v67, "installer"

    const-string v68, "unknown"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 564
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v59    # "referrer_param":Ljava/lang/String;
    :catch_1
    move-exception v36

    .line 565
    .restart local v36    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 577
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v18    # "cacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v40    # "i":I
    :catch_2
    move-exception v36

    .line 578
    .restart local v36    # "e":Ljava/lang/Exception;
    const-string v67, "IGAW_QA"

    const-string v68, "error occurred during convert conversion_cache to integer"

    const/16 v69, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    move/from16 v3, v69

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 583
    .end local v36    # "e":Ljava/lang/Exception;
    .end local v40    # "i":I
    :cond_1
    const-string v67, "conversion_cache"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J

    move-result-wide v68

    move-wide/from16 v0, v68

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/igaworks/core/RequestParameter;->adbrix_user_no:J

    .line 591
    :try_start_6
    const-string v67, "adbrix_user_no"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/igaworks/core/RequestParameter;->adbrix_user_no:J

    move-wide/from16 v68, v0

    move-object/from16 v0, v67

    move-wide/from16 v1, v68

    invoke-virtual {v13, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 598
    :goto_6
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserInfo_ShardNo()I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Lcom/igaworks/core/RequestParameter;->shard_no:I

    .line 599
    const-string v67, "shard_no"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/core/RequestParameter;->shard_no:I

    move/from16 v68, v0

    move-object/from16 v0, v67

    move/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 606
    :goto_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    move-object/from16 v67, v0

    if-eqz v67, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v67

    const/16 v68, 0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ge v0, v1, :cond_3

    .line 607
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserInfo_install_datetime()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    .line 610
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    move-object/from16 v67, v0

    if-eqz v67, :cond_8

    .line 611
    const-string v67, "install_datetime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 613
    :try_start_9
    const-string v67, "install_mdatetime"

    sget-object v68, Lcom/igaworks/core/RequestParameter;->df:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-virtual/range {v68 .. v69}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/Date;->getTime()J

    move-result-wide v68

    move-object/from16 v0, v67

    move-wide/from16 v1, v68

    invoke-virtual {v13, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_11

    .line 626
    :goto_8
    const-string v67, "life_hour"

    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->calculateLifeHour()J

    move-result-wide v68

    move-object/from16 v0, v67

    move-wide/from16 v1, v68

    invoke-virtual {v13, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 629
    const-string v67, "app_launch_count"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/igaworks/core/RequestParameter;->app_launch_count:J

    move-wide/from16 v68, v0

    move-object/from16 v0, v67

    move-wide/from16 v1, v68

    invoke-virtual {v13, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v68

    move-wide/from16 v0, v68

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/igaworks/core/RequestParameter;->referral_key:J

    .line 633
    const-string v67, "referral_key"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/igaworks/core/RequestParameter;->referral_key:J

    move-wide/from16 v68, v0

    move-object/from16 v0, v67

    move-wide/from16 v1, v68

    invoke-virtual {v13, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 635
    const-string v67, "referral_data"

    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserInfo_referral_data()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    const-string v67, "reengagement_datetime"

    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserInfo_reengagement_datetime()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    const-string v67, "reengagement_data"

    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserInfo_reengagement_data()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    const-string v67, "reengagement_conversion_key"

    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserInfo_reengagement_conversion_key()J

    move-result-wide v68

    move-object/from16 v0, v67

    move-wide/from16 v1, v68

    invoke-virtual {v13, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 639
    const-string v67, "last_referral_key"

    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserInfo_last_referral_key()J

    move-result-wide v68

    move-object/from16 v0, v67

    move-wide/from16 v1, v68

    invoke-virtual {v13, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 640
    const-string v67, "last_referral_data"

    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserInfo_last_referral_data()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    const-string v67, "last_referral_datetime"

    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserInfo_last_referral_datetime()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    :try_start_a
    const-string v67, "set_referral_key"

    const/16 v68, 0x1

    move-object/from16 v0, v67

    move/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 646
    const-string v67, "sig_type"

    const/16 v68, 0x0

    move-object/from16 v0, v67

    move/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 651
    :goto_9
    const-string v67, "adbrix_user_info"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/igaworks/core/DeviceIDManger;->getAESPuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igaworks/core/RequestParameter;->puid:Ljava/lang/String;

    .line 659
    const-string v67, "puid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->puid:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Lcom/igaworks/core/RequestParameter;->checkIsNullOrEmptyAndReturnRegString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/igaworks/core/RequestParameter;->getMhowUdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igaworks/core/RequestParameter;->mudid:Ljava/lang/String;

    .line 663
    const-string v67, "mudid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->mudid:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Lcom/igaworks/core/RequestParameter;->checkIsNullOrEmptyAndReturnRegString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    invoke-static {}, Lcom/igaworks/core/OpenUDID_manager;->isInitialized()Z

    move-result v67

    if-eqz v67, :cond_9

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/igaworks/core/DeviceIDManger;->getOpenUDID()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igaworks/core/RequestParameter;->openudid:Ljava/lang/String;

    .line 669
    const-string v67, "openudid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->openudid:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Lcom/igaworks/core/RequestParameter;->checkIsNullOrEmptyAndReturnRegString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 675
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->openudid:Ljava/lang/String;

    move-object/from16 v67, v0

    if-eqz v67, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->openudid:Ljava/lang/String;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v67

    if-lez v67, :cond_a

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->openudid:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v69, 0x64

    invoke-virtual/range {v67 .. v69}, Lcom/igaworks/core/DeviceIDManger;->getOPENUDID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v51

    .line 677
    .local v51, "openudid_md5":Ljava/lang/String;
    const-string v67, "openudid_md5"

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    .end local v51    # "openudid_md5":Ljava/lang/String;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->openudid:Ljava/lang/String;

    move-object/from16 v67, v0

    if-eqz v67, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->openudid:Ljava/lang/String;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v67

    if-lez v67, :cond_b

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->openudid:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v69, 0x65

    invoke-virtual/range {v67 .. v69}, Lcom/igaworks/core/DeviceIDManger;->getOPENUDID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v54

    .line 685
    .local v54, "openudid_sha1":Ljava/lang/String;
    const-string v67, "openudid_sha1"

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    .end local v54    # "openudid_sha1":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v68, 0x64

    move-object/from16 v0, v67

    move-object/from16 v1, v26

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/core/DeviceIDManger;->getAndroidId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v15

    .line 692
    .local v15, "android_id_md5":Ljava/lang/String;
    const-string v67, "android_id_md5"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/igaworks/core/RequestParameter;->checkIsNullOrEmptyAndReturnRegString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v68, 0x65

    move-object/from16 v0, v67

    move-object/from16 v1, v26

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/core/DeviceIDManger;->getAndroidId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v16

    .line 696
    .local v16, "android_id_sha1":Ljava/lang/String;
    const-string v67, "android_id_sha1"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/igaworks/core/RequestParameter;->checkIsNullOrEmptyAndReturnRegString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v68, 0x64

    move-object/from16 v0, v67

    move-object/from16 v1, v26

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/core/DeviceIDManger;->getDeviceID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v34

    .line 700
    .local v34, "device_id_md5":Ljava/lang/String;
    const-string v67, "device_id_md5"

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v68, 0x65

    move-object/from16 v0, v67

    move-object/from16 v1, v26

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/core/DeviceIDManger;->getDeviceID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v35

    .line 704
    .local v35, "device_id_sha1":Ljava/lang/String;
    const-string v67, "device_id_sha1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/igaworks/core/RequestParameter;->checkIsNullOrEmptyAndReturnRegString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igaworks/core/RequestParameter;->google_ad_id:Ljava/lang/String;

    .line 726
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igaworks/core/RequestParameter;->google_ad_id_opt_out:Z

    .line 727
    const-string v67, "google_ad_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->google_ad_id:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string v67, "google_ad_id_opt_out"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/igaworks/core/RequestParameter;->google_ad_id_opt_out:Z

    move/from16 v68, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 730
    invoke-static/range {v26 .. v26}, Lcom/igaworks/dao/AppImpressionDAO;->getInitAdidtToSP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v42

    .line 731
    .local v42, "initial_ad_id":Ljava/lang/String;
    if-eqz v42, :cond_4

    const-string v67, ""

    move-object/from16 v0, v42

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_5

    .line 732
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->google_ad_id:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 733
    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/igaworks/dao/AppImpressionDAO;->setInitAdidtToSP(Landroid/content/Context;Ljava/lang/String;)V

    .line 735
    :cond_5
    const-string v67, "initial_ad_id"

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->ag:Ljava/lang/String;

    move-object/from16 v67, v0

    if-eqz v67, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->ag:Ljava/lang/String;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v67

    const/16 v68, 0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ge v0, v1, :cond_d

    .line 742
    :cond_6
    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v56

    .line 745
    .local v56, "pm":Landroid/content/pm/PackageManager;
    const-string v67, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v26

    move-object/from16 v1, v67

    invoke-static {v0, v1}, Lcom/igaworks/util/CommonHelper;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_d

    .line 747
    invoke-static/range {v26 .. v26}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    .line 748
    .local v10, "accManager":Landroid/accounts/AccountManager;
    const-string v67, "com.google"

    move-object/from16 v0, v67

    invoke-virtual {v10, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 749
    .local v8, "acc":[Landroid/accounts/Account;
    array-length v9, v8

    .line 750
    .local v9, "accCount":I
    const-string v11, ""

    .line 751
    .local v11, "accountList":Ljava/lang/String;
    const/16 v40, 0x0

    .restart local v40    # "i":I
    :goto_d
    move/from16 v0, v40

    if-ge v0, v9, :cond_c

    .line 752
    if-lez v40, :cond_7

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v67

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, "|"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 753
    :cond_7
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v67

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    aget-object v68, v8, v40

    move-object/from16 v0, v68

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v68, v0

    invoke-static/range {v68 .. v68}, Lcom/igaworks/core/DeviceIDManger;->getSha1Value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    move-result-object v11

    .line 751
    add-int/lit8 v40, v40, 0x1

    goto :goto_d

    .line 592
    .end local v8    # "acc":[Landroid/accounts/Account;
    .end local v9    # "accCount":I
    .end local v10    # "accManager":Landroid/accounts/AccountManager;
    .end local v11    # "accountList":Ljava/lang/String;
    .end local v15    # "android_id_md5":Ljava/lang/String;
    .end local v16    # "android_id_sha1":Ljava/lang/String;
    .end local v34    # "device_id_md5":Ljava/lang/String;
    .end local v35    # "device_id_sha1":Ljava/lang/String;
    .end local v40    # "i":I
    .end local v42    # "initial_ad_id":Ljava/lang/String;
    .end local v56    # "pm":Landroid/content/pm/PackageManager;
    :catch_3
    move-exception v36

    .line 593
    .restart local v36    # "e":Ljava/lang/Exception;
    const-string v67, "adbrix_user_no"

    const/16 v68, -0x1

    move-object/from16 v0, v67

    move/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 594
    const-string v67, "IGAW_QA"

    const-string v68, "error occurred during convert adbrix_user_no to long"

    const/16 v69, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    move/from16 v3, v69

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 600
    .end local v36    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v36

    .line 601
    .restart local v36    # "e":Ljava/lang/Exception;
    const-string v67, "shard_no"

    const/16 v68, -0x1

    move-object/from16 v0, v67

    move/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 602
    const-string v67, "IGAW_QA"

    const-string v68, "error occurred during convert shard_no to int"

    const/16 v69, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    move/from16 v3, v69

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 617
    .end local v36    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_c
    const-string v67, "install_datetime"

    const-string v68, ""

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 618
    const-string v67, "install_mdatetime"

    const-string v68, ""

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_8

    .line 621
    :catch_5
    move-exception v36

    .line 622
    .restart local v36    # "e":Ljava/lang/Exception;
    const-string v67, "install_datetime"

    const-string v68, ""

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 647
    .end local v36    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v36

    .line 648
    .restart local v36    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 671
    .end local v36    # "e":Ljava/lang/Exception;
    :cond_9
    const-string v67, "openudid"

    const-string v68, ""

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 679
    :cond_a
    const-string v67, "openudid_md5"

    const-string v68, ""

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_b

    .line 687
    :cond_b
    const-string v67, "openudid_sha1"

    const-string v68, ""

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_c

    .line 755
    .restart local v8    # "acc":[Landroid/accounts/Account;
    .restart local v9    # "accCount":I
    .restart local v10    # "accManager":Landroid/accounts/AccountManager;
    .restart local v11    # "accountList":Ljava/lang/String;
    .restart local v15    # "android_id_md5":Ljava/lang/String;
    .restart local v16    # "android_id_sha1":Ljava/lang/String;
    .restart local v34    # "device_id_md5":Ljava/lang/String;
    .restart local v35    # "device_id_sha1":Ljava/lang/String;
    .restart local v40    # "i":I
    .restart local v42    # "initial_ad_id":Ljava/lang/String;
    .restart local v56    # "pm":Landroid/content/pm/PackageManager;
    :cond_c
    :try_start_d
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/igaworks/core/RequestParameter;->ag:Ljava/lang/String;

    .line 767
    .end local v8    # "acc":[Landroid/accounts/Account;
    .end local v9    # "accCount":I
    .end local v10    # "accManager":Landroid/accounts/AccountManager;
    .end local v11    # "accountList":Ljava/lang/String;
    .end local v40    # "i":I
    .end local v56    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    const-string v67, "ag"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->ag:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 774
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/igaworks/core/DeviceIDManger;->getODIN1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v50

    .line 775
    .local v50, "odin1":Ljava/lang/String;
    const-string v67, "odin"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/igaworks/core/RequestParameter;->checkIsNullOrEmptyAndReturnRegString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 778
    const-string v67, "phone"

    move-object/from16 v0, v26

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Landroid/telephony/TelephonyManager;

    .line 780
    .local v61, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v61, :cond_e

    .line 781
    invoke-virtual/range {v61 .. v61}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igaworks/core/RequestParameter;->carrier:Ljava/lang/String;

    .line 782
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->carrier:Ljava/lang/String;

    move-object/from16 v67, v0

    if-eqz v67, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->carrier:Ljava/lang/String;

    move-object/from16 v67, v0

    const-string v68, ""

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_10

    .line 783
    :cond_f
    const-string v67, "unknown"

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igaworks/core/RequestParameter;->carrier:Ljava/lang/String;

    .line 784
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->carrier:Ljava/lang/String;

    move-object/from16 v67, v0

    invoke-static/range {v67 .. v67}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igaworks/core/RequestParameter;->carrier:Ljava/lang/String;

    .line 785
    const-string v67, "carrier"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->carrier:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v30

    .line 789
    .local v30, "defaultLocale":Ljava/util/Locale;
    const-string v67, "country"

    invoke-virtual/range {v30 .. v30}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 790
    const-string v67, "language"

    invoke-virtual/range {v30 .. v30}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 793
    const-string v67, "android_id"

    invoke-static/range {v26 .. v26}, Lcom/igaworks/core/DeviceIDManger;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v68 .. v68}, Lcom/igaworks/util/IgawBase64;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    :try_start_e
    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v67

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v67 .. v69}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v55

    .line 797
    .restart local v55    # "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v55

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v38, v0

    .line 798
    .local v38, "first_install_time_epoch":J
    new-instance v66, Ljava/text/SimpleDateFormat;

    const-string v67, "yyyyMMddHHmmss"

    invoke-direct/range {v66 .. v67}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 799
    .local v66, "utc_df":Ljava/text/SimpleDateFormat;
    const-string v67, "GMT+0"

    invoke-static/range {v67 .. v67}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 800
    new-instance v67, Ljava/util/Date;

    move-object/from16 v0, v67

    move-wide/from16 v1, v38

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v66 .. v67}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v37

    .line 801
    .local v37, "first_install_time":Ljava/lang/String;
    const-string v67, "first_install_time"

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    invoke-static/range {v26 .. v26}, Lcom/igaworks/dao/AppImpressionDAO;->getFirstStartTime(Landroid/content/Context;)J

    move-result-wide v68

    sub-long v52, v68, v38

    .line 803
    .local v52, "offSet":J
    const-string v67, "first_install_time_offset"

    move-object/from16 v0, v64

    move-object/from16 v1, v67

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10

    .line 808
    .end local v37    # "first_install_time":Ljava/lang/String;
    .end local v38    # "first_install_time_epoch":J
    .end local v52    # "offSet":J
    .end local v55    # "pi":Landroid/content/pm/PackageInfo;
    .end local v66    # "utc_df":Ljava/text/SimpleDateFormat;
    :goto_f
    const-string v67, "user_info"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 813
    :try_start_f
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 814
    .local v20, "cohortObj":Lorg/json/JSONObject;
    const-string v67, "custom_cohort_1"

    const-string v68, "custom_cohort_1"

    move-object/from16 v0, v26

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Lcom/igaworks/dao/CohortDAO;->getCohort(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v20

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 815
    const-string v67, "custom_cohort_2"

    const-string v68, "custom_cohort_2"

    move-object/from16 v0, v26

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Lcom/igaworks/dao/CohortDAO;->getCohort(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v20

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 816
    const-string v67, "custom_cohort_3"

    const-string v68, "custom_cohort_3"

    move-object/from16 v0, v26

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Lcom/igaworks/dao/CohortDAO;->getCohort(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v20

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 817
    const-string v67, "cohort_info"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 824
    .end local v20    # "cohortObj":Lorg/json/JSONObject;
    :goto_10
    const-string v67, "adpopcorn_parameter"

    const/16 v68, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v57

    .line 825
    .local v57, "pref":Landroid/content/SharedPreferences;
    const-string v67, "adpopcorn_sdk_market"

    const-string v68, ""

    move-object/from16 v0, v57

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 827
    .local v14, "adpopcorn_marketParam":Ljava/lang/String;
    const-string v67, ""

    move-object/from16 v0, v67

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_11

    const-string v67, "__UNDEFINED__MARKET__"

    move-object/from16 v0, v67

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_11

    .line 828
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/igaworks/core/RequestParameter;->market:Ljava/lang/String;

    .line 830
    :cond_11
    const-string v67, "vendor"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->market:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 833
    sget-object v67, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v67, :cond_13

    sget-object v67, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v68, ""

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v67

    if-nez v67, :cond_13

    .line 834
    sget-object v67, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igaworks/core/RequestParameter;->model:Ljava/lang/String;

    .line 838
    :goto_11
    const-string v67, "model"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->model:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 842
    :try_start_10
    const-string v67, "os.version"

    invoke-static/range {v67 .. v67}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 843
    .local v49, "kn":Ljava/lang/String;
    const-string v67, "kn"

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    .line 848
    .end local v49    # "kn":Ljava/lang/String;
    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/igaworks/core/RequestParameter;->getWifiDevice(Landroid/content/Context;)Z

    move-result v67

    if-eqz v67, :cond_14

    .line 849
    const-string v67, "is_wifi_only"

    const/16 v68, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 855
    :goto_13
    const-string v67, "network"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/igaworks/core/RequestParameter;->getCustomNetworkInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 858
    const-string v67, "noncustomnetwork"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/igaworks/core/RequestParameter;->getNonCustomNetworkInfo(Landroid/content/Context;)I

    move-result v68

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 861
    sget-object v67, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v67, :cond_12

    sget-object v67, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v68, ""

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v67

    if-nez v67, :cond_12

    .line 862
    sget-object v67, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igaworks/core/RequestParameter;->os:Ljava/lang/String;

    .line 863
    :cond_12
    const-string v67, "os"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "a_"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->os:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 866
    const-string v67, "ptype"

    const-string v68, "android"

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 870
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/igaworks/core/RequestParameter;->GetDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v29

    .line 871
    .local v29, "defaultDisplay":Landroid/view/Display;
    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    .line 872
    .local v25, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v67, v0

    const/16 v68, 0x2

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_15

    .line 874
    const-string v67, "width"

    invoke-virtual/range {v29 .. v29}, Landroid/view/Display;->getHeight()I

    move-result v68

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 876
    const-string v67, "height"

    invoke-virtual/range {v29 .. v29}, Landroid/view/Display;->getWidth()I

    move-result v68

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 878
    const-string v67, "is_portrait"

    const/16 v68, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 889
    :goto_14
    :try_start_11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    .line 890
    .local v19, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v67

    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v67, v0

    const v68, 0x4a5bba00    # 3600000.0f

    div-float v65, v67, v68

    .line 891
    .local v65, "utcOffset":F
    invoke-static/range {v65 .. v65}, Lcom/igaworks/core/RequestParameter;->round(F)D

    move-result-wide v62

    .line 892
    .local v62, "round_utc_offset":D
    const-string v67, "IGAW_QA"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "UTC_OFFSET: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    const/16 v69, 0x3

    const/16 v70, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    move/from16 v3, v69

    move/from16 v4, v70

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 893
    const-string v67, "utc_offset"

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 900
    .end local v19    # "calendar":Ljava/util/Calendar;
    .end local v62    # "round_utc_offset":D
    .end local v65    # "utcOffset":F
    :goto_15
    :try_start_12
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v68, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ""

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 901
    .local v17, "build":Ljava/lang/String;
    const-string v67, "build_id"

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    .line 906
    .end local v17    # "build":Ljava/lang/String;
    :goto_16
    const-string v67, "device_info"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 910
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getPersistantDemoInfo_v2()Ljava/util/List;

    move-result-object v32

    .line 912
    .local v32, "demoInfo":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v32, :cond_16

    .line 913
    const/4 v7, 0x0

    .line 914
    .local v7, "aDemo":Lorg/json/JSONObject;
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v67

    :goto_17
    invoke-interface/range {v67 .. v67}, Ljava/util/Iterator;->hasNext()Z

    move-result v68

    if-eqz v68, :cond_16

    invoke-interface/range {v67 .. v67}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/util/Pair;

    .line 915
    .local v48, "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Lorg/json/JSONObject;

    .end local v7    # "aDemo":Lorg/json/JSONObject;
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 916
    .restart local v7    # "aDemo":Lorg/json/JSONObject;
    const-string v68, "demo_key"

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v69, v0

    move-object/from16 v0, v68

    move-object/from16 v1, v69

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 917
    const-string v68, "demo_value"

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v69, v0

    move-object/from16 v0, v68

    move-object/from16 v1, v69

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 918
    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_17

    .line 769
    .end local v7    # "aDemo":Lorg/json/JSONObject;
    .end local v14    # "adpopcorn_marketParam":Ljava/lang/String;
    .end local v25    # "config":Landroid/content/res/Configuration;
    .end local v29    # "defaultDisplay":Landroid/view/Display;
    .end local v30    # "defaultLocale":Ljava/util/Locale;
    .end local v32    # "demoInfo":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v48    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v50    # "odin1":Ljava/lang/String;
    .end local v57    # "pref":Landroid/content/SharedPreferences;
    .end local v61    # "tm":Landroid/telephony/TelephonyManager;
    :catch_7
    move-exception v36

    .line 770
    .restart local v36    # "e":Ljava/lang/Exception;
    const-string v67, "IGAW_QA"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "error occurred during get google account : "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    const/16 v69, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    move/from16 v3, v69

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_e

    .line 836
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v14    # "adpopcorn_marketParam":Ljava/lang/String;
    .restart local v30    # "defaultLocale":Ljava/util/Locale;
    .restart local v50    # "odin1":Ljava/lang/String;
    .restart local v57    # "pref":Landroid/content/SharedPreferences;
    .restart local v61    # "tm":Landroid/telephony/TelephonyManager;
    :cond_13
    const-string v67, ""

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igaworks/core/RequestParameter;->model:Ljava/lang/String;

    goto/16 :goto_11

    .line 851
    :cond_14
    const-string v67, "is_wifi_only"

    const/16 v68, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_13

    .line 881
    .restart local v25    # "config":Landroid/content/res/Configuration;
    .restart local v29    # "defaultDisplay":Landroid/view/Display;
    :cond_15
    const-string v67, "width"

    invoke-virtual/range {v29 .. v29}, Landroid/view/Display;->getWidth()I

    move-result v68

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 883
    const-string v67, "height"

    invoke-virtual/range {v29 .. v29}, Landroid/view/Display;->getHeight()I

    move-result v68

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 885
    const-string v67, "is_portrait"

    const/16 v68, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_14

    .line 894
    :catch_8
    move-exception v36

    .line 895
    .restart local v36    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V

    .line 896
    const-string v67, "IGAW_QA"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "UTC_OFFSET Error: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    const/16 v69, 0x0

    const/16 v70, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    move/from16 v3, v69

    move/from16 v4, v70

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_15

    .line 902
    .end local v36    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v36

    .line 903
    .restart local v36    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_16

    .line 922
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v32    # "demoInfo":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_16
    const-string v67, "demographics"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 926
    if-eqz p3, :cond_17

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v67

    if-lez v67, :cond_17

    .line 928
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v68

    :goto_18
    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->hasNext()Z

    move-result v67

    if-eqz v67, :cond_17

    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Ljava/lang/Integer;

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 930
    .local v23, "completeConversion":I
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_18

    .line 935
    .end local v23    # "completeConversion":I
    :cond_17
    const-string v67, "complete_conversions"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 939
    if-eqz p1, :cond_18

    .line 941
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v67

    :goto_19
    invoke-interface/range {v67 .. v67}, Ljava/util/Iterator;->hasNext()Z

    move-result v68

    if-eqz v68, :cond_18

    invoke-interface/range {v67 .. v67}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/String;

    .line 943
    .local v47, "item":Ljava/lang/String;
    :try_start_13
    new-instance v68, Lorg/json/JSONObject;

    move-object/from16 v0, v68

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_19

    .line 944
    :catch_a
    move-exception v36

    .line 945
    .restart local v36    # "e":Ljava/lang/Exception;
    const-string v68, "IGAW_QA"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "error occurred during fill activity info : "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, "\n contents : "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    const/16 v70, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v68

    move-object/from16 v2, v69

    move/from16 v3, v70

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_19

    .line 951
    .end local v36    # "e":Ljava/lang/Exception;
    .end local v47    # "item":Ljava/lang/String;
    :cond_18
    const-string v67, "activity_info"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 955
    if-eqz p2, :cond_19

    .line 957
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v67

    :goto_1a
    invoke-interface/range {v67 .. v67}, Ljava/util/Iterator;->hasNext()Z

    move-result v68

    if-eqz v68, :cond_19

    invoke-interface/range {v67 .. v67}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/String;

    .line 959
    .restart local v47    # "item":Ljava/lang/String;
    :try_start_14
    new-instance v68, Lorg/json/JSONObject;

    move-object/from16 v0, v68

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_1a

    .line 960
    :catch_b
    move-exception v36

    .line 961
    .restart local v36    # "e":Ljava/lang/Exception;
    const-string v68, "IGAW_QA"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "error occurred during fill imp info : "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    const/16 v70, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v68

    move-object/from16 v2, v69

    move/from16 v3, v70

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1a

    .line 967
    .end local v36    # "e":Ljava/lang/Exception;
    .end local v47    # "item":Ljava/lang/String;
    :cond_19
    const-string v67, "impression_info"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 971
    if-eqz p4, :cond_1a

    .line 972
    :try_start_15
    new-instance v21, Lorg/json/JSONArray;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONArray;-><init>()V

    .line 974
    .local v21, "commerceConversionArray":Lorg/json/JSONArray;
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v67

    :goto_1b
    invoke-interface/range {v67 .. v67}, Ljava/util/Iterator;->hasNext()Z

    move-result v68

    if-eqz v68, :cond_1b

    invoke-interface/range {v67 .. v67}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/igaworks/model/DeeplinkConversionItem;

    .line 975
    .local v47, "item":Lcom/igaworks/model/DeeplinkConversionItem;
    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONObject;-><init>()V

    .line 976
    .local v22, "commerceConversionObj":Lorg/json/JSONObject;
    const-string v68, "click_id"

    invoke-virtual/range {v47 .. v47}, Lcom/igaworks/model/DeeplinkConversionItem;->getCommerceClickID()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v22

    move-object/from16 v1, v68

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 977
    const-string v68, "conversion_key"

    invoke-virtual/range {v47 .. v47}, Lcom/igaworks/model/DeeplinkConversionItem;->getConversionKey()I

    move-result v69

    move-object/from16 v0, v22

    move-object/from16 v1, v68

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 978
    const-string v68, "link_params"

    invoke-virtual/range {v47 .. v47}, Lcom/igaworks/model/DeeplinkConversionItem;->getLinkParams()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v22

    move-object/from16 v1, v68

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 979
    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c

    goto :goto_1b

    .line 984
    .end local v21    # "commerceConversionArray":Lorg/json/JSONArray;
    .end local v22    # "commerceConversionObj":Lorg/json/JSONObject;
    .end local v47    # "item":Lcom/igaworks/model/DeeplinkConversionItem;
    :catch_c
    move-exception v67

    .line 989
    :cond_1a
    :goto_1c
    :try_start_16
    new-instance v66, Ljava/text/SimpleDateFormat;

    const-string v67, "yyyyMMddHHmmss"

    invoke-direct/range {v66 .. v67}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 990
    .restart local v66    # "utc_df":Ljava/text/SimpleDateFormat;
    const-string v67, "GMT+0"

    invoke-static/range {v67 .. v67}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 991
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v67

    const-string v68, "igaworks_InstallReferrerClient"

    const/16 v69, 0x0

    invoke-virtual/range {v67 .. v69}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 992
    .local v6, "IRC_pref":Landroid/content/SharedPreferences;
    new-instance v44, Lorg/json/JSONObject;

    invoke-direct/range {v44 .. v44}, Lorg/json/JSONObject;-><init>()V

    .line 993
    .local v44, "installationInfoObj":Lorg/json/JSONObject;
    new-instance v43, Lorg/json/JSONObject;

    invoke-direct/range {v43 .. v43}, Lorg/json/JSONObject;-><init>()V

    .line 994
    .local v43, "installActionsTimestampObj":Lorg/json/JSONObject;
    new-instance v45, Lorg/json/JSONObject;

    invoke-direct/range {v45 .. v45}, Lorg/json/JSONObject;-><init>()V

    .line 996
    .local v45, "installationRequestObj":Lorg/json/JSONObject;
    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v67

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v67 .. v69}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v55

    .line 997
    .restart local v55    # "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v55

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v38, v0

    .line 998
    .restart local v38    # "first_install_time_epoch":J
    const-string v67, "market_referrer"

    const-string v68, "install_referrer"

    const-string v69, ""

    move-object/from16 v0, v68

    move-object/from16 v1, v69

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v44

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1000
    const-string v67, "market_install_btn_clicked"

    const-string v68, "referrer_click_timestamp"

    const-wide/16 v70, 0x0

    move-object/from16 v0, v68

    move-wide/from16 v1, v70

    invoke-interface {v6, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v68

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1001
    const-string v67, "app_install_start"

    const-string v68, "install_begin_timestamp"

    const-wide/16 v70, 0x0

    move-object/from16 v0, v68

    move-wide/from16 v1, v70

    invoke-interface {v6, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v68

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1002
    const-string v67, "app_install_completed"

    const-wide/16 v68, 0x3e8

    div-long v68, v38, v68

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1003
    const-string v67, "app_first_open"

    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getFirstLaunchTimeInfos()J

    move-result-wide v68

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1004
    const-string v67, "client_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v68

    const-wide/16 v70, 0x3e8

    div-long v68, v68, v70

    move-object/from16 v0, v45

    move-object/from16 v1, v67

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1006
    const-string v67, "install_actions_timestamp"

    move-object/from16 v0, v44

    move-object/from16 v1, v67

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1008
    const-string v67, "installation_info"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1009
    const-string v67, "request_info"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    .line 1014
    .end local v6    # "IRC_pref":Landroid/content/SharedPreferences;
    .end local v38    # "first_install_time_epoch":J
    .end local v43    # "installActionsTimestampObj":Lorg/json/JSONObject;
    .end local v44    # "installationInfoObj":Lorg/json/JSONObject;
    .end local v45    # "installationRequestObj":Lorg/json/JSONObject;
    .end local v55    # "pi":Landroid/content/pm/PackageInfo;
    .end local v66    # "utc_df":Ljava/text/SimpleDateFormat;
    :goto_1d
    return-object v60

    .line 982
    .restart local v21    # "commerceConversionArray":Lorg/json/JSONArray;
    :cond_1b
    :try_start_17
    const-string v67, "commerce_conversion"

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    goto/16 :goto_1c

    .line 1011
    .end local v21    # "commerceConversionArray":Lorg/json/JSONArray;
    :catch_d
    move-exception v67

    goto :goto_1d

    .line 844
    .end local v25    # "config":Landroid/content/res/Configuration;
    .end local v29    # "defaultDisplay":Landroid/view/Display;
    .end local v32    # "demoInfo":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_e
    move-exception v67

    goto/16 :goto_12

    .line 818
    .end local v14    # "adpopcorn_marketParam":Ljava/lang/String;
    .end local v57    # "pref":Landroid/content/SharedPreferences;
    :catch_f
    move-exception v67

    goto/16 :goto_10

    .line 805
    :catch_10
    move-exception v67

    goto/16 :goto_f

    .line 614
    .end local v15    # "android_id_md5":Ljava/lang/String;
    .end local v16    # "android_id_sha1":Ljava/lang/String;
    .end local v30    # "defaultLocale":Ljava/util/Locale;
    .end local v34    # "device_id_md5":Ljava/lang/String;
    .end local v35    # "device_id_sha1":Ljava/lang/String;
    .end local v42    # "initial_ad_id":Ljava/lang/String;
    .end local v50    # "odin1":Ljava/lang/String;
    .end local v61    # "tm":Landroid/telephony/TelephonyManager;
    :catch_11
    move-exception v67

    goto/16 :goto_8

    .line 547
    .end local v18    # "cacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v59    # "referrer_param":Ljava/lang/String;
    :catch_12
    move-exception v67

    goto/16 :goto_2

    .line 540
    :catch_13
    move-exception v67

    goto/16 :goto_1
.end method

.method private getWifiDevice(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1020
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1021
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    .line 1022
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/igaworks/core/RequestParameter;->isWifiDevice:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    iget-boolean v2, p0, Lcom/igaworks/core/RequestParameter;->isWifiDevice:Z

    return v2

    .line 1024
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/igaworks/core/RequestParameter;->isWifiDevice:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1027
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 1028
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v3, p0, Lcom/igaworks/core/RequestParameter;->isWifiDevice:Z

    .line 1029
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static round(F)D
    .locals 4
    .param p0, "d"    # F

    .prologue
    .line 2007
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static validateEmailFormat(Ljava/lang/String;)Z
    .locals 3
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 1998
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2002
    :goto_0
    return v0

    .line 1999
    :cond_0
    const-string v1, "[\\w\\~\\-\\.]+@[\\w\\~\\-]+(\\.[\\w\\~\\-]+)+"

    .line 2001
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1999
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2002
    .local v0, "isValid":Z
    goto :goto_0
.end method


# virtual methods
.method public calculateLifeHour()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1931
    const-wide/16 v4, 0x0

    .line 1932
    .local v4, "start_time":J
    const-wide/16 v2, 0x0

    .line 1933
    .local v2, "cal_time":J
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v6, "adbrix_user_info"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1934
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    const-string v1, "life_hour_start_time"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1935
    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    .line 1936
    const-wide/16 v6, -0x1

    .line 1942
    :goto_0
    return-wide v6

    .line 1938
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 1939
    const-wide/32 v6, 0x36ee80

    div-long/2addr v2, v6

    .line 1941
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculate lifehour : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v1, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move-wide v6, v2

    .line 1942
    goto :goto_0
.end method

.method public getADBrixUserInfo_Refusn()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1693
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1694
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    const-string v2, "refusn"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1695
    const-string v2, "refusn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1697
    :cond_0
    return-object v1
.end method

.method public getADBrixUserInfo_ShardNo()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1712
    iget v2, p0, Lcom/igaworks/core/RequestParameter;->shard_no:I

    if-le v2, v1, :cond_1

    .line 1713
    iget v1, p0, Lcom/igaworks/core/RequestParameter;->shard_no:I

    .line 1720
    :cond_0
    :goto_0
    return v1

    .line 1716
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1717
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    const-string v2, "shard_no"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1718
    const-string v2, "shard_no"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public getADBrixUserInfo_SubReferralKey()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1895
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1896
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    const-string v2, "subreferral_key"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1897
    const-string v2, "subreferral_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1899
    :cond_0
    return-object v1
.end method

.method public getADBrixUserInfo_install_datetime()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1738
    iget-object v2, p0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1739
    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    .line 1747
    :cond_0
    :goto_0
    return-object v1

    .line 1742
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1743
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    const-string v2, "install_datetime"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1744
    const-string v2, "install_datetime"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getADBrixUserInfo_last_referral_data()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1876
    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->last_referral_data:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->last_referral_data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1877
    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->last_referral_data:Ljava/lang/String;

    .line 1882
    :goto_0
    return-object v1

    .line 1879
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "adbrix_user_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1880
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    const-string v1, "last_referral_data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->last_referral_data:Ljava/lang/String;

    .line 1882
    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->last_referral_data:Ljava/lang/String;

    goto :goto_0
.end method

.method public getADBrixUserInfo_last_referral_datetime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1851
    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->last_referral_datetime:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->last_referral_datetime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1852
    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->last_referral_datetime:Ljava/lang/String;

    .line 1858
    :goto_0
    return-object v1

    .line 1855
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "adbrix_user_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1856
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    const-string v1, "last_referral_datetime"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->last_referral_datetime:Ljava/lang/String;

    .line 1858
    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->last_referral_datetime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getADBrixUserInfo_last_referral_key()J
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 1825
    iget-wide v4, p0, Lcom/igaworks/core/RequestParameter;->last_referral_key:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    iget-wide v4, p0, Lcom/igaworks/core/RequestParameter;->last_referral_key:J

    .line 1836
    :goto_0
    return-wide v4

    .line 1826
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "adbrix_user_info"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1828
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "last_referral_key"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->last_referral_key:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    :goto_1
    iget-wide v4, p0, Lcom/igaworks/core/RequestParameter;->last_referral_key:J

    goto :goto_0

    .line 1829
    :catch_0
    move-exception v1

    .line 1831
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "last_referral_key"

    const-string v4, "-1"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->last_referral_key:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1832
    :catch_1
    move-exception v2

    .line 1833
    .local v2, "e1":Ljava/lang/Exception;
    iput-wide v8, p0, Lcom/igaworks/core/RequestParameter;->last_referral_key:J

    goto :goto_1
.end method

.method public getADBrixUserInfo_reengagement_conversion_key()J
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 1798
    iget-wide v4, p0, Lcom/igaworks/core/RequestParameter;->reengagement_conversion_key:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    iget-wide v4, p0, Lcom/igaworks/core/RequestParameter;->reengagement_conversion_key:J

    .line 1811
    :goto_0
    return-wide v4

    .line 1799
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "adbrix_user_info"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1802
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "reengagement_conversion_key"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->reengagement_conversion_key:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1811
    :goto_1
    iget-wide v4, p0, Lcom/igaworks/core/RequestParameter;->reengagement_conversion_key:J

    goto :goto_0

    .line 1803
    :catch_0
    move-exception v1

    .line 1805
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "reengagement_conversion_key"

    const-string v4, "-1"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->reengagement_conversion_key:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1806
    :catch_1
    move-exception v2

    .line 1807
    .local v2, "e1":Ljava/lang/Exception;
    iput-wide v8, p0, Lcom/igaworks/core/RequestParameter;->reengagement_conversion_key:J

    goto :goto_1
.end method

.method public getADBrixUserInfo_reengagement_data()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1680
    iget-object v2, p0, Lcom/igaworks/core/RequestParameter;->reengagement_data:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/igaworks/core/RequestParameter;->reengagement_data:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/igaworks/core/RequestParameter;->reengagement_data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1681
    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->reengagement_data:Ljava/lang/String;

    .line 1689
    :cond_0
    :goto_0
    return-object v1

    .line 1683
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1684
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    const-string v2, "reengagement_data"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1685
    const-string v2, "reengagement_data"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->reengagement_data:Ljava/lang/String;

    .line 1686
    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->reengagement_data:Ljava/lang/String;

    goto :goto_0
.end method

.method public getADBrixUserInfo_reengagement_datetime()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1768
    iget-object v2, p0, Lcom/igaworks/core/RequestParameter;->reengagement_datetime:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/igaworks/core/RequestParameter;->reengagement_datetime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1769
    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->reengagement_datetime:Ljava/lang/String;

    .line 1777
    :cond_0
    :goto_0
    return-object v1

    .line 1772
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1773
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    const-string v2, "reengagement_datetime"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1774
    const-string v2, "reengagement_datetime"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getADBrixUserInfo_referral_data()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1656
    iget-object v2, p0, Lcom/igaworks/core/RequestParameter;->referral_data:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/igaworks/core/RequestParameter;->referral_data:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/igaworks/core/RequestParameter;->referral_data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1657
    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->referral_data:Ljava/lang/String;

    .line 1665
    :cond_0
    :goto_0
    return-object v1

    .line 1659
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1660
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    const-string v2, "referral_data"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1661
    const-string v2, "referral_data"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/core/RequestParameter;->referral_data:Ljava/lang/String;

    .line 1662
    iget-object v1, p0, Lcom/igaworks/core/RequestParameter;->referral_data:Ljava/lang/String;

    goto :goto_0
.end method

.method public getADBrixUserNo()J
    .locals 8

    .prologue
    .line 1914
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "adbrix_user_info"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1917
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "adbrix_user_no"

    const-wide/16 v6, -0x1

    invoke-interface {v0, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1926
    .local v4, "user_no":J
    :goto_0
    return-wide v4

    .line 1918
    .end local v4    # "user_no":J
    :catch_0
    move-exception v1

    .line 1920
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "adbrix_user_no"

    const-string v6, "-1"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .restart local v4    # "user_no":J
    goto :goto_0

    .line 1921
    .end local v4    # "user_no":J
    :catch_1
    move-exception v2

    .line 1922
    .local v2, "e1":Ljava/lang/Exception;
    const-wide/16 v4, -0x1

    .restart local v4    # "user_no":J
    goto :goto_0
.end method

.method public getAllowDuplicationConversions()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .local v1, "AllowDuplicationConversions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "AllowDuplicationConversionList"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1296
    .local v5, "conversionPref":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 1297
    .local v4, "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1315
    .end local v4    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v5    # "conversionPref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v1

    .line 1300
    .restart local v4    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v5    # "conversionPref":Landroid/content/SharedPreferences;
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1301
    .local v7, "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1303
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1304
    .local v2, "aConvObj":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1306
    .local v3, "aConversion":Ljava/lang/String;
    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 1307
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1308
    :catch_0
    move-exception v8

    goto :goto_1

    .line 1312
    .end local v2    # "aConvObj":Ljava/lang/Object;
    .end local v3    # "aConversion":Ljava/lang/String;
    .end local v4    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v5    # "conversionPref":Landroid/content/SharedPreferences;
    .end local v7    # "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_1
    move-exception v6

    .line 1313
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/igaworks/core/RequestParameter;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelType()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1967
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "adbrix_user_info"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1970
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "channel_type"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/igaworks/core/RequestParameter;->channel_type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1979
    :goto_0
    iget v3, p0, Lcom/igaworks/core/RequestParameter;->channel_type:I

    return v3

    .line 1971
    :catch_0
    move-exception v1

    .line 1973
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "channel_type"

    const-string v4, "-1"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/igaworks/core/RequestParameter;->channel_type:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1974
    :catch_1
    move-exception v2

    .line 1975
    .local v2, "e1":Ljava/lang/Exception;
    iput v6, p0, Lcom/igaworks/core/RequestParameter;->channel_type:I

    goto :goto_0
.end method

.method public getCompleteConversions()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1573
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    .local v4, "completeConversionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "completeConversions"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1577
    .local v5, "conversionPref":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 1578
    .local v3, "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 1579
    :cond_0
    const/4 v4, 0x0

    .line 1603
    .end local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v4    # "completeConversionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "conversionPref":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-object v4

    .line 1581
    .restart local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v4    # "completeConversionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v5    # "conversionPref":Landroid/content/SharedPreferences;
    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1582
    .local v8, "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1584
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1585
    .local v1, "aConvObj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1588
    .local v2, "aConversion":I
    :try_start_1
    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1597
    .end local v1    # "aConvObj":Ljava/lang/Object;
    :goto_2
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1600
    .end local v2    # "aConversion":I
    .end local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v5    # "conversionPref":Landroid/content/SharedPreferences;
    .end local v8    # "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v6

    .line 1601
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1589
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v1    # "aConvObj":Ljava/lang/Object;
    .restart local v2    # "aConversion":I
    .restart local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v5    # "conversionPref":Landroid/content/SharedPreferences;
    .restart local v8    # "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_1
    move-exception v6

    .line 1591
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_3
    check-cast v1, Ljava/lang/String;

    .end local v1    # "aConvObj":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    goto :goto_2

    .line 1592
    :catch_2
    move-exception v7

    .line 1593
    .local v7, "e1":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public getCompleteParameterForADBrix(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p3, "adid"    # Ljava/lang/String;
    .param p4, "adidOptOut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/core/RequestParameter;->getAdbrixJSONParameter(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "result":Ljava/lang/String;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ATRequestParameter > tracking Parameter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 302
    return-object v6
.end method

.method public getConversionCache()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v15, 0x0

    .line 1365
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1367
    .local v4, "conversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "conversionCache"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1369
    .local v5, "conversionPref":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 1370
    .local v3, "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Collection;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_2

    .line 1395
    .end local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v5    # "conversionPref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .local v8, "indx":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_3

    .line 1396
    sget-object v11, Lcom/igaworks/core/RequestParameter;->tempConversionCache:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1397
    sget-object v11, Lcom/igaworks/core/RequestParameter;->tempConversionCache:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1373
    .end local v8    # "indx":I
    .restart local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v5    # "conversionPref":Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1374
    .local v10, "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1376
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 1377
    .local v1, "aConvObj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1380
    .local v2, "aConversion":I
    :try_start_2
    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 1389
    .end local v1    # "aConvObj":Ljava/lang/Object;
    :goto_3
    :try_start_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1392
    .end local v2    # "aConversion":I
    .end local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v5    # "conversionPref":Landroid/content/SharedPreferences;
    .end local v10    # "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v6

    .line 1393
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1381
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v1    # "aConvObj":Ljava/lang/Object;
    .restart local v2    # "aConversion":I
    .restart local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v5    # "conversionPref":Landroid/content/SharedPreferences;
    .restart local v10    # "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_1
    move-exception v6

    .line 1383
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_4
    check-cast v1, Ljava/lang/String;

    .end local v1    # "aConvObj":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v2

    goto :goto_3

    .line 1384
    :catch_2
    move-exception v7

    .line 1385
    .local v7, "e1":Ljava/lang/Exception;
    goto :goto_2

    .line 1400
    .end local v2    # "aConversion":I
    .end local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v5    # "conversionPref":Landroid/content/SharedPreferences;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "e1":Ljava/lang/Exception;
    .end local v10    # "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v8    # "indx":I
    :cond_3
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/igaworks/dao/ReferralInfoDAO;->getReferralInfo_conversionKey(Landroid/content/Context;)I

    move-result v9

    .line 1401
    .local v9, "referrerKey":I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->isNewInstall()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1402
    sget-object v11, Lcom/igaworks/core/RequestParameter;->tempConversionCache:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1403
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "IGAW_QA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add refererKey temporarily to cvCache: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v11, v12, v13, v14, v15}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1404
    sget-object v11, Lcom/igaworks/core/RequestParameter;->tempConversionCache:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    :cond_4
    sget-object v11, Lcom/igaworks/core/RequestParameter;->tempConversionCache:Ljava/util/ArrayList;

    return-object v11
.end method

.method public getConversionCacheHistory()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/model/DuplicationConversionKeyModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1329
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DuplicationConversionKeyModel;>;"
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "conversionCacheHistory"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1332
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 1333
    .local v2, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1334
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v4, Lcom/igaworks/model/DuplicationConversionKeyModel;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v8, v9, v6}, Lcom/igaworks/model/DuplicationConversionKeyModel;-><init>(JLjava/lang/String;)V

    .line 1335
    .local v4, "model":Lcom/igaworks/model/DuplicationConversionKeyModel;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1337
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v4    # "model":Lcom/igaworks/model/DuplicationConversionKeyModel;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 1338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1340
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method public getCrashParameter(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 35
    .param p1, "adid"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/lang/String;
    .param p3, "threadInfos"    # Lorg/json/JSONArray;
    .param p4, "reason"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 362
    .local v7, "context":Landroid/content/Context;
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    .line 363
    .local v21, "rootObj":Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 364
    .local v8, "deviceObj":Lorg/json/JSONObject;
    const-string v30, "adid"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v30, "os_type"

    const-string v31, "aos"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    sget-object v30, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v30, :cond_0

    sget-object v30, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_0

    .line 367
    sget-object v30, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igaworks/core/RequestParameter;->os:Ljava/lang/String;

    .line 368
    :cond_0
    const-string v30, "os_version"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "a_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->os:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    const-string v30, "package_name"

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v30, "appkey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->appkey:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    .line 374
    .local v19, "pi":Landroid/content/pm/PackageInfo;
    const-string v30, "app_version_name"

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string v30, "app_version_code"

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 381
    .end local v19    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    .line 382
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->getADBrixUserInfo_install_datetime()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    .line 384
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_9

    .line 385
    const-string v30, "install_datetime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 392
    :goto_1
    const-string v30, "common_sdk_version"

    invoke-static {}, Lcom/igaworks/core/IgawUpdateLog;->getCommonVersion()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    sget-boolean v30, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasAdbrixSDK:Z

    if-eqz v30, :cond_3

    .line 395
    const-string v30, "adbrix_sdk_version"

    sget-object v31, Lcom/igaworks/core/IgawUpdateLog;->VERSION:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    :cond_3
    sget-boolean v30, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasLiveOpsSDK:Z

    if-eqz v30, :cond_4

    .line 400
    :try_start_2
    const-string v30, "com.igaworks.liveops.IgawLiveOpsUpdateLog"

    invoke-static/range {v30 .. v30}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 401
    .local v6, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    .line 402
    .local v11, "i":Ljava/lang/Object;
    const-string v30, "getVersion"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 404
    .local v13, "m":Ljava/lang/reflect/Method;
    const-string v30, "liveops_sdk_version"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v13, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 410
    .end local v6    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "i":Ljava/lang/Object;
    .end local v13    # "m":Ljava/lang/reflect/Method;
    :cond_4
    :goto_2
    sget-boolean v30, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasAdpopcornSDK:Z

    if-eqz v30, :cond_5

    .line 412
    :try_start_3
    const-string v30, "com.igaworks.adpopcorn.cores.common.APUpdateLog"

    invoke-static/range {v30 .. v30}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 413
    .restart local v6    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    .line 414
    .restart local v11    # "i":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    const-string v31, "SDK_VERSION"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 415
    .local v10, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .line 416
    .local v27, "value":Ljava/lang/Object;
    const-string v30, "adpopcorn_sdk_version"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 422
    .end local v6    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "i":Ljava/lang/Object;
    .end local v27    # "value":Ljava/lang/Object;
    :cond_5
    :goto_3
    new-instance v23, Ljava/text/SimpleDateFormat;

    const-string v30, "yyyy-MM-dd HH:mm:ss"

    sget-object v31, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 423
    .local v23, "sdf":Ljava/text/SimpleDateFormat;
    const-string v30, "GMT+9"

    invoke-static/range {v30 .. v30}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 424
    new-instance v30, Ljava/util/Date;

    invoke-direct/range {v30 .. v30}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 425
    .local v12, "kstTime_CreateAt":Ljava/lang/String;
    const-string v30, "local_kst_time"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    const-string v30, "proximity_on"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 428
    const-string v30, "root_device"

    const-string v31, "su"

    invoke-static/range {v31 .. v31}, Lcom/igaworks/util/CommonHelper;->findBinary(Ljava/lang/String;)Z

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 430
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v18

    .line 431
    .local v18, "path":Ljava/io/File;
    new-instance v26, Landroid/os/StatFs;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 433
    .local v26, "stat":Landroid/os/StatFs;
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x12

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_a

    .line 434
    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v30

    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v32

    mul-long v16, v30, v32

    .line 435
    .local v16, "pSize":J
    const-string v30, "free_device_storage"

    invoke-static/range {v16 .. v17}, Lcom/igaworks/core/RequestParameter;->formatSize(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    .end local v16    # "pSize":J
    :goto_4
    const-string v30, "app_in_focus"

    sget-boolean v31, Lcom/igaworks/impl/CommonFrameworkImpl;->isFocusOnForCrashlytics:Z

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 444
    const-string v30, "device_model"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/core/RequestParameter;->model:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v22

    .line 447
    .local v22, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v32

    sub-long v30, v30, v32

    const-wide/32 v32, 0x100000

    div-long v28, v30, v32

    .line 448
    .local v28, "usedMemInMB":J
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v30

    const-wide/32 v32, 0x100000

    div-long v14, v30, v32

    .line 449
    .local v14, "maxHeapSizeInMB":J
    sub-long v4, v14, v28

    .line 451
    .local v4, "availHeapSizeInMB":J
    const-string v30, "free_memory"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "MB"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    const-string v30, "device_information"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    if-eqz p2, :cond_6

    const-string v30, "exception_log_trace"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    :cond_6
    if-eqz p4, :cond_7

    const-string v30, "exception_reason"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    :cond_7
    if-eqz p3, :cond_8

    const-string v30, "thread_information"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    :cond_8
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 459
    .local v20, "result":Ljava/lang/String;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v30

    const-string v31, "IGAW_QA"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ATRequestParameter > array"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    const/16 v34, 0x1

    invoke-static/range {v30 .. v34}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 460
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v30

    const-string v31, "IGAW_QA"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ATRequestParameter > crash Parameter : crash_info"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    const/16 v34, 0x1

    invoke-static/range {v30 .. v34}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 462
    return-object v21

    .line 387
    .end local v4    # "availHeapSizeInMB":J
    .end local v12    # "kstTime_CreateAt":Ljava/lang/String;
    .end local v14    # "maxHeapSizeInMB":J
    .end local v18    # "path":Ljava/io/File;
    .end local v20    # "result":Ljava/lang/String;
    .end local v22    # "runtime":Ljava/lang/Runtime;
    .end local v23    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v26    # "stat":Landroid/os/StatFs;
    .end local v28    # "usedMemInMB":J
    :cond_9
    :try_start_4
    const-string v30, "install_datetime"

    const-string v31, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 389
    :catch_0
    move-exception v9

    .line 390
    .local v9, "e":Ljava/lang/Exception;
    const-string v30, "install_datetime"

    const-string v31, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 405
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 406
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 417
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 418
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 439
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "kstTime_CreateAt":Ljava/lang/String;
    .restart local v18    # "path":Ljava/io/File;
    .restart local v23    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v26    # "stat":Landroid/os/StatFs;
    :cond_a
    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v30

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getBlockSize()I

    move-result v32

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v24, v30, v32

    .line 440
    .local v24, "sdAvailSize":D
    const-string v30, "free_device_storage"

    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Lcom/igaworks/core/RequestParameter;->formatSize(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 377
    .end local v12    # "kstTime_CreateAt":Ljava/lang/String;
    .end local v18    # "path":Ljava/io/File;
    .end local v23    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v24    # "sdAvailSize":D
    .end local v26    # "stat":Landroid/os/StatFs;
    :catch_3
    move-exception v30

    goto/16 :goto_0
.end method

.method public getCustomNetworkInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1094
    if-nez p1, :cond_0

    .line 1095
    :try_start_0
    const-string v4, "unKnown"

    .line 1117
    :goto_0
    return-object v4

    .line 1096
    :cond_0
    sget-boolean v4, Lcom/igaworks/impl/CommonFrameworkImpl;->REMOVE_NETWORKS_STATE_PERMISSION:Z

    if-eqz v4, :cond_1

    const-string v4, "unKnown"

    goto :goto_0

    .line 1098
    :cond_1
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1100
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_2

    .line 1101
    const-string v4, "unKnown"

    goto :goto_0

    .line 1103
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1104
    .local v2, "mobile":Landroid/net/NetworkInfo;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1106
    .local v3, "wifi":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_4

    .line 1108
    :cond_3
    const-string v4, "mobile"

    goto :goto_0

    .line 1110
    :cond_4
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_6

    .line 1112
    :cond_5
    const-string v4, "wifi"

    goto :goto_0

    .line 1114
    :cond_6
    const-string v4, "unknown"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1115
    .end local v0    # "conMan":Landroid/net/ConnectivityManager;
    .end local v2    # "mobile":Landroid/net/NetworkInfo;
    .end local v3    # "wifi":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 1116
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1117
    const-string v4, "unKnown"

    goto :goto_0
.end method

.method public getDemoInfo()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1156
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "demoForTracking"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1162
    .local v8, "tracerPref":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    .line 1164
    .local v6, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 1165
    const/4 v7, 0x0

    .line 1199
    .end local v7    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    return-object v7

    .line 1167
    .restart local v7    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/igaworks/dao/LocalDemograhpicDAO;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/LocalDemograhpicDAO;

    move-result-object v9

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/igaworks/dao/LocalDemograhpicDAO;->convertDemographicInfoFromSP2JSONObject(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1168
    .local v3, "localDemoGraphic":Lorg/json/JSONObject;
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1169
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1171
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1173
    :try_start_0
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1174
    .local v4, "local_value":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 1175
    new-instance v10, Landroid/util/Pair;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v10, v2, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Demographic info for tracking >> key: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "; value :"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x3

    const/4 v13, 0x1

    invoke-static {v10, v11, v9, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1185
    .end local v4    # "local_value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1187
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1178
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v4    # "local_value":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1179
    .local v5, "newValue":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1180
    new-instance v10, Landroid/util/Pair;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v10, v2, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Demographic info for tracking >> key: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "; value :"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x3

    const/4 v13, 0x1

    invoke-static {v10, v11, v9, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1190
    .end local v4    # "local_value":Ljava/lang/String;
    .end local v5    # "newValue":Ljava/lang/String;
    :cond_4
    new-instance v10, Landroid/util/Pair;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v10, v2, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Demographic info for tracking >> key: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "; value :"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x3

    const/4 v13, 0x1

    invoke-static {v10, v11, v9, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0
.end method

.method public getDemographic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1075
    const/4 v2, 0x0

    .line 1079
    .local v2, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1080
    :try_start_0
    const-string v3, "persistantDemoForTracking"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1081
    .local v0, "demoPref":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1088
    .end local v0    # "demoPref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v2

    .line 1084
    :catch_0
    move-exception v1

    .line 1085
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDemographicParameter()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 329
    .local v4, "rootObj":Lorg/json/JSONObject;
    const-string v6, "puid"

    iget-object v7, p0, Lcom/igaworks/core/RequestParameter;->puid:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/igaworks/core/RequestParameter;->checkIsNullOrEmptyAndReturnRegString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    iget-object v6, p0, Lcom/igaworks/core/RequestParameter;->google_ad_id:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 331
    invoke-static {}, Lcom/igaworks/dao/CoreIDDAO;->getInstance()Lcom/igaworks/dao/CoreIDDAO;

    move-result-object v6

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/igaworks/dao/CoreIDDAO;->getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/igaworks/core/RequestParameter;->google_ad_id:Ljava/lang/String;

    .line 332
    :cond_0
    const-string v6, "google_ad_id"

    iget-object v7, p0, Lcom/igaworks/core/RequestParameter;->google_ad_id:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 335
    .local v5, "userDemoArr":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 337
    .local v0, "aDemo":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/igaworks/core/RequestParameter;->getDemoInfo()Ljava/util/List;

    move-result-object v1

    .line 339
    .local v1, "demos":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v1, :cond_1

    .line 340
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 342
    .local v2, "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "aDemo":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 343
    .restart local v0    # "aDemo":Lorg/json/JSONObject;
    const-string v7, "demo_key"

    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v7, "demo_value"

    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 350
    .end local v2    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v6, "user_demo_info"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "result":Ljava/lang/String;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "IGAW_QA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ATRequestParameter > tracking Parameter : user_demo_info"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 356
    return-object v3
.end method

.method public getFirstLaunchTimeInfos()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 2029
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "adbrix_user_info"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2030
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    const-string v1, "app_first_launch_info"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2031
    const-string v1, "app_first_launch_info"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2033
    :cond_0
    return-wide v2
.end method

.method public getHashkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/igaworks/core/RequestParameter;->hashkey:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketPlace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/igaworks/core/RequestParameter;->market:Ljava/lang/String;

    return-object v0
.end method

.method public getMhowUdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1062
    invoke-static {}, Lcom/igaworks/dao/CoreIDDAO;->getInstance()Lcom/igaworks/dao/CoreIDDAO;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/igaworks/dao/CoreIDDAO;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, "deviceid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1065
    :try_start_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/igaworks/core/Mhows_AES_Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    :cond_0
    :goto_0
    return-object v0

    .line 1066
    :cond_1
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1067
    :catch_0
    move-exception v1

    .line 1068
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/igaworks/core/RequestParameter;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNonCustomNetworkInfo(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1124
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1125
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1130
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    .local v0, "currentNetwork":I
    :goto_0
    return v0

    .line 1126
    .end local v0    # "currentNetwork":I
    :catch_0
    move-exception v1

    .line 1127
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1128
    const/4 v0, 0x0

    .restart local v0    # "currentNetwork":I
    goto :goto_0
.end method

.method public getOpenudid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/igaworks/core/RequestParameter;->openudid:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistantDemoInfo_v2()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1207
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "persistantDemoForTracking"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1214
    .local v4, "tracerPref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 1216
    .local v2, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1217
    const/4 v3, 0x0

    .line 1228
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    return-object v3

    .line 1219
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1220
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1221
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1222
    .local v1, "key":Ljava/lang/String;
    new-instance v6, Landroid/util/Pair;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getProcessedConversions()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1511
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1513
    .local v8, "processedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "processedConversionCache"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1515
    .local v4, "conversionPref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 1516
    .local v3, "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Collection;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_2

    .line 1541
    .end local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v4    # "conversionPref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .local v7, "indx":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_3

    .line 1542
    sget-object v10, Lcom/igaworks/core/RequestParameter;->tempProcessedConversions:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1543
    sget-object v10, Lcom/igaworks/core/RequestParameter;->tempProcessedConversions:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1541
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1519
    .end local v7    # "indx":I
    .restart local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v4    # "conversionPref":Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1520
    .local v9, "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1522
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 1523
    .local v1, "aConvObj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1526
    .local v2, "aConversion":I
    :try_start_2
    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 1535
    .end local v1    # "aConvObj":Ljava/lang/Object;
    :goto_3
    :try_start_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1538
    .end local v2    # "aConversion":I
    .end local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v4    # "conversionPref":Landroid/content/SharedPreferences;
    .end local v9    # "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v5

    .line 1539
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1527
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "aConvObj":Ljava/lang/Object;
    .restart local v2    # "aConversion":I
    .restart local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v4    # "conversionPref":Landroid/content/SharedPreferences;
    .restart local v9    # "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_1
    move-exception v5

    .line 1529
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_4
    check-cast v1, Ljava/lang/String;

    .end local v1    # "aConvObj":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v2

    goto :goto_3

    .line 1530
    :catch_2
    move-exception v6

    .line 1531
    .local v6, "e1":Ljava/lang/Exception;
    goto :goto_2

    .line 1546
    .end local v2    # "aConversion":I
    .end local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v4    # "conversionPref":Landroid/content/SharedPreferences;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "e1":Ljava/lang/Exception;
    .end local v9    # "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v7    # "indx":I
    :cond_3
    sget-object v10, Lcom/igaworks/core/RequestParameter;->tempProcessedConversions:Ljava/util/ArrayList;

    return-object v10
.end method

.method public getReEngagementConversionTrackingParameter(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deeplink_info"    # Lorg/json/JSONObject;
    .param p3, "adid"    # Ljava/lang/String;
    .param p4, "adidOptOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 319
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/core/RequestParameter;->getAdbrixJSONParameter(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v7

    .line 320
    .local v7, "rootObj":Lorg/json/JSONObject;
    if-eqz p2, :cond_0

    const-string v0, "deeplink_info"

    invoke-virtual {v7, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    :cond_0
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 322
    .local v6, "result":Ljava/lang/String;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATRequestParameter > getDLConversionTrackingParameter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    return-object v6
.end method

.method public getReferralInfo_conversionKey()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1269
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/dao/ReferralInfoDAO;->getReferralInfo_conversionKey(Landroid/content/Context;)I

    move-result v0

    .line 1270
    .local v0, "conversionKey":I
    return v0
.end method

.method public getReferralKey()J
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 1947
    iget-wide v4, p0, Lcom/igaworks/core/RequestParameter;->referral_key:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 1948
    iget-wide v4, p0, Lcom/igaworks/core/RequestParameter;->referral_key:J

    .line 1963
    :goto_0
    return-wide v4

    .line 1951
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "adbrix_user_info"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1954
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "referral_key"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->referral_key:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1963
    :goto_1
    iget-wide v4, p0, Lcom/igaworks/core/RequestParameter;->referral_key:J

    goto :goto_0

    .line 1955
    :catch_0
    move-exception v1

    .line 1957
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "referral_key"

    const-string v4, "-1"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->referral_key:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1958
    :catch_1
    move-exception v2

    .line 1959
    .local v2, "e1":Ljava/lang/Exception;
    iput-wide v6, p0, Lcom/igaworks/core/RequestParameter;->referral_key:J

    goto :goto_1
.end method

.method public getReferrerTrackingParameter(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "adid"    # Ljava/lang/String;
    .param p5, "adidOptOut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p2, "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 306
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/core/RequestParameter;->getAdbrixJSONParameter(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;ZZ)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, "result":Ljava/lang/String;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATRequestParameter > referral Parameter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 310
    return-object v8
.end method

.method public getRetainedConversionCache()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v15, 0x0

    .line 1449
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1451
    .local v9, "retainconversionCacheList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "retainedconversionCache"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1453
    .local v4, "conversionPref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 1454
    .local v3, "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Collection;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_2

    .line 1479
    .end local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v4    # "conversionPref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .local v7, "indx":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_3

    .line 1480
    sget-object v11, Lcom/igaworks/core/RequestParameter;->tempRetainedConversionCache:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1481
    sget-object v11, Lcom/igaworks/core/RequestParameter;->tempRetainedConversionCache:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1457
    .end local v7    # "indx":I
    .restart local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v4    # "conversionPref":Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1458
    .local v10, "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1460
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 1461
    .local v1, "aConvObj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1464
    .local v2, "aConversion":I
    :try_start_2
    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 1473
    .end local v1    # "aConvObj":Ljava/lang/Object;
    :goto_3
    :try_start_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1476
    .end local v2    # "aConversion":I
    .end local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v4    # "conversionPref":Landroid/content/SharedPreferences;
    .end local v10    # "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v5

    .line 1477
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1465
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "aConvObj":Ljava/lang/Object;
    .restart local v2    # "aConversion":I
    .restart local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v4    # "conversionPref":Landroid/content/SharedPreferences;
    .restart local v10    # "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_1
    move-exception v5

    .line 1467
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_4
    check-cast v1, Ljava/lang/String;

    .end local v1    # "aConvObj":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v2

    goto :goto_3

    .line 1468
    :catch_2
    move-exception v6

    .line 1469
    .local v6, "e1":Ljava/lang/Exception;
    goto :goto_2

    .line 1484
    .end local v2    # "aConversion":I
    .end local v3    # "cKey":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v4    # "conversionPref":Landroid/content/SharedPreferences;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "e1":Ljava/lang/Exception;
    .end local v10    # "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v7    # "indx":I
    :cond_3
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/igaworks/dao/ReferralInfoDAO;->getReferralInfo_conversionKey(Landroid/content/Context;)I

    move-result v8

    .line 1485
    .local v8, "referrerKey":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/core/RequestParameter;->isNewInstall()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1486
    sget-object v11, Lcom/igaworks/core/RequestParameter;->tempRetainedConversionCache:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1487
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "IGAW_QA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add refererKey temporarily to cvRetainedCache: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v11, v12, v13, v14, v15}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1488
    sget-object v11, Lcom/igaworks/core/RequestParameter;->tempRetainedConversionCache:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    :cond_4
    sget-object v11, Lcom/igaworks/core/RequestParameter;->tempRetainedConversionCache:Ljava/util/ArrayList;

    return-object v11
.end method

.method public getThirdPartyID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/igaworks/core/RequestParameter;->thirdPartyID:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingParameterForADBrix(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "adid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 267
    .local p2, "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 269
    .local v6, "adidOptOut":Z
    iget-object v0, p0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/igaworks/core/RequestParameter;->didManager:Lcom/igaworks/core/DeviceIDManger;

    invoke-virtual {v0}, Lcom/igaworks/core/DeviceIDManger;->getAdidInfo()Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-result-object v7

    .line 272
    .local v7, "adinfo":Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    if-eqz v7, :cond_0

    .line 274
    invoke-virtual {v7}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v6

    .line 279
    .end local v7    # "adinfo":Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :cond_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/igaworks/core/RequestParameter;->getTrackingParameterForADBrix(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingParameterForADBrix(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "adid"    # Ljava/lang/String;
    .param p5, "adidOptOut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 283
    .local p2, "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/igaworks/core/RequestParameter;->getTrackingParameterForADBrix(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingParameterForADBrix(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p5, "adid"    # Ljava/lang/String;
    .param p6, "adidOptOut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 289
    .local p2, "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "complete_conversion_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/core/RequestParameter;->getAdbrixJSONParameter(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "result":Ljava/lang/String;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATRequestParameter > tracking Parameter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    return-object v6
.end method

.method public getappLaunchCount()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/igaworks/core/RequestParameter;->app_launch_count:J

    return-wide v0
.end method

.method public increaseAppLaunchCount()V
    .locals 8

    .prologue
    .line 1984
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "adbrix_user_info"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1985
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1987
    .local v2, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "app_launch_count"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->app_launch_count:J

    .line 1988
    iget-wide v4, p0, Lcom/igaworks/core/RequestParameter;->app_launch_count:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->app_launch_count:J

    .line 1989
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app_launch_count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/igaworks/core/RequestParameter;->app_launch_count:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1990
    const-string v3, "app_launch_count"

    iget-wide v4, p0, Lcom/igaworks/core/RequestParameter;->app_launch_count:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1991
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1995
    .end local v0    # "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    .end local v2    # "user_info_editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 1992
    :catch_0
    move-exception v1

    .line 1993
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isNewInstall()Z
    .locals 1

    .prologue
    .line 1550
    iget-boolean v0, p0, Lcom/igaworks/core/RequestParameter;->isNewInstall:Z

    return v0
.end method

.method public isSecurity_enable()Z
    .locals 1

    .prologue
    .line 1040
    iget-boolean v0, p0, Lcom/igaworks/core/RequestParameter;->security_enable:Z

    return v0
.end method

.method public removeRetainedConversionCache(I)V
    .locals 7
    .param p1, "conversionKey"    # I

    .prologue
    .line 1431
    :try_start_0
    sget-object v3, Lcom/igaworks/core/RequestParameter;->tempRetainedConversionCache:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1432
    sget-object v3, Lcom/igaworks/core/RequestParameter;->tempRetainedConversionCache:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1435
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "retainedconversionCache"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1436
    .local v2, "retainedconversionPref":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1437
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1438
    .local v1, "inputConversionKey":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1439
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1446
    .end local v1    # "inputConversionKey":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "retainedconversionPref":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1441
    .restart local v2    # "retainedconversionPref":Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retainedconversionCache does\'t have conversion key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1443
    .end local v2    # "retainedconversionPref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 1444
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setADBrixUserInfo(JJ)V
    .locals 7
    .param p1, "adbrix_user_no_"    # J
    .param p3, "life_hour_start_time"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 1608
    iget-wide v2, p0, Lcom/igaworks/core/RequestParameter;->adbrix_user_no:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    cmp-long v2, p1, v4

    if-nez v2, :cond_0

    .line 1619
    :goto_0
    return-void

    .line 1611
    :cond_0
    iput-wide p1, p0, Lcom/igaworks/core/RequestParameter;->adbrix_user_no:J

    .line 1612
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1613
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1614
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 1615
    const-string v2, "adbrix_user_no"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1616
    const-string v2, "life_hour_start_time"

    invoke-interface {v1, v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1618
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setADBrixUserInfo_ReferralKey(J)V
    .locals 7
    .param p1, "referral_key_"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 1623
    iget-wide v2, p0, Lcom/igaworks/core/RequestParameter;->referral_key:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    cmp-long v2, p1, v4

    if-nez v2, :cond_0

    .line 1631
    :goto_0
    return-void

    .line 1624
    :cond_0
    iput-wide p1, p0, Lcom/igaworks/core/RequestParameter;->referral_key:J

    .line 1625
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1626
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1627
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 1628
    const-string v2, "referral_key"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1630
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setADBrixUserInfo_Refusn(Ljava/lang/String;)V
    .locals 5
    .param p1, "refusn_"    # Ljava/lang/String;

    .prologue
    .line 1701
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1702
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1703
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1704
    const-string v2, "refusn"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1705
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->refusn:Ljava/lang/String;

    .line 1707
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1708
    return-void
.end method

.method public setADBrixUserInfo_ShardNo(I)V
    .locals 5
    .param p1, "shardNo_"    # I

    .prologue
    .line 1725
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1726
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1727
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, -0x1

    if-le p1, v2, :cond_0

    .line 1728
    const-string v2, "shard_no"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1729
    iput p1, p0, Lcom/igaworks/core/RequestParameter;->shard_no:I

    .line 1731
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1734
    .end local v0    # "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    .end local v1    # "user_info_editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 1732
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setADBrixUserInfo_SubReferralKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "subreferral_key_"    # Ljava/lang/String;

    .prologue
    .line 1634
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1635
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1636
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1637
    const-string v2, "subreferral_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1638
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->subreferral_key:Ljava/lang/String;

    .line 1640
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1641
    return-void
.end method

.method public setADBrixUserInfo_install_datetime(Ljava/lang/String;)V
    .locals 5
    .param p1, "installDatetime"    # Ljava/lang/String;

    .prologue
    .line 1753
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1764
    :cond_0
    :goto_0
    return-void

    .line 1755
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1756
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1757
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1758
    const-string v2, "install_datetime"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1759
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->install_datetime:Ljava/lang/String;

    .line 1761
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1762
    .end local v0    # "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    .end local v1    # "user_info_editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setADBrixUserInfo_last_referral_data(Ljava/lang/String;)V
    .locals 5
    .param p1, "last_referral_data_"    # Ljava/lang/String;

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->last_referral_data:Ljava/lang/String;

    .line 1887
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1888
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1889
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_referral_data"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1890
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1891
    return-void
.end method

.method public setADBrixUserInfo_last_referral_datetime(Ljava/lang/String;)V
    .locals 5
    .param p1, "last_referral_datetime_"    # Ljava/lang/String;

    .prologue
    .line 1862
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->last_referral_datetime:Ljava/lang/String;

    .line 1864
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1865
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1866
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_referral_datetime"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1867
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1870
    .end local v0    # "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    .end local v1    # "user_info_editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 1868
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setADBrixUserInfo_last_referral_key(J)V
    .locals 5
    .param p1, "last_referral_key_"    # J

    .prologue
    .line 1840
    iput-wide p1, p0, Lcom/igaworks/core/RequestParameter;->last_referral_key:J

    .line 1841
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1842
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1843
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_referral_key"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1844
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1845
    return-void
.end method

.method public setADBrixUserInfo_reengagement_conversion_key(J)V
    .locals 5
    .param p1, "reengagement_conversion_key_"    # J

    .prologue
    .line 1815
    iput-wide p1, p0, Lcom/igaworks/core/RequestParameter;->reengagement_conversion_key:J

    .line 1816
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1817
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1818
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "reengagement_conversion_key"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1819
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1820
    return-void
.end method

.method public setADBrixUserInfo_reengagement_data(Ljava/lang/String;)V
    .locals 5
    .param p1, "reengagement_data_"    # Ljava/lang/String;

    .prologue
    .line 1669
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1670
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1671
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1672
    const-string v2, "reengagement_data"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1673
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->reengagement_data:Ljava/lang/String;

    .line 1675
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1676
    return-void
.end method

.method public setADBrixUserInfo_reengagment_datetime(Ljava/lang/String;)V
    .locals 5
    .param p1, "reengagementDatetime"    # Ljava/lang/String;

    .prologue
    .line 1782
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1783
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1784
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1785
    const-string v2, "reengagement_datetime"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1786
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->reengagement_datetime:Ljava/lang/String;

    .line 1788
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1791
    .end local v0    # "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    .end local v1    # "user_info_editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 1789
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setADBrixUserInfo_referral_data(Ljava/lang/String;)V
    .locals 5
    .param p1, "referral_data_"    # Ljava/lang/String;

    .prologue
    .line 1645
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1646
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1647
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1648
    const-string v2, "referral_data"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1649
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->referral_data:Ljava/lang/String;

    .line 1651
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1652
    return-void
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    .line 226
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/core/RequestParameter;->activity:Ljava/lang/String;

    .line 227
    :cond_1
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->activity:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setAllowDuplicationConversion(II)V
    .locals 7
    .param p1, "conversionKey"    # I
    .param p2, "parentCK"    # I

    .prologue
    .line 1275
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "AllowDuplicationConversionList"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1276
    .local v0, "AllowDuplicationConversionList":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1277
    .local v3, "str":Ljava/lang/String;
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1278
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1279
    .local v1, "AllowDuplicationConversionListEdt":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1282
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::--::;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1283
    .local v2, "parentKeyGroup":Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1284
    invoke-interface {v1, v2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1286
    :cond_1
    invoke-interface {v1, v3, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1287
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1289
    .end local v1    # "AllowDuplicationConversionListEdt":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "parentKeyGroup":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 185
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "-1"

    iput-object v0, p0, Lcom/igaworks/core/RequestParameter;->appkey:Ljava/lang/String;

    .line 186
    :cond_1
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->appkey:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setChannelType(I)V
    .locals 5
    .param p1, "channelType"    # I

    .prologue
    .line 1903
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adbrix_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1904
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1905
    .local v1, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 1906
    const-string v2, "channel_type"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1907
    iput p1, p0, Lcom/igaworks/core/RequestParameter;->channel_type:I

    .line 1909
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1910
    return-void
.end method

.method public setCompleteConversions(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1558
    .local p1, "completeConversionKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "completeConversions"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1560
    .local v1, "conversionPref":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1562
    .local v0, "conversionKey":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1563
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "IGAW_QA"

    const-string v6, "completeConversionKey was already saved in storage"

    const/4 v7, 0x3

    invoke-static {v3, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1565
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1566
    .local v2, "inputConversionKey":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1567
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1570
    .end local v0    # "conversionKey":I
    .end local v2    # "inputConversionKey":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public setConversionCache(I)V
    .locals 6
    .param p1, "conversionKey"    # I

    .prologue
    .line 1351
    sget-object v2, Lcom/igaworks/core/RequestParameter;->tempConversionCache:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1352
    sget-object v2, Lcom/igaworks/core/RequestParameter;->tempConversionCache:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "conversionCache"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1355
    .local v0, "conversionPref":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1356
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IGAW_QA"

    const-string v4, "conversionKey was already saved in storage"

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1362
    :goto_0
    return-void

    .line 1358
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1359
    .local v1, "inputConversionKey":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1360
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setConversionCacheHistory(IJ)V
    .locals 6
    .param p1, "conversionKey"    # I
    .param p2, "completeTime"    # J

    .prologue
    .line 1322
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "conversionCacheHistory"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1323
    .local v0, "conversionPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1324
    .local v1, "inputConversionKey":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::--::;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1325
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1326
    return-void
.end method

.method public setFirstLaunchTimeInfos()V
    .locals 8

    .prologue
    .line 2012
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "adbrix_user_info"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2013
    .local v0, "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2015
    .local v2, "user_info_editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/igaworks/core/RequestParameter;->getFirstLaunchTimeInfos()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->app_first_launch_time:J

    .line 2016
    iget-wide v4, p0, Lcom/igaworks/core/RequestParameter;->app_first_launch_time:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 2017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/igaworks/core/RequestParameter;->app_first_launch_time:J

    .line 2018
    const-string v3, "app_first_launch_info"

    iget-wide v4, p0, Lcom/igaworks/core/RequestParameter;->app_first_launch_time:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2019
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2020
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app_first_launch_info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/igaworks/core/RequestParameter;->app_first_launch_time:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2026
    .end local v0    # "adbrix_user_info_pref":Landroid/content/SharedPreferences;
    .end local v2    # "user_info_editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 2023
    :catch_0
    move-exception v1

    .line 2024
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setHashkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "hashkey"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->hashkey:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setMarketPlace(Ljava/lang/String;)V
    .locals 1
    .param p1, "market"    # Ljava/lang/String;

    .prologue
    .line 205
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "unknown"

    .line 206
    :cond_1
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->market:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setMc(Ljava/lang/String;)V
    .locals 1
    .param p1, "mc"    # Ljava/lang/String;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/core/RequestParameter;->mc:Ljava/lang/String;

    .line 201
    :cond_1
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->mc:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setNewInstall(Z)V
    .locals 0
    .param p1, "isNewInstall"    # Z

    .prologue
    .line 1554
    iput-boolean p1, p0, Lcom/igaworks/core/RequestParameter;->isNewInstall:Z

    .line 1555
    return-void
.end method

.method public setOpenudid(Ljava/lang/String;)V
    .locals 0
    .param p1, "openudid"    # Ljava/lang/String;

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->openudid:Ljava/lang/String;

    .line 1055
    return-void
.end method

.method public setProcessedConversions(I)V
    .locals 6
    .param p1, "conversionKey"    # I

    .prologue
    .line 1496
    sget-object v2, Lcom/igaworks/core/RequestParameter;->tempProcessedConversions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1497
    sget-object v2, Lcom/igaworks/core/RequestParameter;->tempProcessedConversions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "processedConversionCache"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1501
    .local v1, "processedConversionPref":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1502
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " conversion was already saved in processedConversionCache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1508
    :goto_0
    return-void

    .line 1504
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1505
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1506
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setReqSeq(I)V
    .locals 0
    .param p1, "reqseq"    # I

    .prologue
    .line 222
    iput p1, p0, Lcom/igaworks/core/RequestParameter;->reqseq:I

    .line 223
    return-void
.end method

.method public setRetainedConversionCache(I)V
    .locals 6
    .param p1, "conversionKey"    # I

    .prologue
    .line 1413
    sget-object v2, Lcom/igaworks/core/RequestParameter;->tempRetainedConversionCache:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1414
    sget-object v2, Lcom/igaworks/core/RequestParameter;->tempRetainedConversionCache:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "retainedconversionCache"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1418
    .local v1, "retainedconversionPref":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1419
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IGAW_QA"

    const-string v4, "retainedconversionCache was already saved in storage"

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1426
    :goto_0
    return-void

    .line 1421
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1422
    .local v0, "inputConversionKey":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1423
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setSecurity_enable(Z)V
    .locals 0
    .param p1, "security_enable"    # Z

    .prologue
    .line 1044
    iput-boolean p1, p0, Lcom/igaworks/core/RequestParameter;->security_enable:Z

    .line 1045
    return-void
.end method

.method public setTempConversionCache(I)V
    .locals 2
    .param p1, "conversionKey"    # I

    .prologue
    .line 1345
    sget-object v0, Lcom/igaworks/core/RequestParameter;->tempConversionCache:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1346
    sget-object v0, Lcom/igaworks/core/RequestParameter;->tempConversionCache:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    :cond_0
    return-void
.end method

.method public setThirdPartyID(Ljava/lang/String;)V
    .locals 1
    .param p1, "thirdPartyID"    # Ljava/lang/String;

    .prologue
    .line 190
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 191
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter;->thirdPartyID:Ljava/lang/String;

    .line 193
    :cond_0
    return-void
.end method
