.class public Lcom/unity3d/ads/webview/bridge/Invocation;
.super Ljava/lang/Object;
.source "Invocation.java"


# static fields
.field private static _idCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static _invocationSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/ads/webview/bridge/Invocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _invocationId:I

.field private _invocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private _responses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/Invocation;->_idCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/unity3d/ads/webview/bridge/Invocation;->_idCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocationId:I

    .line 23
    sget-object v0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    .line 27
    :cond_0
    sget-object v0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    iget v1, p0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static declared-synchronized getInvocationById(I)Lcom/unity3d/ads/webview/bridge/Invocation;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 83
    const-class v1, Lcom/unity3d/ads/webview/bridge/Invocation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/webview/bridge/Invocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addInvocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ljava/lang/Object;
    .param p4, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    .line 33
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "invocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v1, p0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocationId:I

    return v0
.end method

.method public getResponses()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/unity3d/ads/webview/bridge/Invocation;->_responses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public nextInvocation()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 44
    iget-object v3, p0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 45
    iget-object v3, p0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 48
    .local v1, "invocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/unity3d/ads/webview/bridge/WebViewCallback;

    invoke-static {v2, v3, v4, v5}, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->handleInvocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v2, v6

    .line 57
    .end local v1    # "invocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    return v2

    .line 50
    .restart local v1    # "invocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error handling invocation"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendInvocationCallback()V
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/unity3d/ads/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/unity3d/ads/webview/bridge/Invocation;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/webview/WebViewApp;->invokeCallback(Lcom/unity3d/ads/webview/bridge/Invocation;)Z

    .line 72
    return-void
.end method

.method public varargs setInvocationResponse(Lcom/unity3d/ads/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "status"    # Lcom/unity3d/ads/webview/bridge/CallbackStatus;
    .param p2, "error"    # Ljava/lang/Enum;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/unity3d/ads/webview/bridge/Invocation;->_responses:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/unity3d/ads/webview/bridge/Invocation;->_responses:Ljava/util/ArrayList;

    .line 62
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcom/unity3d/ads/webview/bridge/Invocation;->_responses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method
