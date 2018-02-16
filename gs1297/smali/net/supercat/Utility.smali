.class public Lnet/supercat/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "ba"    # [B

    .prologue
    .line 32
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 43
    :goto_0
    return-object v3

    .line 36
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 38
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "hexNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 43
    .end local v0    # "hexNumber":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 14
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 27
    :goto_0
    return-object v3

    .line 18
    :cond_0
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 19
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 23
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 27
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static randomString(I)Ljava/lang/String;
    .locals 8
    .param p0, "len"    # I

    .prologue
    .line 48
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    .line 49
    .local v0, "charSet":Ljava/lang/String;
    const-string v3, ""

    .line 50
    .local v3, "randomString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 51
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 52
    .local v2, "randomPoz":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "randomPoz":I
    :cond_0
    return-object v3
.end method
