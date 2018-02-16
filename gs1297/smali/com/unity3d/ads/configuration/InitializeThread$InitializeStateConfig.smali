.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateConfig"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;

.field private _maxRetries:I

.field private _retries:I

.field private _retryDelay:I


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    .line 195
    const/4 v0, 0x6

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_maxRetries:I

    .line 196
    const/4 v0, 0x5

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    .line 200
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 201
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 3

    .prologue
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unity Ads init: load configuration from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/ads/configuration/Configuration;->makeRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    new-instance v1, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;

    iget-object v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v1, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    :goto_0
    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    iget v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    iget v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_maxRetries:I

    if-ge v1, v2, :cond_0

    .line 211
    iget v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    .line 212
    iget v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    .line 213
    new-instance v1, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;

    iget v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;I)V

    goto :goto_0

    .line 216
    :cond_0
    new-instance v1, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;

    invoke-direct {v1, v0, p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;-><init>(Ljava/lang/Exception;Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;)V

    goto :goto_0
.end method
