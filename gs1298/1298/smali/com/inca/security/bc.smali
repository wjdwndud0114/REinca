.class public Lcom/inca/security/bc;
.super Ljava/lang/Thread;
.source "uc"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# instance fields
.field private synthetic IIIIiiIiII:Ljava/lang/String;

.field private synthetic IIIiiiiIII:Ljava/lang/String;

.field private synthetic IiIiIIIiIi:Ljava/lang/String;

.field private final synthetic IiIiIiiIii:Ljava/lang/String;

.field private synthetic IiiIiiiIiI:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "http://mlog.appguard.co.kr/iam"

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 182
    iput-object v1, p0, Lcom/inca/security/bc;->IIIIiiIiII:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/inca/security/bc;->IiIiIIIiIi:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/inca/security/bc;->IiIiIiiIii:Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/inca/security/bc;->IiiIiiiIiI:Landroid/content/Context;

    .line 0
    iput-object p2, p0, Lcom/inca/security/bc;->IIIiiiiIII:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/inca/security/bc;->IIIIiiIiII:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Lcom/inca/security/bc;->IiIiIIIiIi:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/bc;->IiiIiiiIiI:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/inca/security/bc;->IiiIiiiIiI:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/inca/security/bc;->IiiIiiiIiI:Landroid/content/Context;

    .line 146
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 81
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "b S\u0017V1Q4o9@5M#F" #AppGuardLicense

    invoke-static {v1}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_1

    .line 65
    const-string v1, "hY1\u000f>VhY1\u000f>" #%s|%s|%s|%s

    invoke-static {v1}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/inca/security/bc;->IIIIiiIiII:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/inca/security/bc;->IiIiIIIiIi:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/inca/security/bc;->IIIiiiiIII:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 115
    invoke-static {v0, v1}, Lcom/inca/security/j;->IiiiIIIIii(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 205
    :try_start_1
    new-instance v1, Lcom/inca/security/ka;

    invoke-direct {v1}, Lcom/inca/security/ka;-><init>()V

    const-string v2, "http://mlog.appguard.co.kr/iam" #http://mlog.appguard.co.kr/iam

    .line 153
    invoke-virtual {v1, v2}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v1

    const-string v2, "\"F1O" #real

    invoke-static {v2}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {v1, v2, v0}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v0

    const/16 v1, 0x3a98

    .line 40
    invoke-virtual {v0, v1}, Lcom/inca/security/ka;->IiiiIIIIii(I)Lcom/inca/security/ka;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/inca/security/ka;->IiiiIIIIii()Lcom/inca/security/xa;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/inca/security/xa;->IiiiIIIIii()Ljava/util/Map;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    :cond_1
    :goto_1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0

    .line 25
    :catch_1
    move-exception v0

    goto :goto_1
.end method
