.class public Lcom/igaworks/dao/ReferralInfoDAO;
.super Ljava/lang/Object;
.source "ReferralInfoDAO.java"


# static fields
.field public static final SENT_CPI_REFERRER_SUCCESS:Ljava/lang/String; = "success_send_cpi_referrer"

.field public static onReceiveReferral:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/dao/ReferralInfoDAO;->onReceiveReferral:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearOnReceiveReferralFlag(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v3, 0x0

    :try_start_0
    sput-boolean v3, Lcom/igaworks/dao/ReferralInfoDAO;->onReceiveReferral:Z

    .line 100
    const-string v3, "referral_info"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    .local v0, "conversionPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 103
    .local v2, "referrerEditor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "onReceiveReferral"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string v3, "success_send_cpi_referrer"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    const-string v3, "IGAW_QA"

    const-string v4, "ReferralInfoDAO >> clearOnReceiveReferralFlag"

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0    # "conversionPref":Landroid/content/SharedPreferences;
    .end local v2    # "referrerEditor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOnReceiveReferralFlag(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 112
    sget-boolean v2, Lcom/igaworks/dao/ReferralInfoDAO;->onReceiveReferral:Z

    .line 113
    .local v2, "onReceiveReferral_":Z
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 121
    :goto_0
    return v3

    .line 114
    :cond_0
    const-string v3, "referral_info"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, "conversionPref":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "onReceiveReferral"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 121
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getReferralInfo_conversionKey(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v4, "referral_info"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 50
    .local v1, "conversionPref":Landroid/content/SharedPreferences;
    const/4 v0, -0x1

    .line 53
    .local v0, "conversionKey":I
    :try_start_0
    const-string v4, "conversion_key"

    const/4 v5, -0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 62
    :goto_0
    return v0

    .line 54
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "conversion_key"

    const-string v5, "-1"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 57
    :catch_1
    move-exception v3

    .line 58
    .local v3, "e1":Ljava/lang/Exception;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getReferralInfo_referrer_params(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-string v3, "referral_info"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    .local v0, "conversionPref":Landroid/content/SharedPreferences;
    const-string v2, ""

    .line 87
    .local v2, "referrerParam":Ljava/lang/String;
    :try_start_0
    const-string v3, "referrer_param"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 92
    :goto_0
    return-object v2

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getReferralInfo_session_no(Landroid/content/Context;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const-string v5, "referral_info"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 67
    .local v2, "conversionPref":Landroid/content/SharedPreferences;
    const-wide/16 v0, -0x1

    .line 70
    .local v0, "conversionKey":J
    :try_start_0
    const-string v5, "session_no"

    const-wide/16 v6, -0x1

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 79
    :goto_0
    return-wide v0

    .line 71
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "session_no"

    const-string v6, "-1"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 74
    :catch_1
    move-exception v4

    .line 75
    .local v4, "e1":Ljava/lang/Exception;
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static isSentRefferrerSuccess2Adbrix(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "isSuccess":Z
    const-string v3, "referral_info"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    .local v0, "conversionPref":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "success_send_cpi_referrer"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 132
    :goto_0
    return v2

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setReferralInfo(Landroid/content/Context;IJLjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "referrerConversionKey"    # I
    .param p2, "session_no"    # J
    .param p4, "referrerParams"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 18
    sput-boolean v3, Lcom/igaworks/dao/ReferralInfoDAO;->onReceiveReferral:Z

    .line 20
    :try_start_0
    const-string v3, "referral_info"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    .local v0, "conversionPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 24
    .local v2, "referrerEditor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, -0x1

    if-le p1, v3, :cond_0

    .line 25
    const-string v3, "conversion_key"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 29
    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v3, p2, v4

    if-lez v3, :cond_1

    .line 30
    const-string v3, "session_no"

    invoke-interface {v2, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 33
    :cond_1
    const-string v3, "referrer_param"

    invoke-interface {v2, v3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    const-string v3, "onReceiveReferral"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    const-string v3, "IGAW_QA"

    const-string v4, "ReferralInfo >> IgawReceiver onReceive(): recieved Google referrer, (conversion_key = %d, session_no = %d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 40
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "conversionPref":Landroid/content/SharedPreferences;
    .end local v2    # "referrerEditor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
