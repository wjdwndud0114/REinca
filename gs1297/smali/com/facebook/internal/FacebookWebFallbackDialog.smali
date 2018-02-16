.class public Lcom/facebook/internal/FacebookWebFallbackDialog;
.super Lcom/facebook/internal/WebDialog;
.source "FacebookWebFallbackDialog.java"


# static fields
.field private static final OS_BACK_BUTTON_RESPONSE_TIMEOUT_MILLISECONDS:I = 0x5dc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private waitingForDialogToClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/facebook/internal/FacebookWebFallbackDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FacebookWebFallbackDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "expectedRedirectUrl"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p3}, Lcom/facebook/internal/FacebookWebFallbackDialog;->setExpectedRedirectUrl(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic access$001(Lcom/facebook/internal/FacebookWebFallbackDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/internal/FacebookWebFallbackDialog;

    .prologue
    .line 42
    invoke-super {p0}, Lcom/facebook/internal/WebDialog;->cancel()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 6

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookWebFallbackDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 110
    .local v2, "webView":Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookWebFallbackDialog;->isPageFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookWebFallbackDialog;->isListenerCalled()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v2}, Landroid/webkit/WebView;->isShown()Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    :cond_0
    invoke-super {p0}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-boolean v3, p0, Lcom/facebook/internal/FacebookWebFallbackDialog;->waitingForDialogToClose:Z

    if-nez v3, :cond_1

    .line 123
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/internal/FacebookWebFallbackDialog;->waitingForDialogToClose:Z

    .line 126
    const-string v0, "(function() {  var event = document.createEvent(\'Event\');  event.initEvent(\'fbPlatformDialogMustClose\',true,true);  document.dispatchEvent(event);})();"

    .line 132
    .local v0, "eventJS":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 136
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/facebook/internal/FacebookWebFallbackDialog$1;

    invoke-direct {v3, p0}, Lcom/facebook/internal/FacebookWebFallbackDialog$1;-><init>(Lcom/facebook/internal/FacebookWebFallbackDialog;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected parseResponseUri(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 57
    .local v8, "responseUri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 60
    .local v7, "queryParams":Landroid/os/Bundle;
    const-string v9, "bridge_args"

    .line 61
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "bridgeArgsJSONString":Ljava/lang/String;
    const-string v9, "bridge_args"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 64
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 67
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "bridgeArgsJSON":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "bridgeArgs":Landroid/os/Bundle;
    const-string v9, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {v7, v9, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "bridgeArgs":Landroid/os/Bundle;
    .end local v1    # "bridgeArgsJSON":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-string v9, "method_results"

    .line 77
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "methodResultsJSONString":Ljava/lang/String;
    const-string v9, "method_results"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 80
    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 82
    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v6, "{}"

    .line 85
    :cond_1
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v4, "methodArgsJSON":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v5

    .line 87
    .local v5, "methodResults":Landroid/os/Bundle;
    const-string v9, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .end local v4    # "methodArgsJSON":Lorg/json/JSONObject;
    .end local v5    # "methodResults":Landroid/os/Bundle;
    :cond_2
    :goto_1
    const-string v9, "version"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 96
    const-string v9, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    .line 97
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v10

    .line 96
    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    return-object v7

    .line 70
    .end local v6    # "methodResultsJSONString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 71
    .local v3, "je":Lorg/json/JSONException;
    sget-object v9, Lcom/facebook/internal/FacebookWebFallbackDialog;->TAG:Ljava/lang/String;

    const-string v10, "Unable to parse bridge_args JSON"

    invoke-static {v9, v10, v3}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    .end local v3    # "je":Lorg/json/JSONException;
    .restart local v6    # "methodResultsJSONString":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 89
    .restart local v3    # "je":Lorg/json/JSONException;
    sget-object v9, Lcom/facebook/internal/FacebookWebFallbackDialog;->TAG:Ljava/lang/String;

    const-string v10, "Unable to parse bridge_args JSON"

    invoke-static {v9, v10, v3}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
