.class public Lcom/tapjoy/TapjoyAppSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static b:Lcom/tapjoy/TapjoyAppSettings;


# instance fields
.field a:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/tapjoy/TapjoyAppSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tapjoy/TapjoyAppSettings;->c:Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->c:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    .line 1038
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    const-string v1, "tapjoyLogLevel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    .line 1039
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restoreLoggingLevel from sharedPref -- loggingLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    .line 1087
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    .line 26
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyAppSettings;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->b:Lcom/tapjoy/TapjoyAppSettings;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    const-string v1, "initializing app settings"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/tapjoy/TapjoyAppSettings;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyAppSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyAppSettings;->b:Lcom/tapjoy/TapjoyAppSettings;

    .line 35
    return-void
.end method


# virtual methods
.method public clearLoggingLevel()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    const-string v1, "tapjoyLogLevel"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/tapjoy/TapjoyLog;->isLoggingEnabled()Z

    move-result v1

    .line 81
    sget-object v2, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Tapjoy remote device debugging \'Disabled\'. The SDK Debug-setting is: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v0, "\'Enabled\'"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    .line 83
    return-void

    .line 81
    :cond_0
    const-string v0, "\'Disabled\'"

    goto :goto_0
.end method

.method public getConnectResult(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .param p1, "paramsHash"    # Ljava/lang/String;
    .param p2, "currentTimeMillis"    # J

    .prologue
    const/4 v0, 0x0

    .line 140
    iget-object v1, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    const-string v2, "connectResult"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v1}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    invoke-static {p1}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    const-string v3, "connectParamsHash"

    .line 147
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    const-string v3, "connectResultExpires"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 149
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 150
    goto :goto_0
.end method

.method public removeConnectResult()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    const-string v1, "connectParamsHash"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    const-string v1, "connectResult"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string v1, "connectParamsHash"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v1, "connectResultExpires"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    sget-object v1, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    const-string v2, "Removed connect result"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    :cond_0
    return-void
.end method

.method public saveConnectResultAndParams(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "paramsHash"    # Ljava/lang/String;
    .param p3, "expires"    # J

    .prologue
    .line 106
    invoke-static {p1}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    const-string v1, "connectResult"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v1, "connectParamsHash"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-ltz v1, :cond_2

    .line 115
    const-string v1, "connectResultExpires"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 120
    :goto_1
    sget-object v1, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    const-string v2, "Stored connect result"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 118
    :cond_2
    const-string v1, "connectResultExpires"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public saveLoggingLevel(Ljava/lang/String;)V
    .locals 4
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p1}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    const-string v1, "saveLoggingLevel -- server logging level is NULL or Empty string"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveLoggingLevel -- currentLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";newLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    const-string v1, "tapjoyLogLevel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    iput-object p1, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    .line 2087
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    .line 66
    :cond_2
    invoke-static {}, Lcom/tapjoy/TapjoyLog;->isLoggingEnabled()Z

    move-result v0

    .line 67
    sget-object v1, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tapjoy remote device debugging set to \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. The SDK Debug-setting is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_3

    const-string v0, "\'Enabled\'"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "\'Disabled\'"

    goto :goto_1
.end method
