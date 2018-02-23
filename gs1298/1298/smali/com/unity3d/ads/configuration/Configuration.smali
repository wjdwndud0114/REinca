.class public Lcom/unity3d/ads/configuration/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private _url:Ljava/lang/String;

.field private _webAppApiClassList:[Ljava/lang/Class;

.field private _webViewData:Ljava/lang/String;

.field private _webViewHash:Ljava/lang/String;

.field private _webViewUrl:Ljava/lang/String;

.field private _webViewVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "configUrl"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/unity3d/ads/configuration/Configuration;->_url:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method protected buildQueryString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?ts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sdkVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sdkVersionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "queryString":Ljava/lang/String;
    return-object v0
.end method

.method public getConfigUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_url:Ljava/lang/String;

    return-object v0
.end method

.method public getWebAppApiClassList()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webAppApiClassList:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWebViewData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewData:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected makeRequest()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/IllegalStateException;,
            Lcom/unity3d/ads/request/NetworkIOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v4, p0, Lcom/unity3d/ads/configuration/Configuration;->_url:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 81
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "Base URL is null"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/unity3d/ads/configuration/Configuration;->_url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/unity3d/ads/configuration/Configuration;->buildQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting configuration with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 87
    new-instance v2, Lcom/unity3d/ads/request/WebRequest;

    const-string v4, "GET"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/unity3d/ads/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 88
    .local v2, "request":Lcom/unity3d/ads/request/WebRequest;
    invoke-virtual {v2}, Lcom/unity3d/ads/request/WebRequest;->makeRequest()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "data":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "config":Lorg/json/JSONObject;
    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    .line 92
    const-string v4, "hash"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 93
    const-string v4, "hash"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    .line 95
    :cond_1
    const-string v4, "version"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    const-string v4, "version"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewVersion:Ljava/lang/String;

    .line 99
    :cond_2
    iget-object v4, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 100
    :cond_3
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "Invalid data. Web view URL is null or empty"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    :cond_4
    return-void
.end method

.method public setConfigUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/unity3d/ads/configuration/Configuration;->_url:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setWebAppApiClassList([Ljava/lang/Class;)V
    .locals 0
    .param p1, "apiClassList"    # [Ljava/lang/Class;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/unity3d/ads/configuration/Configuration;->_webAppApiClassList:[Ljava/lang/Class;

    .line 40
    return-void
.end method

.method public setWebViewData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewData:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setWebViewHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setWebViewUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    .line 52
    return-void
.end method
