.class public Lcom/igaworks/net/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field public static final ADBRIX_USER_NO:Ljava/lang/String; = "user_no"

.field protected static final CFG_DOMAIN_LIVE:Ljava/lang/String; = "https://config.ad-brix.com/"

.field public static final CHANNEL_TYPE:Ljava/lang/String; = "channel_type"

.field public static final COMMERCE_V2_TEST:Ljava/lang/String; = "http://adbrix-commerce-web-dev.ap-northeast-1.elasticbeanstalk.com/v1/"

.field public static CONFIG_REQUEST_URL_FOR_ADBrix:Ljava/lang/String; = null

.field public static final CONVERSION_HISTORY:Ljava/lang/String; = "conversion_history"

.field public static final CONVERSION_KEY:Ljava/lang/String; = "conversion_key"

.field public static final CONVERSION_KEY_LIST:Ljava/lang/String; = "conversion_key_list"

.field public static final CONVERSION_RESULT:Ljava/lang/String; = "conversion_result"

.field protected static final CPN_DOMAIN_LIVE_V1:Ljava/lang/String; = "https://campaign.ad-brix.com/v1/"

.field protected static final CRS_DOMAIN_LIVE:Ljava/lang/String; = "https://igawcrashlytics.ad-brix.com/api/v1.0/"

.field protected static final CVR_DOMAIN_LIVE_V1:Ljava/lang/String; = "https://cvr.ad-brix.com/v1/"

.field public static final DATA:Ljava/lang/String; = "Data"

.field public static final DEEPLINK:Ljava/lang/String; = "deeplink"

.field public static final DEEPLINK_DOMAIN_LIVE:Ljava/lang/String; = "https://apiab4c.ad-brix.com/v1/"

.field public static final DEMOGRAPHIC_CALLBACK:I = 0x2

.field public static final INSTALL_DATETIME:Ljava/lang/String; = "install_datetime"

.field public static final LAST_REFERRAL_DATA:Ljava/lang/String; = "last_referral_data"

.field public static final LAST_REFERRAL_DATETIME:Ljava/lang/String; = "last_referral_datetime"

.field public static final LAST_REFERRAL_KEY:Ljava/lang/String; = "last_referral_key"

.field public static final POSTBACK_ENGAGEMENT_DATETIME:Ljava/lang/String; = "reengagement_datetime"

.field public static final POSTBACK_REENGAGEMENT_DATA:Ljava/lang/String; = "reengagement_data"

.field public static final POSTBACK_REFERRER_DATA:Ljava/lang/String; = "referral_data"

.field public static final REENGAGEMENT_CONVERSION_KEY:Ljava/lang/String; = "reengagement_conversion_key"

.field public static final REFERRALKEY:Ljava/lang/String; = "referralKey"

.field public static final REFERRER_CALLBACK:I = 0x5

.field protected static final REF_DOMAIN_LIVE_V1:Ljava/lang/String; = "https://ref.ad-brix.com/v1/"

.field public static final REF_USN:Ljava/lang/String; = "refusn"

.field public static final RESULT:Ljava/lang/String; = "Result"

.field public static final RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final RESULT_MSG:Ljava/lang/String; = "result_msg"

.field public static final SERVER_BASE_TIME:Ljava/lang/String; = "BaseTime"

.field public static final SHARD_NO:Ljava/lang/String; = "shard_no"

.field public static final SUBREFERRALKEY:Ljava/lang/String; = "subreferralKey"

.field public static final TOAST_MSG:Ljava/lang/String; = "toast_msg"

.field public static final TRACKING_CALLBACK:I = 0x0

.field protected static final TRK_DOMAIN_LIVE_V1:Ljava/lang/String; = "https://tracking.ad-brix.com/v1/"

.field public static final WAITING_TIME:Ljava/lang/String; = "waiting_time"

.field public static cfg_domain:Ljava/lang/String;

.field public static cpn_domain:Ljava/lang/String;

