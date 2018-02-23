.class Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;
.super Ljava/lang/Object;
.source "InitializeThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;->execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;

.field final synthetic val$currentApp:Lcom/unity3d/ads/webview/WebViewApp;

.field final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;Lcom/unity3d/ads/webview/WebViewApp;Landroid/os/ConditionVariable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;->this$0:Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;

    iput-object p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;->val$currentApp:Lcom/unity3d/ads/webview/WebViewApp;

    iput-object p3, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;->val$currentApp:Lcom/unity3d/ads/webview/WebViewApp;

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebView;->destroy()V

    .line 93
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;->val$currentApp:Lcom/unity3d/ads/webview/WebViewApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/webview/WebViewApp;->setWebView(Lcom/unity3d/ads/webview/WebView;)V

    .line 94
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 95
    return-void
.end method
