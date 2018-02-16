.class final Lcom/tapjoy/TJAdUnit$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/mraid/listener/MraidViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJAdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJAdUnit;B)V
    .locals 0

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lcom/tapjoy/TJAdUnit$a;-><init>(Lcom/tapjoy/TJAdUnit;)V

    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1089
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v1}, Lcom/tapjoy/TJAdUnit;->d(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1090
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1092
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1069
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://ws.tapjoyads.com/"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1073
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getRedirectDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1074
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    .line 1071
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final onClose()Z
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->o(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitActivity;

    move-result-object v0

    .line 946
    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->handleClose()V

    .line 950
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 7
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 960
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v1}, Lcom/tapjoy/TJAdUnit;->j(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v1

    iget-boolean v1, v1, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    if-eqz v1, :cond_0

    .line 961
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Uncaught"

    aput-object v2, v1, v0

    const-string v2, "uncaught"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "Error"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "error"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "not defined"

    aput-object v3, v1, v2

    .line 963
    const-string v2, "TJAdUnit"

    const-string v3, "shouldClose..."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnit;->o(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitActivity;

    move-result-object v2

    .line 967
    if-eqz v2, :cond_0

    .line 968
    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v3, v1, v0

    .line 969
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 970
    invoke-virtual {v2}, Lcom/tapjoy/TJAdUnitActivity;->handleClose()V

    .line 977
    :cond_0
    return v5

    .line 968
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final onEventFired()Z
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x0

    return v0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1008
    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->d(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->d(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->j(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iput-boolean v3, v0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->o(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitActivity;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_1

    .line 1018
    invoke-virtual {v0, v3}, Lcom/tapjoy/TJAdUnitActivity;->setProgressSpinnerVisibility(Z)V

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->q(Lcom/tapjoy/TJAdUnit;)Z

    .line 1023
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->r(Lcom/tapjoy/TJAdUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1024
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->s(Lcom/tapjoy/TJAdUnit;)V

    .line 1027
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->j(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->flushMessageQueue()V

    .line 1028
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 991
    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->j(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->j(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 998
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->j(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iput-boolean v3, v0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z

    .line 999
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->j(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iput-boolean v3, v0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    .line 1002
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->p(Lcom/tapjoy/TJAdUnit;)V

    .line 1004
    :cond_0
    return-void
.end method

.method public final onReady()Z
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x0

    return v0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->o(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitActivity;

    move-result-object v0

    .line 984
    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->showErrorDialog()V

    .line 987
    :cond_0
    return-void
.end method

.method public final onResize()Z
    .locals 1

    .prologue
    .line 930
    const/4 v0, 0x0

    return v0
.end method

.method public final onResizeClose()Z
    .locals 1

    .prologue
    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1035
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit$a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1036
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v1}, Lcom/tapjoy/TJAdUnit;->o(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitActivity;

    move-result-object v1

    .line 1037
    if-eqz v1, :cond_0

    .line 1038
    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnitActivity;->showErrorDialog()V

    .line 1059
    .end local p1    # "view":Landroid/webkit/WebView;
    :cond_0
    :goto_0
    return v0

    .line 1043
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_1
    const-string v2, "TJAdUnit"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "interceptURL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnit;->d(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnit;->d(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "mraid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    .line 1045
    :goto_1
    if-eqz v2, :cond_3

    move v0, v1

    .line 1046
    goto :goto_0

    :cond_2
    move v2, v1

    .line 2081
    goto :goto_1

    .line 1047
    :cond_3
    invoke-static {p2}, Lcom/tapjoy/TJAdUnit$a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1049
    const-string v1, "TJAdUnit"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Open redirecting URL:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    check-cast p1, Lcom/tapjoy/mraid/view/MraidView;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->loadUrlStandard(Ljava/lang/String;)V

    goto :goto_0

    .line 1052
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_4
    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$a;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnit;->j(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    if-eqz v2, :cond_5

    move v0, v1

    .line 1055
    goto :goto_0

    .line 1058
    :cond_5
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
