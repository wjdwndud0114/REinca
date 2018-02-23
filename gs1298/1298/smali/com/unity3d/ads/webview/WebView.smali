.class public Lcom/unity3d/ads/webview/WebView;
.super Landroid/webkit/WebView;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/webview/WebView$JavaScriptInvocation;
    }
.end annotation


# static fields
.field private static _evaluateJavascript:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/webview/WebView;->_evaluateJavascript:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lcom/unity3d/ads/webview/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 25
    .local v1, "settings":Landroid/webkit/WebSettings;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 26
    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 27
    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 30
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 32
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "evaluateJavascript"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/webkit/ValueCallback;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/unity3d/ads/webview/WebView;->_evaluateJavascript:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 40
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 41
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 42
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 43
    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 44
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 46
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_2

    .line 47
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 50
    :cond_2
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 52
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_3

    .line 53
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    .line 56
    :cond_3
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 57
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 58
    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 59
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 60
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 61
    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_4

    .line 64
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 67
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_5

    .line 68
    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 71
    :cond_5
    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 72
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 73
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 74
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 75
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 76
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 77
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 78
    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 80
    invoke-virtual {p0, v7}, Lcom/unity3d/ads/webview/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 81
    invoke-virtual {p0, v7}, Lcom/unity3d/ads/webview/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 82
    invoke-virtual {p0, v7}, Lcom/unity3d/ads/webview/WebView;->setInitialScale(I)V

    .line 83
    invoke-virtual {p0, v7}, Lcom/unity3d/ads/webview/WebView;->setBackgroundColor(I)V

    .line 84
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0, v2}, Lcom/unity3d/ads/misc/ViewUtilities;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {p0, v7}, Lcom/unity3d/ads/webview/WebView;->setBackgroundResource(I)V

    .line 87
    new-instance v2, Lcom/unity3d/ads/webview/bridge/WebViewBridgeInterface;

    invoke-direct {v2}, Lcom/unity3d/ads/webview/bridge/WebViewBridgeInterface;-><init>()V

    const-string v3, "webviewbridge"

    invoke-virtual {p0, v2, v3}, Lcom/unity3d/ads/webview/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "Method evaluateJavascript not found"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 35
    const/4 v2, 0x0

    sput-object v2, Lcom/unity3d/ads/webview/WebView;->_evaluateJavascript:Ljava/lang/reflect/Method;

    goto/16 :goto_0
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/unity3d/ads/webview/WebView;->_evaluateJavascript:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public invokeJavascript(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lcom/unity3d/ads/webview/WebView$JavaScriptInvocation;

    invoke-direct {v0, p0, p1, p0}, Lcom/unity3d/ads/webview/WebView$JavaScriptInvocation;-><init>(Lcom/unity3d/ads/webview/WebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 97
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 98
    return-void
.end method
