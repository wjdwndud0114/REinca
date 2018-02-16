.class final Lcom/unity3d/ads/webview/WebViewApp$1;
.super Ljava/lang/Object;
.source "WebViewApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/webview/WebViewApp;->create(Lcom/unity3d/ads/configuration/Configuration;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$configuration:Lcom/unity3d/ads/configuration/Configuration;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 250
    :try_start_0
    new-instance v8, Lcom/unity3d/ads/webview/WebViewApp;

    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1}, Lcom/unity3d/ads/webview/WebViewApp;-><init>(Lcom/unity3d/ads/configuration/Configuration;Lcom/unity3d/ads/webview/WebViewApp$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .local v8, "webViewApp":Lcom/unity3d/ads/webview/WebViewApp;
    const-string v7, "?platform=android"

    .line 261
    .local v7, "queryString":Ljava/lang/String;
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v0}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 269
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v0}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 276
    :cond_1
    :goto_1
    invoke-virtual {v8}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getLocalWebViewFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v2}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/ads/webview/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {v8}, Lcom/unity3d/ads/webview/WebViewApp;->setCurrentApp(Lcom/unity3d/ads/webview/WebViewApp;)V

    .line 279
    .end local v7    # "queryString":Ljava/lang/String;
    .end local v8    # "webViewApp":Lcom/unity3d/ads/webview/WebViewApp;
    :goto_2
    return-void

    .line 252
    :catch_0
    move-exception v6

    .line 253
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "Couldn\'t construct WebViewApp"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 254
    # getter for: Lcom/unity3d/ads/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->access$300()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_2

    .line 264
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "queryString":Ljava/lang/String;
    .restart local v8    # "webViewApp":Lcom/unity3d/ads/webview/WebViewApp;
    :catch_1
    move-exception v6

    .line 265
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v0, "Unsupported charset when encoding origin url"

    invoke-static {v0, v6}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 272
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v6

    .line 273
    .restart local v6    # "e":Ljava/io/UnsupportedEncodingException;
    const-string v0, "Unsupported charset when encoding webview version"

    invoke-static {v0, v6}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
