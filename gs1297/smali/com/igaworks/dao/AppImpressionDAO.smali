.class public Lcom/igaworks/dao/AppImpressionDAO;
.super Ljava/lang/Object;
.source "AppImpressionDAO.java"


# static fields
.field public static final FIRST_START_SP_NAME:Ljava/lang/String; = "firstStart"

.field public static final FIRST_START_TIME:Ljava/lang/String; = "firstStartTime"

.field public static firstStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igaworks/dao/AppImpressionDAO;->firstStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFirstStartToSP(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    .local v0, "firstEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "fts"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 30
    sget-wide v2, Lcom/igaworks/dao/AppImpressionDAO;->firstStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/igaworks/dao/AppImpressionDAO;->firstStartTime:J

    .line 31
    :cond_0
    const-string v1, "firstStartTime"

    sget-wide v2, Lcom/igaworks/dao/AppImpressionDAO;->firstStartTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    return-void
.end method

.method public static getAppLinkConversionKey(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const-string v0, "firstStart"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AppLinkConversionKey"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDeferrerlink(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const-string v0, "firstStart"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DeferrerLink"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstStartTime(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    .line 36
    sget-wide v2, Lcom/igaworks/dao/AppImpressionDAO;->firstStartTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    sget-wide v2, Lcom/igaworks/dao/AppImpressionDAO;->firstStartTime:J

    .line 43
    :goto_0
    return-wide v2

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "firstStartTime"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/igaworks/dao/AppImpressionDAO;->firstStartTime:J

    .line 38
    sget-wide v2, Lcom/igaworks/dao/AppImpressionDAO;->firstStartTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    sget-wide v2, Lcom/igaworks/dao/AppImpressionDAO;->firstStartTime:J

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/igaworks/dao/AppImpressionDAO;->firstStartTime:J

    .line 40
    invoke-static {p0}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    .local v0, "firstEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "firstStartTime"

    sget-wide v2, Lcom/igaworks/dao/AppImpressionDAO;->firstStartTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    sget-wide v2, Lcom/igaworks/dao/AppImpressionDAO;->firstStartTime:J

    goto :goto_0
.end method

.method public static getInitAdidtToSP(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initial_ad_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastDailyRentionDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const-string v0, "firstStart"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LastDailyRentionDate"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReportThirdPartyInstallEventExist(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 81
    const-string v0, "firstStart"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "frtie"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getServerBaseTimeOffset(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ServerBaseTimeOffset"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v1, "firstStart"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, "firstStartSP":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public static getSynAdbrix(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-static {p0}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "IsSynAdbrix"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAppLinkConversionKey(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ck"    # I

    .prologue
    .line 85
    invoke-static {p0}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, "firstEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "AppLinkConversionKey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method

.method public static setDeferrerlink(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deferrerlink"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, "firstEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "DeferrerLink"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method public static setInitAdidtToSP(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "init_ad_id"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 19
    .local v0, "firstEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "initial_ad_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 21
    return-void
.end method

.method public static setLastDailyRentionDate(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LastDailyRentionDate"

    sget-object v2, Lcom/igaworks/dao/AdbrixDB_v2;->DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    return-void
.end method

.method public static setReportThirdPartyInstallEventExist(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, "firstEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "frtie"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method public static setServerBaseTimeOffset(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "basetime"    # J

    .prologue
    .line 59
    sget-object v0, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/dao/AppImpressionDAO$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/dao/AppImpressionDAO$1;-><init>(Landroid/content/Context;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public static setSynAdbrix(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-static {p0}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    .local v0, "firstEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsSynAdbrix"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method
