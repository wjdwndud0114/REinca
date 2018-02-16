.class public Lcom/inca/security/c;
.super Ljava/lang/Object;
.source "e"


# instance fields
.field private synthetic IIIIiiIiII:Ljava/lang/String;

.field private synthetic IIIiiiiIII:Z

.field private synthetic IIiIIIIIii:Ljava/lang/String;

.field private synthetic IIiIIIIiIi:Ljava/util/ArrayList;

.field private synthetic IIiIiIIIii:Ljava/lang/String;

.field private synthetic IIiiIiIIii:Z

.field private synthetic IiIIIiIIIi:Landroid/net/wifi/WifiManager;

.field private synthetic IiIiIIIiIi:Ljava/lang/String;

.field private synthetic IiIiIiiIii:I

.field private synthetic IiiIiiiIiI:I

.field private synthetic IiiiIIIiIi:Ljava/lang/String;

.field private synthetic IiiiiIiiIi:Z

.field private final synthetic iiIIIIIiiI:I

.field private synthetic iiIIIiiiiI:Landroid/accounts/AccountManager;

.field private synthetic iiIIiIiIii:Landroid/content/Context;

.field private synthetic iiIiIIIiiI:Z

.field private synthetic iiiIiiiiII:I

.field private synthetic iiiiIIIiii:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    const/high16 v2, 0x200000

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v7, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    .line 117
    iput-object v7, p0, Lcom/inca/security/c;->iiiiIIIiii:Landroid/telephony/TelephonyManager;

    .line 22
    iput-object v7, p0, Lcom/inca/security/c;->iiIIIiiiiI:Landroid/accounts/AccountManager;

    .line 97
    iput-object v7, p0, Lcom/inca/security/c;->IiIIIiIIIi:Landroid/net/wifi/WifiManager;

    .line 105
    iput-boolean v1, p0, Lcom/inca/security/c;->IIiiIiIIii:Z

    .line 120
    iput-boolean v1, p0, Lcom/inca/security/c;->IIIiiiiIII:Z

    .line 180
    iput-boolean v1, p0, Lcom/inca/security/c;->IiiiiIiiIi:Z

    .line 195
    iput-boolean v1, p0, Lcom/inca/security/c;->iiIiIIIiiI:Z

    .line 123
    iput-object v6, p0, Lcom/inca/security/c;->IIiIIIIIii:Ljava/lang/String;

    .line 179
    iput-object v5, p0, Lcom/inca/security/c;->IIiIiIIIii:Ljava/lang/String;

    .line 166
    iput-object v5, p0, Lcom/inca/security/c;->IIIIiiIiII:Ljava/lang/String;

    .line 81
    iput v1, p0, Lcom/inca/security/c;->IiIiIiiIii:I

    .line 168
    iput v1, p0, Lcom/inca/security/c;->iiiIiiiiII:I

    .line 65
    iput v1, p0, Lcom/inca/security/c;->IiiIiiiIiI:I

    .line 16
    iput-object v4, p0, Lcom/inca/security/c;->IiiiIIIiIi:Ljava/lang/String;

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/inca/security/c;->IIiIIIIiIi:Ljava/util/ArrayList;

    .line 112
    iput-object v3, p0, Lcom/inca/security/c;->IiIiIIIiIi:Ljava/lang/String;

    .line 115
    iput v2, p0, Lcom/inca/security/c;->iiIIIIIiiI:I

    .line 205
    iput-object p1, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    .line 160
    iget-object v2, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "\n-\u000f1\u0004*\u000fm\u001b&\u0019.\u00020\u0018*\u0004-E\u0011.\u0002/\u001c;\u000b$\r.\u001c8\u0017*\u0017."

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    .line 25
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/inca/security/c;->IIiiIiIIii:Z

    .line 119
    iget-object v2, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "MuHiCrH5\\~^vEh_rCu\u0002ZoXiH\u007fD{RjRsHxZx^"

    invoke-static {v3}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    .line 155
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/inca/security/c;->IIIiiiiIII:Z

    .line 190
    iget-object v2, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "\n-\u000f1\u0004*\u000fm\u001b&\u0019.\u00020\u0018*\u0004-E\u0011.\u0002/\u001c;\u000b$\r.\u001c8\u0017*\u0017."

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    .line 139
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/inca/security/c;->IIiiIiIIii:Z

    .line 159
    iget-object v2, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "zB\u007f^tE\u007f\u0002kIiAr_hEtB5k^xDmXoTyUxH"

    invoke-static {v3}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    .line 126
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    :goto_3
    iput-boolean v0, p0, Lcom/inca/security/c;->IiiiiIiiIi:Z

    .line 85
    invoke-virtual {p0}, Lcom/inca/security/c;->iiiiiiiIii()V

    .line 100
    invoke-virtual {p0}, Lcom/inca/security/c;->IIiIIiIiIi()V

    .line 164
    iget-object v0, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    const-string v1, "4\u0002%\u0002"

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/inca/security/c;->IiIIIiIIIi:Landroid/net/wifi/WifiManager;

    .line 104
    iget-object v0, p0, Lcom/inca/security/c;->IiIIIiIIIi:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/inca/security/c;->IiIiiIiiII()V

    .line 86
    invoke-virtual {p0}, Lcom/inca/security/c;->IiiiIIIIii()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    const-string v1, "kDtB~"

    invoke-static {v1}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/inca/security/c;->iiiiIIIiii:Landroid/telephony/TelephonyManager;

    .line 5
    iget-object v0, p0, Lcom/inca/security/c;->iiiiIIIiii:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/inca/security/c;->iIiIIiIIIi()V

    .line 170
    invoke-virtual {p0}, Lcom/inca/security/c;->IiIIIIIIIi()V

    .line 163
    invoke-virtual {p0}, Lcom/inca/security/c;->iiIiIIIIIi()V

    .line 189
    invoke-virtual {p0}, Lcom/inca/security/c;->iiiiIIiiII()V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    const-string v1, "\n \u0008,\u001e-\u001f"

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/inca/security/c;->iiIIIiiiiI:Landroid/accounts/AccountManager;

    .line 68
    iget-object v0, p0, Lcom/inca/security/c;->iiIIIiiiiI:Landroid/accounts/AccountManager;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/inca/security/c;->iiiIIiIiIi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_2
    :goto_4
    return-void

    :cond_3
    move v2, v1

    .line 157
    goto/16 :goto_0

    :cond_4
    move v2, v1

    .line 119
    goto/16 :goto_1

    :cond_5
    move v2, v1

    .line 190
    goto :goto_2

    :cond_6
    move v0, v1

    .line 159
    goto :goto_3

    .line 125
    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public IIiIIiIiIi()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/inca/security/c;->IiIiIiiIii:I

    return v0
