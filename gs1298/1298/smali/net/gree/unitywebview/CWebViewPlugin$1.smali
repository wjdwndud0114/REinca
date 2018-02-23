.class Lnet/gree/unitywebview/CWebViewPlugin$1;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin;->Init(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/CWebViewPlugin;

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$gameObject:Ljava/lang/String;

.field final synthetic val$self:Lnet/gree/unitywebview/CWebViewPlugin;

.field final synthetic val$transparent:Z


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/app/Activity;Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/gree/unitywebview/CWebViewPlugin;

    .prologue
    .line 86
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iput-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->val$self:Lnet/gree/unitywebview/CWebViewPlugin;

    iput-object p4, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->val$gameObject:Ljava/lang/String;

    iput-boolean p5, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->val$transparent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 87
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 185
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->val$a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v2, "webView":Landroid/webkit/WebView;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 92
    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 93
    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 101
    new-instance v3, Landroid/webkit/WebChromeClient;

    invoke-direct {v3}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 103
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    new-instance v4, Lnet/gree/unitywebview/CWebViewPluginInterface;

    iget-object v5, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->val$self:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v6, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->val$gameObject:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lnet/gree/unitywebview/CWebViewPluginInterface;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;)V

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;
    invoke-static {v3, v4}, Lnet/gree/unitywebview/CWebViewPlugin;->access$102(Lnet/gree/unitywebview/CWebViewPlugin;Lnet/gree/unitywebview/CWebViewPluginInterface;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    .line 104
    new-instance v3, Lnet/gree/unitywebview/CWebViewPlugin$1$1;

    invoke-direct {v3, p0, v2}, Lnet/gree/unitywebview/CWebViewPlugin$1$1;-><init>(Lnet/gree/unitywebview/CWebViewPlugin$1;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 150
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;
    invoke-static {v3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$100(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    move-result-object v3

    const-string v4, "Unity"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 153
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 154
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 155
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 157
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 159
    :cond_1
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 160
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 161
    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "databases"

    invoke-virtual {v3, v4, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "databasePath":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 164
    iget-boolean v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->val$transparent:Z

    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {v2, v9}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 168
    :cond_2
    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$400()Landroid/widget/FrameLayout;

    move-result-object v3

    if-nez v3, :cond_3

    .line 169
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->val$a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$402(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 170
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->val$a:Landroid/app/Activity;

    .line 171
    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$400()Landroid/widget/FrameLayout;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 170
    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$400()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 176
    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$400()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 178
    :cond_3
    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$400()Landroid/widget/FrameLayout;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v8, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3, v2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$002(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    goto/16 :goto_0
.end method
