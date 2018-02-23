.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateLoadCache"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 227
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 228
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 6

    .prologue
    .line 236
    const-string v4, "Unity Ads init: check if webapp can be loaded from local cache"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 241
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getLocalWebViewFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/unity3d/ads/misc/Utilities;->readFileBytes(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 247
    .local v1, "localWebViewData":[B
    invoke-static {v1}, Lcom/unity3d/ads/misc/Utilities;->Sha256([B)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "localWebViewHash":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v4}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 258
    .local v3, "webViewDataString":Ljava/lang/String;
    const-string v4, "Unity Ads init: webapp loaded from local cache"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 259
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v4, v5, v3}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;-><init>(Lcom/unity3d/ads/configuration/Configuration;Ljava/lang/String;)V

    .line 262
    .end local v1    # "localWebViewData":[B
    .end local v2    # "localWebViewHash":Ljava/lang/String;
    .end local v3    # "webViewDataString":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unity Ads init: webapp not found in local cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 244
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v4, v5}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    goto :goto_0

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "localWebViewData":[B
    .restart local v2    # "localWebViewHash":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 255
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v5, "load cache"

    invoke-direct {v4, v5, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 262
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v4, v5}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    goto :goto_0
.end method

.method public getConfiguration()Lcom/unity3d/ads/configuration/Configuration;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    return-object v0
.end method
