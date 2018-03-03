.class public Lcom/igaworks/util/CommonHelper;
.super Ljava/lang/Object;
.source "CommonHelper.java"


# static fields
.field public static REQUEST_CODE_ASK_MULTIPLE_PERMISSIONS:I

.field private static TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field private static TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x7c

    sput v0, Lcom/igaworks/util/CommonHelper;->REQUEST_CODE_ASK_MULTIPLE_PERMISSIONS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckPermissionForCommonSDK(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 182
    :try_start_0
    const-string v6, "android.permission.INTERNET"

    invoke-static {p0, v6}, Lcom/igaworks/util/CommonHelper;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 183
    .local v0, "canAccessInternet":Z
    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v6}, Lcom/igaworks/util/CommonHelper;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 184
    .local v1, "canAccessNetworkState":Z
    const/4 v2, 0x1

    .line 185
    .local v2, "canReadExternalStorage":Z
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_0

    .line 186
    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v6}, Lcom/igaworks/util/CommonHelper;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 188
    :cond_0
    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v6}, Lcom/igaworks/util/CommonHelper;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 189
    .local v3, "canWriteExternalStrorage":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 192
    .end local v0    # "canAccessInternet":Z
    .end local v1    # "canAccessNetworkState":Z
    .end local v2    # "canReadExternalStorage":Z
    .end local v3    # "canWriteExternalStrorage":Z
    :cond_1
    :goto_0
    return v5

    .line 190
    :catch_0
    move-exception v4

    .line 192
    .local v4, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static GetKSTCreateAtAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 144
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT+9"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 145
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "kstTime_CreateAt":Ljava/lang/String;
    return-object v0
.end method

.method public static GetKSTServerTimeAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 151
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string v4, "GMT+9"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 152
    invoke-static {p0}, Lcom/igaworks/dao/AppImpressionDAO;->getServerBaseTimeOffset(Landroid/content/Context;)J

    move-result-wide v2

    .line 153
    .local v2, "offset":J
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "kstTime_CreateAt":Ljava/lang/String;
    return-object v0
.end method

.method public static checkInternetConnection(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 55
    :try_start_0
    sget-boolean v4, Lcom/igaworks/impl/CommonFrameworkImpl;->REMOVE_NETWORKS_STATE_PERMISSION:Z

    if-eqz v4, :cond_0

    .line 66
    :goto_0
    return v3

    .line 56
    :cond_0
    const-string v4, "connectivity"

    .line 57
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 59
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 60
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    .local v3, "isConnected":Z
    :goto_1
    goto :goto_0

    .line 61
    .end local v3    # "isConnected":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 64
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionName"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 77
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 79
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 80
    const/4 v2, 0x1

    .line 87
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkReceiver(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 124
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.igaworks.IgawReceiver"

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 128
    const/4 v2, 0x1

    .line 138
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return v2

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkReceiver error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 94
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    .line 95
    const/4 v3, 0x0

    .line 97
    .local v3, "result":Z
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 99
    .local v2, "hasPermission":I
    if-nez v2, :cond_0

    .line 100
    const/4 v3, 0x1

    .line 115
    .end local v2    # "hasPermission":I
    .end local v3    # "result":Z
    :cond_0
    :goto_0
    return v3

    .line 102
    .restart local v3    # "result":Z
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e1":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSelfPermission Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 111
    .end local v0    # "e1":Ljava/lang/Exception;
    .end local v3    # "result":Z
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSelfPermission Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v3, v4

    .line 115
    goto :goto_0

    .line 108
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    invoke-static {p0, p1}, Lcom/igaworks/util/CommonHelper;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    goto :goto_0
.end method

.method public static findBinary(Ljava/lang/String;)Z
    .locals 7
    .param p0, "binaryName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "found":Z
    if-nez v0, :cond_0

    .line 302
    const/16 v4, 0x8

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "/sbin/"

    aput-object v4, v1, v3

    const/4 v4, 0x1

    const-string v5, "/system/bin/"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "/system/xbin/"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "/data/local/xbin/"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "/data/local/bin/"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "/system/sd/xbin/"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "/system/bin/failsafe/"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "/data/local/"

    aput-object v5, v1, v4

    .line 304
    .local v1, "places":[Ljava/lang/String;
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 305
    .local v2, "where":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    const/4 v0, 0x1

    .line 311
    .end local v1    # "places":[Ljava/lang/String;
    .end local v2    # "where":Ljava/lang/String;
    :cond_0
    return v0

    .line 304
    .restart local v1    # "places":[Ljava/lang/String;
    .restart local v2    # "where":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 199
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 200
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 201
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 202
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 203
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 204
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 208
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getCurrentKST_DBFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 161
    .local v0, "sdfKST":Ljava/text/SimpleDateFormat;
    const-string v1, "GMT+9"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 162
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getKSTDate_fromDB(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 169
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 170
    .local v2, "sdfKST":Ljava/text/SimpleDateFormat;
    const-string v3, "GMT+9"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 171
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 176
    .end local v2    # "sdfKST":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v1

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 176
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    .prologue
    .line 267
    sget-object v3, Lcom/igaworks/util/CommonHelper;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v3, :cond_0

    .line 268
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/igaworks/util/CommonHelper$2;

    invoke-direct {v4}, Lcom/igaworks/util/CommonHelper$2;-><init>()V

    aput-object v4, v2, v3

    .line 287
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 288
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 289
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    sput-object v3, Lcom/igaworks/util/CommonHelper;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :cond_0
    :goto_0
    sget-object v3, Lcom/igaworks/util/CommonHelper;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    return-object v3

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/security/GeneralSecurityException;
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommonHelper > SSL Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/igaworks/util/CommonHelper;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/igaworks/util/CommonHelper$1;

    invoke-direct {v0}, Lcom/igaworks/util/CommonHelper$1;-><init>()V

    sput-object v0, Lcom/igaworks/util/CommonHelper;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 263
    :cond_0
    sget-object v0, Lcom/igaworks/util/CommonHelper;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public static loadJSONFromS3(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "configFileUrl"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v5, 0x0

    .line 214
    .local v5, "json":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 215
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 216
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const-string v9, "https"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 217
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v9, v0

    invoke-static {}, Lcom/igaworks/util/CommonHelper;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 218
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v9, v0

    invoke-static {}, Lcom/igaworks/util/CommonHelper;->getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 220
    :cond_0
    const/16 v9, 0x3a98

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 221
    const/16 v9, 0x3a98

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 222
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 223
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 225
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 226
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 227
    .local v4, "input":Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    .local v7, "responseBuffer":Ljava/lang/StringBuffer;
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 229
    .local v1, "byteArray":[B
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 231
    new-instance v6, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v6, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 232
    .local v6, "res":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    const/4 v1, 0x0

    .line 234
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 235
    goto :goto_0

    .line 237
    .end local v6    # "res":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 247
    .end local v1    # "byteArray":[B
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v7    # "responseBuffer":Ljava/lang/StringBuffer;
    .end local v8    # "url":Ljava/net/URL;
    :goto_1
    return-object v5

    .line 239
    :catch_0
    move-exception v3

    .line 240
    .local v3, "e":Ljava/net/MalformedURLException;
    const/4 v5, 0x0

    .line 245
    goto :goto_1

    .line 241
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 242
    .local v3, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .line 245
    goto :goto_1

    .line 243
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 244
    .local v3, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1
.end method