.field public static crs_domain:Ljava/lang/String;

.field public static cvr_domain:Ljava/lang/String;

.field public static dl_domain:Ljava/lang/String;

.field public static ref_domain:Ljava/lang/String;

.field public static trk_domain:Ljava/lang/String;


# instance fields
.field public DEEP_LINK_CONVERSION_FOR_ADBrix:Ljava/lang/String;

.field public DEMOGRAPHIC_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

.field public REENGAGEMENT_CONVERISON_REQ_URL_FOR_ADBRIX:Ljava/lang/String;

.field public REFERRER_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

.field public THIRDPARTY_CONVERSION_REQ_URL_FOR_ADBRIX:Ljava/lang/String;

.field public TRACKING_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

.field public TRACKING_REQUEST_URL_FOR_CRASHLTICS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "https://tracking.ad-brix.com/v1/"

    sput-object v0, Lcom/igaworks/net/HttpManager;->trk_domain:Ljava/lang/String;

    .line 43
    const-string v0, "https://cvr.ad-brix.com/v1/"

    sput-object v0, Lcom/igaworks/net/HttpManager;->cvr_domain:Ljava/lang/String;

    .line 44
    const-string v0, "https://ref.ad-brix.com/v1/"

    sput-object v0, Lcom/igaworks/net/HttpManager;->ref_domain:Ljava/lang/String;

    .line 45
    const-string v0, "https://campaign.ad-brix.com/v1/"

    sput-object v0, Lcom/igaworks/net/HttpManager;->cpn_domain:Ljava/lang/String;

    .line 46
    const-string v0, "https://config.ad-brix.com/"

    sput-object v0, Lcom/igaworks/net/HttpManager;->cfg_domain:Ljava/lang/String;

    .line 47
    const-string v0, "https://igawcrashlytics.ad-brix.com/api/v1.0/"

    sput-object v0, Lcom/igaworks/net/HttpManager;->crs_domain:Ljava/lang/String;

    .line 59
    const-string v0, "/init.json"

    sput-object v0, Lcom/igaworks/net/HttpManager;->CONFIG_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    .line 69
    const-string v0, "https://apiab4c.ad-brix.com/v1/"

    sput-object v0, Lcom/igaworks/net/HttpManager;->dl_domain:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igaworks/net/HttpManager;->trk_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tracking"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/net/HttpManager;->TRACKING_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igaworks/net/HttpManager;->trk_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tracking/SetUserDemographic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/net/HttpManager;->DEMOGRAPHIC_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igaworks/net/HttpManager;->cvr_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "conversion/GetReferral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/net/HttpManager;->REFERRER_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igaworks/net/HttpManager;->cvr_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "conversion/ReEngagementConversion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/net/HttpManager;->REENGAGEMENT_CONVERISON_REQ_URL_FOR_ADBRIX:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igaworks/net/HttpManager;->cvr_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "conversion/GetAppLinkReferral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/net/HttpManager;->THIRDPARTY_CONVERSION_REQ_URL_FOR_ADBRIX:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igaworks/net/HttpManager;->crs_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sdkcrashevent/log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/net/HttpManager;->TRACKING_REQUEST_URL_FOR_CRASHLTICS:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igaworks/net/HttpManager;->dl_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tracking/conversions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/net/HttpManager;->DEEP_LINK_CONVERSION_FOR_ADBrix:Ljava/lang/String;

    return-void
.end method

.method public static isLive(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x1

    .line 110
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 111
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 112
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "igaw_release_mode"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    .local v3, "releaseMode":Ljava/lang/String;
    const-string v5, "stage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    const-string v5, "IGAW_QA"

    const-string v6, "Release Mode : stage mode"

    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-static {p0, v5, v6, v7, v8}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v4, 0x0

    .line 123
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "releaseMode":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "IGAW_QA"

    const-string v6, "Release Mode : live mode"

    invoke-static {p0, v5, v6, v9, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method
