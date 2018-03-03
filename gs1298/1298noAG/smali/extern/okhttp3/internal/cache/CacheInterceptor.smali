.class public final Lextern/okhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lextern/okhttp3/Interceptor;


# static fields
.field private static final EMPTY_BODY:Lextern/okhttp3/ResponseBody;


# instance fields
.field final cache:Lextern/okhttp3/internal/cache/InternalCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lextern/okhttp3/internal/cache/CacheInterceptor$1;

    invoke-direct {v0}, Lextern/okhttp3/internal/cache/CacheInterceptor$1;-><init>()V

    sput-object v0, Lextern/okhttp3/internal/cache/CacheInterceptor;->EMPTY_BODY:Lextern/okhttp3/ResponseBody;

    return-void
.end method

.method public constructor <init>(Lextern/okhttp3/internal/cache/InternalCache;)V
    .locals 0
    .param p1, "cache"    # Lextern/okhttp3/internal/cache/InternalCache;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lextern/okhttp3/internal/cache/CacheInterceptor;->cache:Lextern/okhttp3/internal/cache/InternalCache;

    .line 67
    return-void
.end method

.method private cacheWritingResponse(Lextern/okhttp3/internal/cache/CacheRequest;Lextern/okhttp3/Response;)Lextern/okhttp3/Response;
    .locals 8
    .param p1, "cacheRequest"    # Lextern/okhttp3/internal/cache/CacheRequest;
    .param p2, "response"    # Lextern/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    if-nez p1, :cond_1

    .line 234
    .end local p2    # "response":Lextern/okhttp3/Response;
    :cond_0
    :goto_0
    return-object p2

    .line 186
    .restart local p2    # "response":Lextern/okhttp3/Response;
    :cond_1
    invoke-interface {p1}, Lextern/okhttp3/internal/cache/CacheRequest;->body()Lextern/okio/Sink;

    move-result-object v1

    .line 187
    .local v1, "cacheBodyUnbuffered":Lextern/okio/Sink;
    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p2}, Lextern/okhttp3/Response;->body()Lextern/okhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lextern/okhttp3/ResponseBody;->source()Lextern/okio/BufferedSource;

    move-result-object v3

    .line 190
    .local v3, "source":Lextern/okio/BufferedSource;
    invoke-static {v1}, Lextern/okio/Okio;->buffer(Lextern/okio/Sink;)Lextern/okio/BufferedSink;

    move-result-object v0

    .line 192
    .local v0, "cacheBody":Lextern/okio/BufferedSink;
    new-instance v2, Lextern/okhttp3/internal/cache/CacheInterceptor$2;

    invoke-direct {v2, p0, v3, p1, v0}, Lextern/okhttp3/internal/cache/CacheInterceptor$2;-><init>(Lextern/okhttp3/internal/cache/CacheInterceptor;Lextern/okio/BufferedSource;Lextern/okhttp3/internal/cache/CacheRequest;Lextern/okio/BufferedSink;)V

    .line 234
    .local v2, "cacheWritingSource":Lextern/okio/Source;
    invoke-virtual {p2}, Lextern/okhttp3/Response;->newBuilder()Lextern/okhttp3/Response$Builder;

    move-result-object v4

    new-instance v5, Lextern/okhttp3/internal/http/RealResponseBody;

    invoke-virtual {p2}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v6

    invoke-static {v2}, Lextern/okio/Okio;->buffer(Lextern/okio/Source;)Lextern/okio/BufferedSource;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lextern/okhttp3/internal/http/RealResponseBody;-><init>(Lextern/okhttp3/Headers;Lextern/okio/BufferedSource;)V

    invoke-virtual {v4, v5}, Lextern/okhttp3/Response$Builder;->body(Lextern/okhttp3/ResponseBody;)Lextern/okhttp3/Response$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lextern/okhttp3/Response$Builder;->build()Lextern/okhttp3/Response;

    move-result-object p2

    goto :goto_0