.end method

.method public IIiIIiIiIi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public IIiIIiIiIi()V
    .locals 2

    .prologue
    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MuHiCrHDE\u007f"

    invoke-static {v1}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/inca/security/c;->iiIIiIiIii:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "\"\u0005\'\u0019,\u0002\'4*\u000f"

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/c;->IiIiIIIiIi:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public IiIIIIIIIi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public IiIIIIIIIi()V
    .locals 3

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/inca/security/c;->IIiiIiIIii:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/inca/security/c;->iiiiIIIiii:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inca/security/c;->iiiIiiiiII:I

    goto :goto_0
.end method

.method public IiIIiiIiII()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/inca/security/c;->IIiIiIIIii:Ljava/lang/String;

    return-object v0
.end method

.method public IiIiiIiiII()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/inca/security/c;->IiiiIIIiIi:Ljava/lang/String;

    return-object v0
.end method

.method public IiIiiIiiII()V
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 37
    iget-boolean v1, p0, Lcom/inca/security/c;->IIIiiiiIII:Z

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/inca/security/c;->IiIIIiIIIi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 129
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/inca/security/c;->IiIIIiIIIi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_1

    .line 140
    const-string v0, "&\u0007^"

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 196
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :cond_1
    if-eqz v0, :cond_2

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/inca/security/c;->IIIIiiIiII:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public IiiiIIIIii()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/inca/security/c;->IiiIiiiIiI:I

    return v0
.end method

.method public IiiiIIIIii()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/inca/security/c;->IIIIiiIiII:Ljava/lang/String;

    return-object v0
.end method

.method public IiiiIIIIii()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/inca/security/c;->IIiIIIIiIi:Ljava/util/ArrayList;

    return-object v0
.end method

