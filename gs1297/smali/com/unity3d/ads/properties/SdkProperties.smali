.class public Lcom/unity3d/ads/properties/SdkProperties;
.super Ljava/lang/Object;
.source "SdkProperties.java"


# static fields
.field private static final CACHE_DIR_NAME:Ljava/lang/String; = "UnityAdsCache"

.field private static final LOCAL_CACHE_FILE_PREFIX:Ljava/lang/String; = "UnityAdsCache-"

.field private static final LOCAL_STORAGE_FILE_PREFIX:Ljava/lang/String; = "UnityAdsStorage-"

.field private static _cacheDirectory:Lcom/unity3d/ads/cache/CacheDirectory;

.field private static _configUrl:Ljava/lang/String;

.field private static _initializationTime:J

.field private static _initialized:Z

.field private static _reinitialized:Z

.field private static _showTimeout:I

.field private static _testMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    const-string v0, "release"

    invoke-static {v0}, Lcom/unity3d/ads/properties/SdkProperties;->getDefaultConfigUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/ads/cache/CacheDirectory;

    .line 21
    const/16 v0, 0x1388

    sput v0, Lcom/unity3d/ads/properties/SdkProperties;->_showTimeout:I

    .line 22
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/ads/properties/SdkProperties;->_initializationTime:J

    .line 24
    sput-boolean v2, Lcom/unity3d/ads/properties/SdkProperties;->_initialized:Z

    .line 25
    sput-boolean v2, Lcom/unity3d/ads/properties/SdkProperties;->_reinitialized:Z

    .line 26
    sput-boolean v2, Lcom/unity3d/ads/properties/SdkProperties;->_testMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v0, Lcom/unity3d/ads/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/ads/cache/CacheDirectory;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/unity3d/ads/cache/CacheDirectory;

    const-string v1, "UnityAdsCache"

    invoke-direct {v0, v1}, Lcom/unity3d/ads/cache/CacheDirectory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unity3d/ads/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/ads/cache/CacheDirectory;

    .line 104
    :cond_0
    sget-object v0, Lcom/unity3d/ads/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/ads/cache/CacheDirectory;

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/cache/CacheDirectory;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDirectoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "UnityAdsCache"

    return-object v0
.end method

.method public static getCacheFilePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "UnityAdsCache-"

    return-object v0
.end method

.method public static getConfigUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/unity3d/ads/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultConfigUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "flavor"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://config.unityads.unity3d.com/webview/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getWebViewBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInitializationTime()J
    .locals 2

    .prologue
    .line 120
    sget-wide v0, Lcom/unity3d/ads/properties/SdkProperties;->_initializationTime:J

    return-wide v0
.end method

.method public static getLocalStorageFilePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "UnityAdsStorage-"

    return-object v0
.end method

.method public static getLocalWebViewFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UnityAdsWebApp.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShowTimeout()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/unity3d/ads/properties/SdkProperties;->_showTimeout:I

    return v0
.end method

.method public static getVersionCode()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x834

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "2.1.0"

    return-object v0
.end method

.method private static getWebViewBranch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/unity3d/ads/properties/SdkProperties;->_initialized:Z

    return v0
.end method

.method public static isReinitialized()Z
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/unity3d/ads/properties/SdkProperties;->_reinitialized:Z

    return v0
.end method

.method public static isTestMode()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/unity3d/ads/properties/SdkProperties;->_testMode:Z

    return v0
.end method

.method public static setConfigUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    new-instance v1, Ljava/net/MalformedURLException;

    invoke-direct {v1}, Ljava/net/MalformedURLException;-><init>()V

    throw v1

    .line 66
    :cond_0
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    new-instance v1, Ljava/net/MalformedURLException;

    invoke-direct {v1}, Ljava/net/MalformedURLException;-><init>()V

    throw v1

    .line 70
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "u":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 73
    sput-object p0, Lcom/unity3d/ads/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static setInitializationTime(J)V
    .locals 0
    .param p0, "milliseconds"    # J

    .prologue
    .line 116
    sput-wide p0, Lcom/unity3d/ads/properties/SdkProperties;->_initializationTime:J

    .line 117
    return-void
.end method

.method public static setInitialized(Z)V
    .locals 0
    .param p0, "initialized"    # Z

    .prologue
    .line 33
    sput-boolean p0, Lcom/unity3d/ads/properties/SdkProperties;->_initialized:Z

    .line 34
    return-void
.end method

.method public static setReinitialized(Z)V
    .locals 0
    .param p0, "status"    # Z

    .prologue
    .line 124
    sput-boolean p0, Lcom/unity3d/ads/properties/SdkProperties;->_reinitialized:Z

    .line 125
    return-void
.end method

.method public static setShowTimeout(I)V
    .locals 0
    .param p0, "timeout"    # I

    .prologue
    .line 108
    sput p0, Lcom/unity3d/ads/properties/SdkProperties;->_showTimeout:I

    .line 109
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0
    .param p0, "testMode"    # Z

    .prologue
    .line 41
    sput-boolean p0, Lcom/unity3d/ads/properties/SdkProperties;->_testMode:Z

    .line 42
    return-void
.end method
