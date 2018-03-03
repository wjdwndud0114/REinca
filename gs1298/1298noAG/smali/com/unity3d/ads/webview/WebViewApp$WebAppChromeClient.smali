.class Lcom/unity3d/ads/webview/WebViewApp$WebAppChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/webview/WebViewApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebAppChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/webview/WebViewApp;


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/webview/WebViewApp;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/unity3d/ads/webview/WebViewApp$WebAppChromeClient;->this$0:Lcom/unity3d/ads/webview/WebViewApp;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/webview/WebViewApp;Lcom/unity3d/ads/webview/WebViewApp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/ads/webview/WebViewApp;
    .param p2, "x1"    # Lcom/unity3d/ads/webview/WebViewApp$1;

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/unity3d/ads/webview/WebViewApp$WebAppChromeClient;-><init>(Lcom/unity3d/ads/webview/WebViewApp;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .prologue
    .line 320
    move-object v1, p3

    .line 321
    .local v1, "sourceFile":Ljava/lang/String;
    const/4 v2, 0x0

    .line 324
    .local v2, "tmp":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "tmp":Ljava/io/File;
    .local v3, "tmp":Ljava/io/File;
    move-object v2, v3

    .line 330
    .end local v3    # "tmp":Ljava/io/File;
    .restart local v2    # "tmp":Ljava/io/File;
    :goto_0
    if-eqz v2, :cond_0

    .line 331
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 336
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JavaScript (sourceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", line="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 339
    :cond_1
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Could not handle sourceId"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
