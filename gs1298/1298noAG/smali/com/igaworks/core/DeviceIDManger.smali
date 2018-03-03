.class public Lcom/igaworks/core/DeviceIDManger;
.super Ljava/lang/Object;
.source "DeviceIDManger.java"


# static fields
.field private static singleton:Lcom/igaworks/core/DeviceIDManger;


# instance fields
.field public final MD5_TYPE:I

.field public final SHA1_TYPE:I

.field private adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/16 v0, 0x64

    iput v0, p0, Lcom/igaworks/core/DeviceIDManger;->MD5_TYPE:I

    .line 121
    const/16 v0, 0x65

    iput v0, p0, Lcom/igaworks/core/DeviceIDManger;->SHA1_TYPE:I

    .line 22
    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    .local v0, "android_id":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 83
    .end local v0    # "android_id":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, "unKnown"

    .line 85
    .restart local v0    # "android_id":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/igaworks/core/DeviceIDManger;->singleton:Lcom/igaworks/core/DeviceIDManger;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/igaworks/core/DeviceIDManger;

    invoke-direct {v0}, Lcom/igaworks/core/DeviceIDManger;-><init>()V

    sput-object v0, Lcom/igaworks/core/DeviceIDManger;->singleton:Lcom/igaworks/core/DeviceIDManger;

    .line 29
    :cond_0
    sget-object v0, Lcom/igaworks/core/DeviceIDManger;->singleton:Lcom/igaworks/core/DeviceIDManger;

    return-object v0
.end method

.method public static getMd5Value(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 93
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 94
    .local v3, "messageDigest":[B
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 95
    .local v4, "number":Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "md5":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-ge v5, v6, :cond_0

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 100
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "md5":Ljava/lang/String;
    .end local v3    # "messageDigest":[B
    .end local v4    # "number":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    const-string v2, ""

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v2
.end method

.method public static getSha1Value(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, ""

    .line 128
    .local v0, "SHA":Ljava/lang/String;
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 129
    .local v6, "sh":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 130
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 131
    .local v2, "byteData":[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_0

    .line 133
    aget-byte v7, v2, v4

    and-int/lit16 v7, v7, 0xff

    add-int/lit16 v7, v7, 0x100

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 142
    .end local v0    # "SHA":Ljava/lang/String;
    .end local v2    # "byteData":[B
    .end local v4    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .end local v6    # "sh":Ljava/security/MessageDigest;
    .local v1, "SHA":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 137
    .end local v1    # "SHA":Ljava/lang/String;
    .restart local v0    # "SHA":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    const-string v0, ""

    move-object v1, v0

    .line 140
    .end local v0    # "SHA":Ljava/lang/String;
    .restart local v1    # "SHA":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public getAESPuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 61
    invoke-static {}, Lcom/igaworks/dao/CoreIDDAO;->getInstance()Lcom/igaworks/dao/CoreIDDAO;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/igaworks/dao/CoreIDDAO;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "IMEI":Ljava/lang/String;
    const-string v2, ""

    .line 63
    .local v2, "puid":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    :try_start_0
    invoke-static {v0}, Lcom/igaworks/core/AESGetPuid;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 74
    :cond_0
    :goto_0
    return-object v2

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "IGAW_QA"

    const-string v4, "get AES puid ERROR : "

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    const-string v2, ""

    goto :goto_0
.end method

.method public getAdidInfo()Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/igaworks/core/DeviceIDManger;->adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    return-object v0
.end method

.method public getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 43
    :try_start_0
    invoke-static {p1, p2}, Lcom/igaworks/core/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 45
    .local v0, "cAdidInfo":Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    if-eqz v0, :cond_0

    .line 46
    iput-object v0, p0, Lcom/igaworks/core/DeviceIDManger;->adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "cAdidInfo":Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/igaworks/core/DeviceIDManger;->adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    return-object v2

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 51
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAndroidADID error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static {p1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public getAndroidId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 147
    const-string v0, ""

    .line 150
    .local v0, "android_id":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const/16 v3, 0x64

    if-ne p2, v3, :cond_1

    .line 152
    invoke-static {v0}, Lcom/igaworks/core/DeviceIDManger;->getMd5Value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v1, v0

    .line 163
    .end local v0    # "android_id":Ljava/lang/String;
    .local v1, "android_id":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 154
    .end local v1    # "android_id":Ljava/lang/String;
    .restart local v0    # "android_id":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x65

    if-ne p2, v3, :cond_0

    .line 155
    invoke-static {v0}, Lcom/igaworks/core/DeviceIDManger;->getSha1Value(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    const-string v0, ""

    .line 159
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    .line 160
    .end local v0    # "android_id":Ljava/lang/String;
    .restart local v1    # "android_id":Ljava/lang/String;
    goto :goto_1
.end method

.method public getDeviceID(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 168
    const-string v0, ""

    .line 171
    .local v0, "deviceID":Ljava/lang/String;
    :try_start_0
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 172
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    invoke-static {}, Lcom/igaworks/dao/CoreIDDAO;->getInstance()Lcom/igaworks/dao/CoreIDDAO;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/igaworks/dao/CoreIDDAO;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    :cond_0
    const-string v4, ""

    .line 189
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v4

    .line 176
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-static {}, Lcom/igaworks/dao/CoreIDDAO;->getInstance()Lcom/igaworks/dao/CoreIDDAO;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/igaworks/dao/CoreIDDAO;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "id":Ljava/lang/String;
    const/16 v4, 0x64

    if-ne p2, v4, :cond_3

    .line 178
    invoke-static {v2}, Lcom/igaworks/core/DeviceIDManger;->getMd5Value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    move-object v4, v0

    .line 189
    goto :goto_0

    .line 180
    :cond_3
    const/16 v4, 0x65

    if-ne p2, v4, :cond_2

    .line 181
    invoke-static {v2}, Lcom/igaworks/core/DeviceIDManger;->getSha1Value(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 184
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, ""

    .line 186
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v0

    .line 187
    goto :goto_0
.end method

.method public getODIN1(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 194
    const-string v0, ""

    .line 196
    .local v0, "ODIN1_value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/igaworks/core/DeviceIDManger;->getSha1Value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, ""

    .line 199
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v0

    .line 200
    goto :goto_0
.end method

.method public getOPENUDID(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 206
    const-string v0, ""

    .line 207
    .local v0, "encrypt_openudid":Ljava/lang/String;
    const/16 v1, 0x64

    if-ne p2, v1, :cond_1

    .line 208
    invoke-static {p1}, Lcom/igaworks/core/DeviceIDManger;->getMd5Value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    const/16 v1, 0x65

    if-ne p2, v1, :cond_0

    .line 211
    invoke-static {p1}, Lcom/igaworks/core/DeviceIDManger;->getSha1Value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOpenUDID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    const-string v1, ""

    .line 111
    .local v1, "openUDID":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/igaworks/core/OpenUDID_manager;->getOpenUDID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 116
    :goto_0
    return-object v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const-string v2, ""

    goto :goto_0
.end method

.method public setAdidInfo(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 0
    .param p1, "adidInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/igaworks/core/DeviceIDManger;->adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .line 38
    return-void
.end method
