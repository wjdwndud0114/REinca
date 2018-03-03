.class public Lcom/unity3d/ads/api/Resolve;
.super Ljava/lang/Object;
.source "Resolve.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/unity3d/ads/api/Resolve$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/Resolve$1;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/unity3d/ads/request/WebRequestThread;->resolve(Ljava/lang/String;Lcom/unity3d/ads/request/IResolveHostListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p2, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/unity3d/ads/request/ResolveHostError;->INVALID_HOST:Lcom/unity3d/ads/request/ResolveHostError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method
