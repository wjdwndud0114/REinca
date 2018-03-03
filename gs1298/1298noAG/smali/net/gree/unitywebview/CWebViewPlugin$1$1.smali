.class Lnet/gree/unitywebview/CWebViewPlugin$1$1;
.super Landroid/webkit/WebViewClient;
.source "CWebViewPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin$1;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$1"    # Lnet/gree/unitywebview/CWebViewPlugin$1;

    .prologue
    .line 104
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iput-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->canGoBack:Z
    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$202(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 129
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->canGoForward:Z
    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$302(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 130
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->canGoBack:Z
    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$202(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 122
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->canGoForward:Z
    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$302(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 123
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$100(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    move-result-object v0

    const-string v1, "CallOnLoaded"

    invoke-virtual {v0, v1, p2}, Lnet/gree/unitywebview/CWebViewPluginInterface;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 115
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->canGoBack:Z
    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$202(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 116
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->canGoForward:Z
    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$302(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 117
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->val$webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->canGoBack:Z
    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$202(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 109
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->canGoForward:Z
    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$302(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 110
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$100(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    move-result-object v0

    const-string v1, "CallOnError"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/gree/unitywebview/CWebViewPluginInterface;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 134
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iget-object v3, v3, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v4

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->canGoBack:Z
    invoke-static {v3, v4}, Lnet/gree/unitywebview/CWebViewPlugin;->access$202(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 135
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iget-object v3, v3, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v4

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->canGoForward:Z
    invoke-static {v3, v4}, Lnet/gree/unitywebview/CWebViewPlugin;->access$302(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 136
    const-string v3, "http://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "file://"

    .line 137
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "javascript:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :cond_0
    const/4 v2, 0x0

    .line 147
    :goto_0
    return v2

    .line 140
    :cond_1
    const-string v3, "unity:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    const/4 v3, 0x6

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$1$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$1;

    iget-object v3, v3, Lnet/gree/unitywebview/CWebViewPlugin$1;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;
    invoke-static {v3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$100(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    move-result-object v3

    const-string v4, "CallFromJS"

    invoke-virtual {v3, v4, v1}, Lnet/gree/unitywebview/CWebViewPluginInterface;->call(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
