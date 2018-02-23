.class public Lcom/inca/security/Tracker/Tracker;
.super Ljava/lang/Object;
.source "eb"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/Tracker/Tracker$Singleton;
    }
.end annotation


# instance fields
.field private synthetic IIIIiiIiII:Ljava/lang/reflect/Method;

.field private synthetic IIIiiiiIII:Ljava/lang/reflect/Method;

.field private synthetic IIiIIIIIii:Z

.field private synthetic IIiIiIIIii:Ljava/lang/Class;

.field private synthetic IiIiIIIiIi:Ljava/lang/reflect/Method;

.field private synthetic IiIiIiiIii:Ljava/lang/reflect/Method;

.field private synthetic IiiIiiiIiI:Ljava/lang/Class;

.field private final synthetic IiiiiIiiIi:Ljava/lang/String;


# direct methods
.method private synthetic constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    const-string v0, "splus_app_key"

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-boolean v1, p0, Lcom/inca/security/Tracker/Tracker;->IIiIIIIIii:Z

    .line 72
    iput-object v2, p0, Lcom/inca/security/Tracker/Tracker;->IIiIiIIIii:Ljava/lang/Class;

    .line 30
    iput-object v2, p0, Lcom/inca/security/Tracker/Tracker;->IiiIiiiIiI:Ljava/lang/Class;

    .line 165
    iput-object v2, p0, Lcom/inca/security/Tracker/Tracker;->IIIiiiiIII:Ljava/lang/reflect/Method;

    .line 124
    iput-object v2, p0, Lcom/inca/security/Tracker/Tracker;->IiIiIIIiIi:Ljava/lang/reflect/Method;

    .line 182
    iput-object v2, p0, Lcom/inca/security/Tracker/Tracker;->IiIiIiiIii:Ljava/lang/reflect/Method;

    .line 19
    iput-object v2, p0, Lcom/inca/security/Tracker/Tracker;->IIIIiiIiII:Ljava/lang/reflect/Method;

    .line 44
    iput-object v0, p0, Lcom/inca/security/Tracker/Tracker;->IiiiiIiiIi:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public synthetic constructor <init>(Lcom/inca/security/Tracker/Tracker$1;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/Tracker/Tracker$1;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/inca/security/Tracker/Tracker;-><init>()V

    return-void
.end method

.method private synthetic IiiiIIIIii(Landroid/content/Context;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 161
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, " ,.m*- \"m0& 61*7:m\u00171\" (&1m0m\"3*m\u0007\u0000\u0002$&-7" #com.inca.security.Tracker.s.api.DCAgent

    invoke-static {v1}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/Tracker/Tracker;->IIiIiIIIii:Ljava/lang/Class;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "WnY/]oW`\u001arQbAs]uM/`sUb_dF/G/Uq]/pBqwQo@" #com.inca.security.Tracker.s.api.DCEvent

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/Tracker/Tracker;->IiiIiiiIiI:Ljava/lang/Class;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 180
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "splus_app_key"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 195
    if-nez v0, :cond_0

    .line 146
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "splus_app_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 65
    :cond_0
    if-nez v0, :cond_1

    .line 152
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/inca/security/Tracker/Tracker;->IIiIiIIIii:Ljava/lang/Class;

    const-string v2, "*-*7\u0014*7+\u000233\n\'\u0002-\'\u0000+\"--&/\n\'" #initWithAppIdAndChannelId

    invoke-static {v2}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/Tracker/Tracker;->IIIiiiiIII:Ljava/lang/reflect/Method;

    .line 112
    iget-object v1, p0, Lcom/inca/security/Tracker/Tracker;->IIiIiIIIii:Ljava/lang/Class;

    const-string v2, "D`ArQ" #pause

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/Tracker/Tracker;->IiIiIIIiIi:Ljava/lang/reflect/Method;

    .line 176
    iget-object v1, p0, Lcom/inca/security/Tracker/Tracker;->IIiIiIIIii:Ljava/lang/Class;

    const-string v2, "1&06.&" #resume

    invoke-static {v2}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/Tracker/Tracker;->IiIiIiiIii:Ljava/lang/reflect/Method;

    .line 141
    iget-object v1, p0, Lcom/inca/security/Tracker/Tracker;->IiiIiiiIiI:Ljava/lang/Class;

    const-string v2, "[oqwQo@" #onEvent

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/Tracker/Tracker;->IIIIiiIiII:Ljava/lang/reflect/Method;

    .line 205
    iget-object v1, p0, Lcom/inca/security/Tracker/Tracker;->IIIiiiiIII:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/inca/security/Tracker/Tracker;->IIiIiIIIii:Ljava/lang/Class;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v4, "\u0010\u0013\u000f\u0016\u0010\u001c\u0004\u0013" #SPLUS_GP

    invoke-static {v4}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "`ZeFn]ekhP" #android_id

    invoke-static {v5}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 205
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inca/security/Tracker/Tracker;->IIiIIIIIii:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 175
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Tracker/Tracker;Landroid/content/Context;)V
    .locals 0
    .param p0, "arg0"    # Lcom/inca/security/Tracker/Tracker;
    .param p1, "arg1"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/inca/security/Tracker/Tracker;->IiiiIIIIii(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/inca/security/Tracker/Tracker;
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/inca/security/Tracker/Tracker$Singleton;->init(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/inca/security/Tracker/Tracker$Singleton;->IiiiIIIIii()Lcom/inca/security/Tracker/Tracker;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public OnEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/util/Map;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/inca/security/Tracker/Tracker;->IIiIIIIIii:Z

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/Tracker/Tracker;->IIIIiiIiII:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/inca/security/Tracker/Tracker;->IiiIiiiIiI:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isExistTrackerSdk()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/inca/security/Tracker/Tracker;->IIiIIIIIii:Z

    return v0
.end method

.method public pause(Landroid/content/Context;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/inca/security/Tracker/Tracker;->IIiIIIIIii:Z

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/Tracker/Tracker;->IiIiIIIiIi:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/inca/security/Tracker/Tracker;->IIiIiIIIii:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resume(Landroid/content/Context;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 5
    iget-boolean v0, p0, Lcom/inca/security/Tracker/Tracker;->IIiIIIIIii:Z

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/Tracker/Tracker;->IiIiIiiIii:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/inca/security/Tracker/Tracker;->IIiIiIIIii:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0
.end method
