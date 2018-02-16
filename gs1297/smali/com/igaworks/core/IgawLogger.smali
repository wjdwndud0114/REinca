.class public Lcom/igaworks/core/IgawLogger;
.super Ljava/lang/Object;
.source "IgawLogger.java"


# static fields
.field public static final LOG_D:I = 0x3

.field public static final LOG_E:I = 0x0

.field public static final LOG_I:I = 0x2

.field public static final LOG_V:I = 0x4

.field public static final LOG_W:I = 0x1

.field public static appInfo:Landroid/content/pm/ApplicationInfo;

.field public static isInstalled:I

.field public static logEnable:Ljava/lang/String;

.field public static logMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/igaworks/core/IgawLogger;->logEnable:Ljava/lang/String;

    .line 20
    sput-object v0, Lcom/igaworks/core/IgawLogger;->logMode:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/igaworks/core/IgawLogger;->isInstalled:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logType"    # I

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 25
    return-void
.end method

.method public static Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logType"    # I
    .param p4, "onlyTestMode"    # Z

    .prologue
    const/4 v6, 0x2

    .line 31
    :try_start_0
    sget-object v3, Lcom/igaworks/core/IgawLogger;->logMode:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    sput-object v3, Lcom/igaworks/core/IgawLogger;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 34
    sget-object v3, Lcom/igaworks/core/IgawLogger;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 35
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "adbrix_logger_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/igaworks/core/IgawLogger;->logMode:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 44
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    :try_start_1
    sget-object v3, Lcom/igaworks/core/IgawLogger;->logEnable:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    sput-object v3, Lcom/igaworks/core/IgawLogger;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 48
    sget-object v3, Lcom/igaworks/core/IgawLogger;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 49
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "igaw_log_enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/igaworks/core/IgawLogger;->logEnable:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    sget-object v3, Lcom/igaworks/core/IgawLogger;->logEnable:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/igaworks/core/IgawLogger;->logEnable:Ljava/lang/String;

    const-string v4, "disable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0}, Lcom/igaworks/core/IgawLogger;->checkPkgInstall(Landroid/content/Context;)I

    move-result v3

    if-ge v3, v6, :cond_3

    .line 105
    :cond_2
    :goto_2
    return-void

    .line 63
    :cond_3
    sget-object v3, Lcom/igaworks/core/IgawLogger;->logMode:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/igaworks/core/IgawLogger;->logMode:Ljava/lang/String;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 69
    :cond_4
    invoke-static {p0}, Lcom/igaworks/core/IgawLogger;->checkPkgInstall(Landroid/content/Context;)I

    move-result v2

    .line 70
    .local v2, "isDebugAppInstalled":I
    if-ge v2, v6, :cond_5

    .line 71
    if-eqz p4, :cond_5

    .line 73
    sget-object v3, Lcom/igaworks/core/IgawLogger;->logMode:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/igaworks/core/IgawLogger;->logMode:Ljava/lang/String;

    const-string v4, "test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    :cond_5
    packed-switch p3, :pswitch_data_0

    goto :goto_2

    .line 85
    :pswitch_0
    :try_start_2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 91
    :pswitch_2
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 94
    :pswitch_3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 97
    :pswitch_4
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 54
    .end local v2    # "isDebugAppInstalled":I
    :catch_1
    move-exception v3

    goto :goto_1

    .line 53
    :catch_2
    move-exception v3

    goto :goto_1

    .line 39
    :catch_3
    move-exception v3

    goto :goto_0

    .line 38
    :catch_4
    move-exception v3

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static checkPkgInstall(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    :try_start_0
    sget v2, Lcom/igaworks/core/IgawLogger;->isInstalled:I

    if-lez v2, :cond_0

    .line 109
    sget v2, Lcom/igaworks/core/IgawLogger;->isInstalled:I

    .line 117
    :goto_0
    return v2

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 111
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.igaworks.adpopcorn.debug"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 112
    const/4 v2, 0x2

    sput v2, Lcom/igaworks/core/IgawLogger;->isInstalled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    sget v2, Lcom/igaworks/core/IgawLogger;->isInstalled:I

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    sput v2, Lcom/igaworks/core/IgawLogger;->isInstalled:I

    goto :goto_1
.end method

.method private static getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    sput-object v3, Lcom/igaworks/core/IgawLogger;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 125
    sget-object v3, Lcom/igaworks/core/IgawLogger;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 126
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 134
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 128
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 132
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 134
    .local v2, "e2":Ljava/lang/Exception;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method
