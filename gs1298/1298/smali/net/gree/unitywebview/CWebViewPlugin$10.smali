.class Lnet/gree/unitywebview/CWebViewPlugin$10;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin;->SetVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/CWebViewPlugin;

.field final synthetic val$visibility:Z


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/gree/unitywebview/CWebViewPlugin;

    .prologue
    .line 297
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$10;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iput-boolean p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$10;->val$visibility:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$10;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-boolean v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$10;->val$visibility:Z

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$10;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 303
    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$400()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 304
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$10;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$10;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method
