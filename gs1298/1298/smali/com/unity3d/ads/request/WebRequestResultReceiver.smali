.class public Lcom/unity3d/ads/request/WebRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "WebRequestResultReceiver.java"


# static fields
.field public static final RESULT_FAILED:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x1


# instance fields
.field private _listener:Lcom/unity3d/ads/request/IWebRequestListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/unity3d/ads/request/IWebRequestListener;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/unity3d/ads/request/IWebRequestListener;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 23
    iput-object p2, p0, Lcom/unity3d/ads/request/WebRequestResultReceiver;->_listener:Lcom/unity3d/ads/request/IWebRequestListener;

    .line 24
    return-void
.end method

.method private getResponseHeaders(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 6
    .param p1, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 57
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    .restart local v1    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "tmpAr":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    .end local v0    # "k":Ljava/lang/String;
    .end local v2    # "tmpAr":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-static {}, Lcom/unity3d/ads/log/DeviceLog;->entered()V

    .line 30
    iget-object v3, p0, Lcom/unity3d/ads/request/WebRequestResultReceiver;->_listener:Lcom/unity3d/ads/request/IWebRequestListener;

    if-eqz v3, :cond_0

    .line 31
    packed-switch p1, :pswitch_data_0

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/unity3d/ads/request/WebRequestResultReceiver;->_listener:Lcom/unity3d/ads/request/IWebRequestListener;

    const-string v4, "url"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid resultCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/unity3d/ads/request/IWebRequestListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 52
    return-void

    .line 33
    :pswitch_0
    const-string v3, "url"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "url":Ljava/lang/String;
    const-string v3, "url"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 35
    const-string v3, "response"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "response":Ljava/lang/String;
    const-string v3, "response"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 37
    const-string v3, "responseCode"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 38
    .local v1, "responseCode":I
    const-string v3, "responseCode"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 39
    iget-object v3, p0, Lcom/unity3d/ads/request/WebRequestResultReceiver;->_listener:Lcom/unity3d/ads/request/IWebRequestListener;

    invoke-direct {p0, p2}, Lcom/unity3d/ads/request/WebRequestResultReceiver;->getResponseHeaders(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v2, v0, v1, v4}, Lcom/unity3d/ads/request/IWebRequestListener;->onComplete(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    goto :goto_0

    .line 42
    .end local v0    # "response":Ljava/lang/String;
    .end local v1    # "responseCode":I
    .end local v2    # "url":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/unity3d/ads/request/WebRequestResultReceiver;->_listener:Lcom/unity3d/ads/request/IWebRequestListener;

    const-string v4, "url"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "error"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/unity3d/ads/request/IWebRequestListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
