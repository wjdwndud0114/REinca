.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateLoadWeb"
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
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    .line 269
    const/4 v0, 0x6

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_maxRetries:I

    .line 270
    const/4 v0, 0x5

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    .line 273
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 274
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 8

    .prologue
    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unity Ads init: loading webapp from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v5}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 287
    :try_start_0
    new-instance v1, Lcom/unity3d/ads/request/WebRequest;

    iget-object v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v4}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET"

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Lcom/unity3d/ads/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .local v1, "request":Lcom/unity3d/ads/request/WebRequest;
    :try_start_1
    invoke-virtual {v1}, Lcom/unity3d/ads/request/WebRequest;->makeRequest()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 308
    .local v2, "webViewData":Ljava/lang/String;
    iget-object v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v4}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "webViewHash":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/unity3d/ads/misc/Utilities;->Sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 310
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v5, "load web"

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Invalid webViewHash"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 317
    .end local v1    # "request":Lcom/unity3d/ads/request/WebRequest;
    .end local v2    # "webViewData":Ljava/lang/String;
    .end local v3    # "webViewHash":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string v4, "Malformed URL"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 291
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v5, "make webrequest"

    invoke-direct {v4, v5, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 298
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "request":Lcom/unity3d/ads/request/WebRequest;
    :catch_1
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    iget v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    iget v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_maxRetries:I

    if-ge v4, v5, :cond_0

    .line 300
    iget v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    .line 301
    iget v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    .line 302
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;

    iget v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    invoke-direct {v4, p0, v5}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;I)V

    goto :goto_0

    .line 305
    :cond_0
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;

    invoke-direct {v4, v0, p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;-><init>(Ljava/lang/Exception;Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;)V

    goto :goto_0

    .line 313
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "webViewData":Ljava/lang/String;
    .restart local v3    # "webViewHash":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 314
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getLocalWebViewFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/unity3d/ads/misc/Utilities;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 317
    :cond_2
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v4, v5, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;-><init>(Lcom/unity3d/ads/configuration/Configuration;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConfiguration()Lcom/unity3d/ads/configuration/Configuration;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    return-object v0
.end method
