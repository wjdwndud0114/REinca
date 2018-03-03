.class Lcom/unity3d/ads/cache/CacheThreadHandler$1;
.super Ljava/lang/Object;
.source "CacheThreadHandler.java"

# interfaces
.implements Lcom/unity3d/ads/request/IWebRequestProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/cache/CacheThreadHandler;->downloadFile(Ljava/lang/String;Ljava/lang/String;JIIILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastProgressEventTime:J

.field final synthetic this$0:Lcom/unity3d/ads/cache/CacheThreadHandler;

.field final synthetic val$position:J

.field final synthetic val$progressInterval:I


# direct methods
.method constructor <init>(Lcom/unity3d/ads/cache/CacheThreadHandler;JI)V
    .locals 2
    .param p1, "this$0"    # Lcom/unity3d/ads/cache/CacheThreadHandler;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/unity3d/ads/cache/CacheThreadHandler$1;->this$0:Lcom/unity3d/ads/cache/CacheThreadHandler;

    iput-wide p2, p0, Lcom/unity3d/ads/cache/CacheThreadHandler$1;->val$position:J

    iput p4, p0, Lcom/unity3d/ads/cache/CacheThreadHandler$1;->val$progressInterval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/ads/cache/CacheThreadHandler$1;->lastProgressEventTime:J

    return-void
.end method


# virtual methods
.method public onRequestProgress(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .param p4, "total"    # J

    .prologue
    .line 120
    iget v0, p0, Lcom/unity3d/ads/cache/CacheThreadHandler$1;->val$progressInterval:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/unity3d/ads/cache/CacheThreadHandler$1;->lastProgressEventTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/unity3d/ads/cache/CacheThreadHandler$1;->val$progressInterval:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/ads/cache/CacheThreadHandler$1;->lastProgressEventTime:J

    .line 122
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/cache/CacheEvent;->DOWNLOAD_PROGRESS:Lcom/unity3d/ads/cache/CacheEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 124
    :cond_0
    return-void
.end method

.method public onRequestStart(Ljava/lang/String;JILjava/util/Map;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "total"    # J
    .param p4, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/cache/CacheEvent;->DOWNLOAD_STARTED:Lcom/unity3d/ads/cache/CacheEvent;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/unity3d/ads/cache/CacheThreadHandler$1;->val$position:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v6, p0, Lcom/unity3d/ads/cache/CacheThreadHandler$1;->val$position:J

    add-long/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Lcom/unity3d/ads/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 116
    return-void
.end method
