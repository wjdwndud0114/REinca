.class public Lcom/unity3d/ads/api/Listener;
.super Ljava/lang/Object;
.source "Listener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendClickEvent(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/unity3d/ads/api/Listener$4;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/Listener$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public static sendErrorEvent(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "error"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/unity3d/ads/api/Listener$6;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/api/Listener$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public static sendFinishEvent(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/unity3d/ads/api/Listener$3;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/api/Listener$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static sendPlacementStateChangedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "oldState"    # Ljava/lang/String;
    .param p2, "newState"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/unity3d/ads/api/Listener$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/ads/api/Listener$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public static sendReadyEvent(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 12
    new-instance v0, Lcom/unity3d/ads/api/Listener$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/Listener$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public static sendStartEvent(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/unity3d/ads/api/Listener$2;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/Listener$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 36
    return-void
.end method