.method public IiiiIIIIii()V
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/inca/security/c;->IIIiiiiIII:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/inca/security/c;->IiIIIiIIIi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/inca/security/c;->IiIIIiIIIi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    iput v0, p0, Lcom/inca/security/c;->IiIiIiiIii:I

    goto :goto_0
.end method

.method public IiiiIIIIii(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/inca/security/c;->iiIiIIIiiI:Z

    .line 239
    return-void
.end method

.method public IiiiIIIIii()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/inca/security/c;->iiIiIIIiiI:Z

    return v0
.end method

.method public iIiIIiIIIi()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/inca/security/c;->iiiIiiiiII:I

    return v0
.end method

.method public iIiIIiIIIi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public iIiIIiIIIi()V
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/inca/security/c;->IIiiIiIIii:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/inca/security/c;->iiiiIIIiii:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/inca/security/c;->iiiiIIIiii:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/c;->IIiIiIIIii:Ljava/lang/String;

    .line 71
    :cond_0
    return-void
.end method

.method public iIiIIiIIIi()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 321
    .line 442
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 291
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 236
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_1

    .line 372
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    mul-long/2addr v2, v4

    .line 305
    :goto_0
    const-wide/32 v4, 0x200000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 452
    invoke-virtual {p0, v0}, Lcom/inca/security/c;->IiiiIIIIii(Z)V

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/inca/security/c;->IiiiIIIIii()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    return v0

    .line 345
    :cond_1
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v4

    goto :goto_0

    .line 491
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public iiIiIIIIIi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public iiIiIIIIIi()V
    .locals 3

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/inca/security/c;->IIiiIiIIii:Z

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/inca/security/c;->iiiiIIIiii:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inca/security/c;->IiiIiiiIiI:I

    goto :goto_0
.end method

.method public iiiIIiIiIi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/inca/security/c;->IIiIIIIIii:Ljava/lang/String;

    return-object v0
.end method

.method public iiiIIiIiIi()V
    .locals 6

    .prologue
    .line 318
    iget-object v0, p0, Lcom/inca/security/c;->IIiIIIIiIi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 479
    iget-boolean v0, p0, Lcom/inca/security/c;->IiiiiIiiIi:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/inca/security/c;->iiIIIiiiiI:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 213
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v1

    .line 365
    iget-object v5, p0, Lcom/inca/security/c;->IIiIIIIiIi:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, 0x1

    iget-object v1, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 213
    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method public iiiiIIiiII()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public iiiiIIiiII()V
    .locals 3

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 407
    iget-boolean v1, p0, Lcom/inca/security/c;->IIiiIiIIii:Z

    if-eqz v1, :cond_1

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/inca/security/c;->iiiiIIIiii:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 322
    if-eqz v1, :cond_0

    .line 299
    const-string v0, "Vh."

    invoke-static {v0}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 264
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 484
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 458
    :cond_0
    if-eqz v0, :cond_2

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/inca/security/c;->IiiiIIIiIi:Ljava/lang/String;

    .line 343
    :cond_1
    :goto_1
    return-void

    .line 458
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public iiiiiiiIii()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/inca/security/c;->IiIiIIIiIi:Ljava/lang/String;

    return-object v0
.end method

.method public iiiiiiiIii()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 197
    new-instance v0, Ljava/io/File;

    const-string v2, "\u0003hUhX~A4NnEwH5\\iCk"

    invoke-static {v2}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 172
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    if-eqz v0, :cond_1

    .line 11
    :try_start_3
    const-string v1, "\u0019,E3\u0019,\u000f6\u00087E \u001b6E\"\t*V"

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    const-string v4, ""

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 76
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/c;->IIiIIIIIii:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 191
    :cond_1
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 158
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 17
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 116
    :cond_4
    :goto_0
    const-string v0, "^t\u0002k^tHnOo\u0002x\\n\u0002zNr"

    invoke-static {v0}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inca/security/g;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/c;->IIiIIIIIii:Ljava/lang/String;

    .line 52
    return-void

    .line 83
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 191
    :goto_1
    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 158
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 17
    :cond_6
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 35
    :catch_1
    move-exception v0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 191
    :goto_2
    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 158
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 17
    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 89
    :cond_9
    :goto_3
    throw v0

    .line 35
    :catch_2
    move-exception v1

    goto :goto_3

    .line 136
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 83
    :catch_3
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    .line 35
    :catch_6
    move-exception v0

    goto :goto_0
.end method
