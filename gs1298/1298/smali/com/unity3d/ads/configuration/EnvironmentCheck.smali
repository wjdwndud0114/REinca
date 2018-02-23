.class public Lcom/unity3d/ads/configuration/EnvironmentCheck;
.super Ljava/lang/Object;
.source "EnvironmentCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasJavascriptInterface(Ljava/lang/reflect/Method;)Z
    .locals 7
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 56
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v4, v5, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v2

    .line 60
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 62
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    if-eqz v1, :cond_2

    .line 63
    array-length v5, v1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 64
    .local v0, "a":Ljava/lang/annotation/Annotation;
    instance-of v6, v0, Landroid/webkit/JavascriptInterface;

    if-nez v6, :cond_0

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_2
    move v2, v3

    .line 70
    goto :goto_0
.end method

.method public static isEnvironmentOk()Z
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/unity3d/ads/configuration/EnvironmentCheck;->testProGuard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/configuration/EnvironmentCheck;->testCacheDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static testCacheDirectory()Z
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 45
    .local v0, "cacheDirectory":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 46
    const-string v1, "Unity Ads cache directory check OK"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x1

    .line 50
    :goto_0
    return v1

    .line 49
    :cond_0
    const-string v1, "Unity Ads cache directory check fail: no working cache directory available"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 50
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static testProGuard()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 19
    :try_start_0
    const-string v6, "com.unity3d.ads.webview.bridge.WebViewBridgeInterface"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 20
    .local v3, "webBridge":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "handleInvocation"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 21
    .local v2, "handleInvocation":Ljava/lang/reflect/Method;
    const-string v6, "handleCallback"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 23
    .local v1, "handleCallback":Ljava/lang/reflect/Method;
    invoke-static {v2}, Lcom/unity3d/ads/configuration/EnvironmentCheck;->hasJavascriptInterface(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v1}, Lcom/unity3d/ads/configuration/EnvironmentCheck;->hasJavascriptInterface(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 24
    const-string v6, "Unity Ads ProGuard check OK"

    invoke-static {v6}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 39
    .end local v1    # "handleCallback":Ljava/lang/reflect/Method;
    .end local v2    # "handleInvocation":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 27
    .restart local v1    # "handleCallback":Ljava/lang/reflect/Method;
    .restart local v2    # "handleInvocation":Ljava/lang/reflect/Method;
    :cond_0
    const-string v6, "Unity Ads ProGuard check fail: missing @JavascriptInterface annotations in Unity Ads web bridge"

    invoke-static {v6}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v4, v5

    .line 28
    goto :goto_0

    .line 30
    .end local v1    # "handleCallback":Ljava/lang/reflect/Method;
    .end local v2    # "handleInvocation":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "Unity Ads ProGuard check fail: Unity Ads web bridge class not found"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v4, v5

    .line 32
    goto :goto_0

    .line 33
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Unity Ads ProGuard check fail: Unity Ads web bridge methods not found"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v4, v5

    .line 35
    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown exception during Unity Ads ProGuard check: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
