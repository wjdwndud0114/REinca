.class public Lcom/igaworks/adbrix/db/RealRewardDAO;
.super Ljava/lang/Object;
.source "RealRewardDAO.java"


# static fields
.field public static final COMPLETE_KEY_POSTFIX:Ljava/lang/String; = "_cp"

.field public static final DAILY_COMPLETION_KEY_POSTFIX:Ljava/lang/String; = "_dc"

.field public static final REAL_REWARD_SP_NAME:Ljava/lang/String; = "real_reward_sp"

.field public static final RETRY_COMPLETE_KEY_POSTFIX:Ljava/lang/String; = "_rc"

.field public static final RETRY_REDEEM_KEY_POSTFIX:Ljava/lang/String; = "_rr"

.field public static final SESSION_KEY_POSTFIX:Ljava/lang/String; = "_ss"

.field public static final SESSION_TIME_KEY_POSTFIX:Ljava/lang/String; = "_st"

.field public static sdf:Ljava/text/SimpleDateFormat;

.field private static singleton:Lcom/igaworks/adbrix/db/RealRewardDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/adbrix/db/RealRewardDAO;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDay()Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    sget-object v1, Lcom/igaworks/adbrix/db/RealRewardDAO;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "day":Ljava/lang/String;
    return-object v0
.end method

.method private getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "postfix"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/igaworks/adbrix/db/RealRewardDAO;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/igaworks/adbrix/db/RealRewardDAO;->singleton:Lcom/igaworks/adbrix/db/RealRewardDAO;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/igaworks/adbrix/db/RealRewardDAO;

    invoke-direct {v0}, Lcom/igaworks/adbrix/db/RealRewardDAO;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/db/RealRewardDAO;->singleton:Lcom/igaworks/adbrix/db/RealRewardDAO;

    .line 34
    :cond_0
    sget-object v0, Lcom/igaworks/adbrix/db/RealRewardDAO;->singleton:Lcom/igaworks/adbrix/db/RealRewardDAO;

    return-object v0
.end method

.method private getSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "postfix"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "real_reward_sp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearRetryCompleteCache(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rrk"    # I

    .prologue
    .line 171
    const-string v1, "_rc"

    invoke-direct {p0, p1, v1}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    return-void
.end method

.method public clearRetryRedeemCache(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rrk"    # I

    .prologue
    .line 193
    const-string v1, "_rr"

    invoke-direct {p0, p1, v1}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    return-void
.end method

.method public clearSessions(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rrk"    # I

    .prologue
    .line 107
    const-string v4, "IGAW_QA"

    const-string v5, "clearSessions"

    const/4 v6, 0x3

    invoke-static {p1, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    const-string v4, "_ss"

    invoke-direct {p0, p1, v4}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

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

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 111
    .local v2, "sn":J
    const-string v4, "_ss"

    invoke-direct {p0, p1, v4}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    const-string v4, "_st"

    invoke-direct {p0, p1, v4}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 116
    .local v1, "edt2":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    return-void
.end method

.method public getActiveSessionNo(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    const-string v0, "_ss"

    invoke-direct {p0, p1, v0}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRetryCompleteCache(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    const-string v0, "_rc"

    invoke-direct {p0, p1, v0}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRetryRedeemCache(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    const-string v0, "_rr"

    invoke-direct {p0, p1, v0}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSessionNo(Landroid/content/Context;I)J
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rrk"    # I

    .prologue
    .line 63
    const-wide/16 v0, -0x1

    .line 82
    .local v0, "result":J
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get session : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_ss"

    invoke-direct {p0, p1, v4}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

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

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {p1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    const-string v2, "_ss"

    invoke-direct {p0, p1, v2}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "_ss"

    invoke-direct {p0, p1, v2}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 90
    :cond_0
    return-wide v0
.end method

.method public getSessionTime(Landroid/content/Context;J)J
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sn"    # J

    .prologue
    .line 102
    const-string v0, "_st"

    invoke-direct {p0, p1, v0}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCompleteToday(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rrk"    # I

    .prologue
    .line 215
    const-string v0, "_dc"

    invoke-direct {p0, p1, v0}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCompetedRealReward(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rrk"    # I

    .prologue
    .line 147
    const-string v0, "_cp"

    invoke-direct {p0, p1, v0}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveCompletedRealRewardKey(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rrk"    # I

    .prologue
    .line 123
    const-string v1, "_cp"

    invoke-direct {p0, p1, v1}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    return-void
.end method

.method public saveDailyCompletion(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rrk"    # I

    .prologue
    .line 207
    const-string v1, "_dc"

    invoke-direct {p0, p1, v1}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    return-void
.end method

.method public saveRetryCompleteCache(Landroid/content/Context;IJ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rrk"    # I
    .param p3, "sn"    # J

    .prologue
    .line 157
    const-string v1, "_rc"

    invoke-direct {p0, p1, v1}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    return-void
.end method

.method public saveRetryRedeemCache(Landroid/content/Context;IJ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rrk"    # I
    .param p3, "sn"    # J

    .prologue
    .line 179
    const-string v1, "_rr"

    invoke-direct {p0, p1, v1}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    return-void
.end method

.method public saveSessionNo(Landroid/content/Context;IJ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rrk"    # I
    .param p3, "sessionNo"    # J

    .prologue
    .line 50
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save session : rrk/sn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {p1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    const-string v2, "_ss"

    invoke-direct {p0, p1, v2}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    const-string v2, "_st"

    invoke-direct {p0, p1, v2}, Lcom/igaworks/adbrix/db/RealRewardDAO;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 56
    .local v1, "edt2":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    return-void
.end method
