.class public Lcom/unity3d/ads/device/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/device/Device$MemoryInfoType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getAdvertisingTrackingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/unity3d/ads/device/AdvertisingId;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 73
    .local v0, "androidID":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Problems fetching androidId"

    invoke-static {v2, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getApiLevel()I
    .locals 1

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getBatteryLevel()F
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 306
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 307
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 309
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 310
    const-string v3, "level"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 311
    .local v1, "level":I
    const-string v3, "scale"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 312
    .local v2, "scale":I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 316
    .end local v1    # "level":I
    .end local v2    # "scale":I
    :goto_0
    return v3

    :cond_0
    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public static getBatteryStatus()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 321
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 322
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 324
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 325
    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 329
    :cond_0
    return v1
.end method

.method public static getBoard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static getBootloader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getFreeMemory()J
    .locals 2

    .prologue
    .line 337
    sget-object v0, Lcom/unity3d/ads/device/Device$MemoryInfoType;->FREE_MEMORY:Lcom/unity3d/ads/device/Device$MemoryInfoType;

    invoke-static {v0}, Lcom/unity3d/ads/device/Device;->getMemoryInfo(Lcom/unity3d/ads/device/Device$MemoryInfoType;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreeSpace(Ljava/io/File;)J
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 290
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    .line 294
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getGLVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 421
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 422
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 424
    .local v0, "activityManager":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 427
    .local v1, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v1}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v2

    .line 433
    .end local v1    # "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public static getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstalledPackages(Z)Ljava/util/List;
    .locals 10
    .param p0, "hash"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v4, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 201
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 203
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 204
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v1, "packageEntry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p0, :cond_2

    .line 207
    const-string v6, "name"

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/unity3d/ads/misc/Utilities;->Sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :goto_1
    iget-wide v6, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 214
    const-string v6, "time"

    iget-wide v8, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "installer":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 219
    const-string v6, "installer"

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v0    # "installer":Ljava/lang/String;
    :cond_2
    const-string v6, "name"

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 226
    .end local v1    # "packageEntry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    return-object v4
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private static getMemoryInfo(Lcom/unity3d/ads/device/Device$MemoryInfoType;)J
    .locals 9
    .param p0, "infoType"    # Lcom/unity3d/ads/device/Device$MemoryInfoType;

    .prologue
    .line 341
    const/4 v3, -0x1

    .line 343
    .local v3, "lineNumber":I
    sget-object v6, Lcom/unity3d/ads/device/Device$1;->$SwitchMap$com$unity3d$ads$device$Device$MemoryInfoType:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/device/Device$MemoryInfoType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 354
    :goto_0
    const/4 v4, 0x0

    .line 355
    .local v4, "reader":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 358
    .local v2, "line":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "/proc/meminfo"

    const-string v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .local v5, "reader":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 361
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 345
    .end local v1    # "i":I
    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    :pswitch_0
    const/4 v3, 0x1

    .line 346
    goto :goto_0

    .line 348
    :pswitch_1
    const/4 v3, 0x2

    .line 349
    goto :goto_0

    .line 363
    .restart local v1    # "i":I
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :cond_0
    invoke-static {v2}, Lcom/unity3d/ads/device/Device;->getMemoryValueFromString(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    .line 368
    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move-object v4, v5

    .line 374
    .end local v1    # "i":I
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    :goto_3
    return-wide v6

    .line 369
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "i":I
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "Error closing RandomAccessFile"

    invoke-static {v8, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 364
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i":I
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 365
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while reading memory info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 368
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 374
    :goto_5
    const-wide/16 v6, -0x1

    goto :goto_3

    .line 369
    :catch_2
    move-exception v0

    .line 370
    const-string v6, "Error closing RandomAccessFile"

    invoke-static {v6, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 367
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 368
    :goto_6
    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 371
    :goto_7
    throw v6

    .line 369
    :catch_3
    move-exception v0

    .line 370
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "Error closing RandomAccessFile"

    invoke-static {v7, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7

    .line 367
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "i":I
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 364
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMemoryValueFromString(Ljava/lang/String;)J
    .locals 6
    .param p0, "memVal"    # Ljava/lang/String;

    .prologue
    .line 378
    if-eqz p0, :cond_1

    .line 379
    const-string v3, "(\\d+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 380
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 381
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string v2, ""

    .line 383
    .local v2, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 387
    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 390
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v2    # "value":Ljava/lang/String;
    :goto_1
    return-wide v4

    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_1
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 127
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 129
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 135
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 138
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNetworkType()I
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 118
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 121
    :goto_0
    return v1

    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static getNewAbiList()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v0, "abiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 495
    return-object v0
.end method

.method private static getOldAbiList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v0, "abiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getRingerMode()I
    .locals 3

    .prologue
    .line 256
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 257
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 259
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 265
    :goto_0
    return v1

    .line 262
    :cond_0
    const/4 v1, -0x2

    goto :goto_0

    .line 265
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getScreenBrightness()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 282
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 286
    :cond_0
    return v0
.end method

.method public static getScreenDensity()I
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getScreenHeight()I
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getScreenLayout()I
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getSensorList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 475
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 476
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 479
    :goto_0
    return-object v1

    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getStreamVolume(I)I
    .locals 3
    .param p0, "streamType"    # I

    .prologue
    .line 269
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 270
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 272
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 278
    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_0
    return v1

    .line 275
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    const/4 v1, -0x2

    goto :goto_0

    .line 278
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getSupportedAbis()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getApiLevel()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 466
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getOldAbiList()Ljava/util/ArrayList;

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getNewAbiList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 248
    if-eqz p1, :cond_0

    .line 249
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTotalMemory()J
    .locals 2

    .prologue
    .line 333
    sget-object v0, Lcom/unity3d/ads/device/Device$MemoryInfoType;->TOTAL_MEMORY:Lcom/unity3d/ads/device/Device$MemoryInfoType;

    invoke-static {v0}, Lcom/unity3d/ads/device/Device;->getMemoryInfo(Lcom/unity3d/ads/device/Device$MemoryInfoType;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalSpace(Ljava/io/File;)J
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 298
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    .line 302
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getUniqueEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isActiveNetworkConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 167
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 169
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 171
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 175
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method public static isAppInstalled(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkgname"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 180
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 183
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 185
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    const/4 v3, 0x1

    .line 194
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v3

    .line 188
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/unity3d/ads/device/AdvertisingId;->getLimitedAdTracking()Z

    move-result v0

    return v0
.end method

.method public static isRooted()Z
    .locals 2

    .prologue
    .line 395
    :try_start_0
    const-string v1, "su"

    invoke-static {v1}, Lcom/unity3d/ads/device/Device;->searchPathForBinary(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 397
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Rooted check failed"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 398
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUsingWifi()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 93
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 94
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 95
    .local v1, "mConnectivity":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v5

    .line 100
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 103
    .local v2, "mTelephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 104
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 109
    .local v3, "netType":I
    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method public static isWiredHeadsetOn()Z
    .locals 3

    .prologue
    .line 235
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 241
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    .line 244
    :goto_0
    return v1

    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static searchPathForBinary(Ljava/lang/String;)Z
    .locals 11
    .param p0, "binary"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 403
    const-string v6, "PATH"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "paths":[Ljava/lang/String;
    array-length v8, v4

    move v7, v5

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v4, v7

    .line 405
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .local v2, "pathDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 407
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 408
    .local v3, "pathDirFiles":[Ljava/io/File;
    if-eqz v3, :cond_2

    .line 409
    array-length v9, v3

    move v6, v5

    :goto_1
    if-ge v6, v9, :cond_2

    aget-object v0, v3, v6

    .line 410
    .local v0, "fileInPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 411
    const/4 v5, 0x1

    .line 417
    .end local v0    # "fileInPath":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "pathDir":Ljava/io/File;
    .end local v3    # "pathDirFiles":[Ljava/io/File;
    :cond_0
    return v5

    .line 409
    .restart local v0    # "fileInPath":Ljava/io/File;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "pathDir":Ljava/io/File;
    .restart local v3    # "pathDirFiles":[Ljava/io/File;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 404
    .end local v0    # "fileInPath":Ljava/io/File;
    .end local v3    # "pathDirFiles":[Ljava/io/File;
    :cond_2
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0
.end method