.end method

.method private static combine(Lextern/okhttp3/Headers;Lextern/okhttp3/Headers;)Lextern/okhttp3/Headers;
    .locals 7
    .param p0, "cachedHeaders"    # Lextern/okhttp3/Headers;
    .param p1, "networkHeaders"    # Lextern/okhttp3/Headers;

    .prologue
    .line 263
    new-instance v2, Lextern/okhttp3/Headers$Builder;

    invoke-direct {v2}, Lextern/okhttp3/Headers$Builder;-><init>()V

    .line 265
    .local v2, "result":Lextern/okhttp3/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lextern/okhttp3/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 266
    invoke-virtual {p0, v1}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Warning"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 265
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-static {v0}, Lextern/okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v0}, Lextern/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 272
    :cond_2
    sget-object v5, Lextern/okhttp3/internal/Internal;->instance:Lextern/okhttp3/internal/Internal;

    invoke-virtual {v5, v2, v0, v4}, Lextern/okhttp3/internal/Internal;->addLenient(Lextern/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 276
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1}, Lextern/okhttp3/Headers;->size()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_6

    .line 277
    invoke-virtual {p1, v1}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .restart local v0    # "fieldName":Ljava/lang/String;
    const-string v5, "Content-Length"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 276
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 281
    :cond_5
    invoke-static {v0}, Lextern/okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 282
    sget-object v5, Lextern/okhttp3/internal/Internal;->instance:Lextern/okhttp3/internal/Internal;

    invoke-virtual {p1, v1}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v0, v6}, Lextern/okhttp3/internal/Internal;->addLenient(Lextern/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 286
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Lextern/okhttp3/Headers$Builder;->build()Lextern/okhttp3/Headers;

    move-result-object v5

    return-object v5
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeCache(Lextern/okhttp3/Response;Lextern/okhttp3/Request;Lextern/okhttp3/internal/cache/InternalCache;)Lextern/okhttp3/internal/cache/CacheRequest;
    .locals 2
    .param p1, "userResponse"    # Lextern/okhttp3/Response;
    .param p2, "networkRequest"    # Lextern/okhttp3/Request;
    .param p3, "responseCache"    # Lextern/okhttp3/internal/cache/InternalCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 159
    if-nez p3, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-object v0

    .line 162
    :cond_1
    invoke-static {p1, p2}, Lextern/okhttp3/internal/cache/CacheStrategy;->isCacheable(Lextern/okhttp3/Response;Lextern/okhttp3/Request;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    invoke-virtual {p2}, Lextern/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lextern/okhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    :try_start_0
    invoke-interface {p3, p2}, Lextern/okhttp3/internal/cache/InternalCache;->remove(Lextern/okhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    goto :goto_0

    .line 174
    :cond_2
    invoke-interface {p3, p1}, Lextern/okhttp3/internal/cache/InternalCache;->put(Lextern/okhttp3/Response;)Lextern/okhttp3/internal/cache/CacheRequest;

    move-result-object v0

    goto :goto_0
.end method

.method private static stripBody(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;
    .locals 2
    .param p0, "response"    # Lextern/okhttp3/Response;

    .prologue
    .line 152
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lextern/okhttp3/Response;->body()Lextern/okhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lextern/okhttp3/Response;->newBuilder()Lextern/okhttp3/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lextern/okhttp3/Response$Builder;->body(Lextern/okhttp3/ResponseBody;)Lextern/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/Response$Builder;->build()Lextern/okhttp3/Response;

    move-result-object p0

    .end local p0    # "response":Lextern/okhttp3/Response;
    :cond_0
    return-object p0
.end method

.method private static validate(Lextern/okhttp3/Response;Lextern/okhttp3/Response;)Z
    .locals 8
    .param p0, "cached"    # Lextern/okhttp3/Response;
    .param p1, "network"    # Lextern/okhttp3/Response;

    .prologue
    const/4 v2, 0x1

    .line 244
    invoke-virtual {p1}, Lextern/okhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x130

    if-ne v3, v4, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v2

    .line 249
    :cond_1
    invoke-virtual {p0}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v3

    const-string v4, "Last-Modified"

    invoke-virtual {v3, v4}, Lextern/okhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 250
    .local v0, "lastModified":Ljava/util/Date;
    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {p1}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v3

    const-string v4, "Last-Modified"

    invoke-virtual {v3, v4}, Lextern/okhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 252
    .local v1, "networkLastModified":Ljava/util/Date;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 258
    .end local v1    # "networkLastModified":Ljava/util/Date;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public intercept(Lextern/okhttp3/Interceptor$Chain;)Lextern/okhttp3/Response;
    .locals 12
    .param p1, "chain"    # Lextern/okhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v9, p0, Lextern/okhttp3/internal/cache/CacheInterceptor;->cache:Lextern/okhttp3/internal/cache/InternalCache;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lextern/okhttp3/internal/cache/CacheInterceptor;->cache:Lextern/okhttp3/internal/cache/InternalCache;

    invoke-interface {p1}, Lextern/okhttp3/Interceptor$Chain;->request()Lextern/okhttp3/Request;

    move-result-object v10

    invoke-interface {v9, v10}, Lextern/okhttp3/internal/cache/InternalCache;->get(Lextern/okhttp3/Request;)Lextern/okhttp3/Response;

    move-result-object v0

    .line 74
    .local v0, "cacheCandidate":Lextern/okhttp3/Response;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 76
    .local v6, "now":J
    new-instance v9, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;

    invoke-interface {p1}, Lextern/okhttp3/Interceptor$Chain;->request()Lextern/okhttp3/Request;

    move-result-object v10

    invoke-direct {v9, v6, v7, v10, v0}, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLextern/okhttp3/Request;Lextern/okhttp3/Response;)V

    invoke-virtual {v9}, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->get()Lextern/okhttp3/internal/cache/CacheStrategy;

    move-result-object v8

    .line 77
    .local v8, "strategy":Lextern/okhttp3/internal/cache/CacheStrategy;
    iget-object v3, v8, Lextern/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lextern/okhttp3/Request;

    .line 78
    .local v3, "networkRequest":Lextern/okhttp3/Request;
    iget-object v2, v8, Lextern/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lextern/okhttp3/Response;

    .line 80
    .local v2, "cacheResponse":Lextern/okhttp3/Response;
    iget-object v9, p0, Lextern/okhttp3/internal/cache/CacheInterceptor;->cache:Lextern/okhttp3/internal/cache/InternalCache;

    if-eqz v9, :cond_0

    .line 81
    iget-object v9, p0, Lextern/okhttp3/internal/cache/CacheInterceptor;->cache:Lextern/okhttp3/internal/cache/InternalCache;

    invoke-interface {v9, v8}, Lextern/okhttp3/internal/cache/InternalCache;->trackResponse(Lextern/okhttp3/internal/cache/CacheStrategy;)V

    .line 84
    :cond_0
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 85
    invoke-virtual {v0}, Lextern/okhttp3/Response;->body()Lextern/okhttp3/ResponseBody;

    move-result-object v9

    invoke-static {v9}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    :cond_1
    if-nez v3, :cond_4

    if-nez v2, :cond_4

    .line 90
    new-instance v9, Lextern/okhttp3/Response$Builder;

    invoke-direct {v9}, Lextern/okhttp3/Response$Builder;-><init>()V

    invoke-interface {p1}, Lextern/okhttp3/Interceptor$Chain;->request()Lextern/okhttp3/Request;

    move-result-object v10

    invoke-virtual {v9, v10}, Lextern/okhttp3/Response$Builder;->request(Lextern/okhttp3/Request;)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    sget-object v10, Lextern/okhttp3/Protocol;->HTTP_1_1:Lextern/okhttp3/Protocol;

    invoke-virtual {v9, v10}, Lextern/okhttp3/Response$Builder;->protocol(Lextern/okhttp3/Protocol;)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    const/16 v10, 0x1f8

    invoke-virtual {v9, v10}, Lextern/okhttp3/Response$Builder;->code(I)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    const-string v10, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v9, v10}, Lextern/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    sget-object v10, Lextern/okhttp3/internal/cache/CacheInterceptor;->EMPTY_BODY:Lextern/okhttp3/ResponseBody;

    invoke-virtual {v9, v10}, Lextern/okhttp3/Response$Builder;->body(Lextern/okhttp3/ResponseBody;)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    const-wide/16 v10, -0x1

    invoke-virtual {v9, v10, v11}, Lextern/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lextern/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lextern/okhttp3/Response$Builder;->build()Lextern/okhttp3/Response;

    move-result-object v5

    .line 148
    :cond_2
    :goto_1
    return-object v5

    .line 70
    .end local v0    # "cacheCandidate":Lextern/okhttp3/Response;
    .end local v2    # "cacheResponse":Lextern/okhttp3/Response;
    .end local v3    # "networkRequest":Lextern/okhttp3/Request;
    .end local v6    # "now":J
    .end local v8    # "strategy":Lextern/okhttp3/internal/cache/CacheStrategy;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    .restart local v0    # "cacheCandidate":Lextern/okhttp3/Response;
    .restart local v2    # "cacheResponse":Lextern/okhttp3/Response;
    .restart local v3    # "networkRequest":Lextern/okhttp3/Request;
    .restart local v6    # "now":J
    .restart local v8    # "strategy":Lextern/okhttp3/internal/cache/CacheStrategy;
    :cond_4
    if-nez v3, :cond_5

    .line 103
    invoke-virtual {v2}, Lextern/okhttp3/Response;->newBuilder()Lextern/okhttp3/Response$Builder;

    move-result-object v9

    invoke-static {v2}, Lextern/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;

    move-result-object v10

    invoke-virtual {v9, v10}, Lextern/okhttp3/Response$Builder;->cacheResponse(Lextern/okhttp3/Response;)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lextern/okhttp3/Response$Builder;->build()Lextern/okhttp3/Response;

    move-result-object v5

    goto :goto_1

    .line 108
    :cond_5
    const/4 v4, 0x0

    .line 110
    .local v4, "networkResponse":Lextern/okhttp3/Response;
    :try_start_0
    invoke-interface {p1, v3}, Lextern/okhttp3/Interceptor$Chain;->proceed(Lextern/okhttp3/Request;)Lextern/okhttp3/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 113
    if-nez v4, :cond_6

    if-eqz v0, :cond_6

    .line 114
    invoke-virtual {v0}, Lextern/okhttp3/Response;->body()Lextern/okhttp3/ResponseBody;

    move-result-object v9

    invoke-static {v9}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 119
    :cond_6
    if-eqz v2, :cond_9

    .line 120
    invoke-static {v2, v4}, Lextern/okhttp3/internal/cache/CacheInterceptor;->validate(Lextern/okhttp3/Response;Lextern/okhttp3/Response;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 121
    invoke-virtual {v2}, Lextern/okhttp3/Response;->newBuilder()Lextern/okhttp3/Response$Builder;

    move-result-object v9

    invoke-virtual {v2}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v10

    invoke-virtual {v4}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v11

    invoke-static {v10, v11}, Lextern/okhttp3/internal/cache/CacheInterceptor;->combine(Lextern/okhttp3/Headers;Lextern/okhttp3/Headers;)Lextern/okhttp3/Headers;

    move-result-object v10

    invoke-virtual {v9, v10}, Lextern/okhttp3/Response$Builder;->headers(Lextern/okhttp3/Headers;)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    invoke-static {v2}, Lextern/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;

    move-result-object v10

    invoke-virtual {v9, v10}, Lextern/okhttp3/Response$Builder;->cacheResponse(Lextern/okhttp3/Response;)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    invoke-static {v4}, Lextern/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;

    move-result-object v10

    invoke-virtual {v9, v10}, Lextern/okhttp3/Response$Builder;->networkResponse(Lextern/okhttp3/Response;)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lextern/okhttp3/Response$Builder;->build()Lextern/okhttp3/Response;

    move-result-object v5

    .line 126
    .local v5, "response":Lextern/okhttp3/Response;
    invoke-virtual {v4}, Lextern/okhttp3/Response;->body()Lextern/okhttp3/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lextern/okhttp3/ResponseBody;->close()V

    .line 130
    iget-object v9, p0, Lextern/okhttp3/internal/cache/CacheInterceptor;->cache:Lextern/okhttp3/internal/cache/InternalCache;

    invoke-interface {v9}, Lextern/okhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    .line 131
    iget-object v9, p0, Lextern/okhttp3/internal/cache/CacheInterceptor;->cache:Lextern/okhttp3/internal/cache/InternalCache;

    invoke-interface {v9, v2, v5}, Lextern/okhttp3/internal/cache/InternalCache;->update(Lextern/okhttp3/Response;Lextern/okhttp3/Response;)V

    goto :goto_1

    .line 113
    .end local v5    # "response":Lextern/okhttp3/Response;
    :catchall_0
    move-exception v9

    if-nez v4, :cond_7

    if-eqz v0, :cond_7

    .line 114
    invoke-virtual {v0}, Lextern/okhttp3/Response;->body()Lextern/okhttp3/ResponseBody;

    move-result-object v10

    invoke-static {v10}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_7
    throw v9

    .line 134
    :cond_8
    invoke-virtual {v2}, Lextern/okhttp3/Response;->body()Lextern/okhttp3/ResponseBody;

    move-result-object v9

    invoke-static {v9}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 138
    :cond_9
    invoke-virtual {v4}, Lextern/okhttp3/Response;->newBuilder()Lextern/okhttp3/Response$Builder;

    move-result-object v9

    invoke-static {v2}, Lextern/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;

    move-result-object v10

    invoke-virtual {v9, v10}, Lextern/okhttp3/Response$Builder;->cacheResponse(Lextern/okhttp3/Response;)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    invoke-static {v4}, Lextern/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;

    move-result-object v10

    invoke-virtual {v9, v10}, Lextern/okhttp3/Response$Builder;->networkResponse(Lextern/okhttp3/Response;)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lextern/okhttp3/Response$Builder;->build()Lextern/okhttp3/Response;

    move-result-object v5

    .line 143
    .restart local v5    # "response":Lextern/okhttp3/Response;
    invoke-static {v5}, Lextern/okhttp3/internal/http/HttpHeaders;->hasBody(Lextern/okhttp3/Response;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 144
    invoke-virtual {v4}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v9

    iget-object v10, p0, Lextern/okhttp3/internal/cache/CacheInterceptor;->cache:Lextern/okhttp3/internal/cache/InternalCache;

    invoke-direct {p0, v5, v9, v10}, Lextern/okhttp3/internal/cache/CacheInterceptor;->maybeCache(Lextern/okhttp3/Response;Lextern/okhttp3/Request;Lextern/okhttp3/internal/cache/InternalCache;)Lextern/okhttp3/internal/cache/CacheRequest;

    move-result-object v1

    .line 145
    .local v1, "cacheRequest":Lextern/okhttp3/internal/cache/CacheRequest;
    invoke-direct {p0, v1, v5}, Lextern/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lextern/okhttp3/internal/cache/CacheRequest;Lextern/okhttp3/Response;)Lextern/okhttp3/Response;

    move-result-object v5

    goto/16 :goto_1
.end method
