.class public Lcom/inca/security/yb;
.super Ljava/lang/Object;
.source "bb"


# static fields
.field private static synthetic IIIIiiIiII:Ljava/lang/String;

.field private static synthetic IiIiIiiIii:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, ""

    sput-object v0, Lcom/inca/security/yb;->IIIIiiIiII:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inca/security/yb;->IiIiIiiIii:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IiiiIIIIii()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/inca/security/yb;->IIIIiiIiII:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inca/security/yb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inca/security/yb;->IIIIiiIiII:Ljava/lang/String;

    .line 97
    :cond_0
    sget-object v0, Lcom/inca/security/yb;->IIIIiiIiII:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string v0, ""

    .line 146
    const-string v1, ""

    .line 123
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 81
    :try_start_0
    const-string v2, "HdZ\u0001*"

    invoke-static {v2}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x80

    .line 16
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 141
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "Z\\kknMiHWExIu_~"

    invoke-static {v3}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 40
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 157
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 25
    new-array v1, v3, [B

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/inca/security/va;->IiiiIIIIii(J[B)V

    .line 119
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 155
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/inca/security/va;->IiiiIIIIii([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static IiiiIIIIii(Ljava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-boolean v0, Lcom/inca/security/yb;->IiIiIiiIii:Z

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inca/security/yb;->IiIiIiiIii:Z

    .line 56
    sget-object v0, Lcom/inca/security/yb;->IIIIiiIiII:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-static {p0}, Lcom/inca/security/yb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inca/security/yb;->IIIIiiIiII:Ljava/lang/String;

    goto :goto_0
.end method
