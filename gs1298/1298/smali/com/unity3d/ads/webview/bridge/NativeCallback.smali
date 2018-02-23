.class public Lcom/unity3d/ads/webview/bridge/NativeCallback;
.super Ljava/lang/Object;
.source "NativeCallback.java"


# static fields
.field private static _callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private _callback:Ljava/lang/reflect/Method;

.field private _id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/NativeCallback;->_callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/reflect/Method;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/unity3d/ads/webview/bridge/NativeCallback;->_callback:Ljava/lang/reflect/Method;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unity3d/ads/webview/bridge/NativeCallback;->_callback:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/bridge/NativeCallback;->_callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/webview/bridge/NativeCallback;->_id:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unity3d/ads/webview/bridge/NativeCallback;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 31
    :try_start_0
    invoke-static {p1}, Lcom/unity3d/ads/webview/bridge/CallbackStatus;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/webview/bridge/CallbackStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    .local v0, "cbs":Lcom/unity3d/ads/webview/bridge/CallbackStatus;
    if-nez p2, :cond_0

    .line 40
    const/4 v3, 0x1

    new-array p2, v3, [Ljava/lang/Object;

    .end local p2    # "values":[Ljava/lang/Object;
    aput-object v0, p2, v4

    .line 48
    .restart local p2    # "values":[Ljava/lang/Object;
    :goto_0
    iget-object v3, p0, Lcom/unity3d/ads/webview/bridge/NativeCallback;->_callback:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/unity3d/ads/webview/WebViewApp;->removeCallback(Lcom/unity3d/ads/webview/bridge/NativeCallback;)V

    .line 50
    return-void

    .line 33
    .end local v0    # "cbs":Lcom/unity3d/ads/webview/bridge/CallbackStatus;
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Illegal status"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/unity3d/ads/webview/WebViewApp;->removeCallback(Lcom/unity3d/ads/webview/bridge/NativeCallback;)V

    .line 36
    throw v1

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cbs":Lcom/unity3d/ads/webview/bridge/CallbackStatus;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .local v2, "tmpAr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method
