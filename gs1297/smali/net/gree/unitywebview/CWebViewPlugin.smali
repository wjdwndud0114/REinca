.class public Lnet/gree/unitywebview/CWebViewPlugin;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"


# static fields
.field private static layout:Landroid/widget/FrameLayout;


# instance fields
.field private canGoBack:Z

.field private canGoForward:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lnet/gree/unitywebview/CWebViewPlugin;

    .prologue
    .line 69
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$002(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lnet/gree/unitywebview/CWebViewPlugin;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 69
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$100(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;
    .locals 1
    .param p0, "x0"    # Lnet/gree/unitywebview/CWebViewPlugin;

    .prologue
    .line 69
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;

    return-object v0
.end method

.method static synthetic access$102(Lnet/gree/unitywebview/CWebViewPlugin;Lnet/gree/unitywebview/CWebViewPluginInterface;)Lnet/gree/unitywebview/CWebViewPluginInterface;
    .locals 0
    .param p0, "x0"    # Lnet/gree/unitywebview/CWebViewPlugin;
    .param p1, "x1"    # Lnet/gree/unitywebview/CWebViewPluginInterface;

    .prologue
    .line 69
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;

    return-object p1
.end method

.method static synthetic access$202(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/gree/unitywebview/CWebViewPlugin;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->canGoBack:Z

    return p1
.end method

.method static synthetic access$302(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/gree/unitywebview/CWebViewPlugin;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->canGoForward:Z

    return p1
.end method

.method static synthetic access$400()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Landroid/widget/FrameLayout;

    .prologue
    .line 69
    sput-object p0, Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method public Destroy()V
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 217
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$3;

    invoke-direct {v1, p0}, Lnet/gree/unitywebview/CWebViewPlugin$3;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method public EvaluateJS(Ljava/lang/String;)V
    .locals 2
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 250
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 251
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$6;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$6;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method

.method public GoBack()V
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 261
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$7;

    invoke-direct {v1, p0}, Lnet/gree/unitywebview/CWebViewPlugin$7;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public GoForward()V
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 271
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$8;

    invoke-direct {v1, p0}, Lnet/gree/unitywebview/CWebViewPlugin$8;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method

.method public Init(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "gameObject"    # Ljava/lang/String;
    .param p2, "transparent"    # Z

    .prologue
    .line 84
    move-object v3, p0

    .line 85
    .local v3, "self":Lnet/gree/unitywebview/CWebViewPlugin;
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 86
    .local v2, "a":Landroid/app/Activity;
    new-instance v0, Lnet/gree/unitywebview/CWebViewPlugin$1;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/gree/unitywebview/CWebViewPlugin$1;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/app/Activity;Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 188
    .local v6, "activityRootView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$2;

    invoke-direct {v1, p0, v6, v2, p1}, Lnet/gree/unitywebview/CWebViewPlugin$2;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 213
    return-void
.end method

.method public IsInitialized()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LoadHTML(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "baseURL"    # Ljava/lang/String;

    .prologue
    .line 240
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 241
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$5;

    invoke-direct {v1, p0, p2, p1}, Lnet/gree/unitywebview/CWebViewPlugin$5;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method public LoadURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 229
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 230
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$4;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$4;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method public SetMargins(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v3, -0x1

    .line 280
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 285
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 286
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 287
    .local v0, "a":Landroid/app/Activity;
    new-instance v2, Lnet/gree/unitywebview/CWebViewPlugin$9;

    invoke-direct {v2, p0, v1}, Lnet/gree/unitywebview/CWebViewPlugin$9;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method

.method public SetVisibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 296
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 297
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$10;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$10;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method
