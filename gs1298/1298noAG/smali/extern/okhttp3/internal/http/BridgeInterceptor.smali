.class public final Lextern/okhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lextern/okhttp3/Interceptor;


# instance fields
.field private final cookieJar:Lextern/okhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lextern/okhttp3/CookieJar;)V
    .locals 0
    .param p1, "cookieJar"    # Lextern/okhttp3/CookieJar;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lextern/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lextern/okhttp3/CookieJar;

    .line 46
    return-void
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Cookie;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v1, "cookieHeader":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 120
    if-lez v2, :cond_0

    .line 121
    const-string v4, "; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/Cookie;

    .line 124
    .local v0, "cookie":Lextern/okhttp3/Cookie;
    invoke-virtual {v0}, Lextern/okhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lextern/okhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "cookie":Lextern/okhttp3/Cookie;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public intercept(Lextern/okhttp3/Interceptor$Chain;)Lextern/okhttp3/Response;
    .locals 17
    .param p1, "chain"    # Lextern/okhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-interface/range {p1 .. p1}, Lextern/okhttp3/Interceptor$Chain;->request()Lextern/okhttp3/Request;

    move-result-object v13

    .line 50
    .local v13, "userRequest":Lextern/okhttp3/Request;
    invoke-virtual {v13}, Lextern/okhttp3/Request;->newBuilder()Lextern/okhttp3/Request$Builder;

    move-result-object v8

    .line 52
    .local v8, "requestBuilder":Lextern/okhttp3/Request$Builder;
    invoke-virtual {v13}, Lextern/okhttp3/Request;->body()Lextern/okhttp3/RequestBody;

    move-result-object v2

    .line 53
    .local v2, "body":Lextern/okhttp3/RequestBody;
    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {v2}, Lextern/okhttp3/RequestBody;->contentType()Lextern/okhttp3/MediaType;

    move-result-object v3

    .line 55
    .local v3, "contentType":Lextern/okhttp3/MediaType;
    if-eqz v3, :cond_0

    .line 56
    const-string v14, "Content-Type"

    invoke-virtual {v3}, Lextern/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lextern/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 59
    :cond_0
    invoke-virtual {v2}, Lextern/okhttp3/RequestBody;->contentLength()J

    move-result-wide v4

    .line 60
    .local v4, "contentLength":J
    const-wide/16 v14, -0x1

    cmp-long v14, v4, v14

    if-eqz v14, :cond_8

    .line 61
    const-string v14, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lextern/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 62
    const-string v14, "Transfer-Encoding"

    invoke-virtual {v8, v14}, Lextern/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 69
    .end local v3    # "contentType":Lextern/okhttp3/MediaType;
    .end local v4    # "contentLength":J
    :cond_1
    :goto_0
    const-string v14, "Host"

    invoke-virtual {v13, v14}, Lextern/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2

    .line 70
    const-string v14, "Host"

    invoke-virtual {v13}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lextern/okhttp3/internal/Util;->hostHeader(Lextern/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lextern/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 73
    :cond_2
    const-string v14, "Connection"

    invoke-virtual {v13, v14}, Lextern/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    .line 74
    const-string v14, "Connection"

    const-string v15, "Keep-Alive"

    invoke-virtual {v8, v14, v15}, Lextern/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 79
    :cond_3
    const/4 v12, 0x0

    .line 80
    .local v12, "transparentGzip":Z
    const-string v14, "Accept-Encoding"

    invoke-virtual {v13, v14}, Lextern/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_4

    .line 81
    const/4 v12, 0x1

    .line 82
    const-string v14, "Accept-Encoding"

    const-string v15, "gzip"

    invoke-virtual {v8, v14, v15}, Lextern/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 85
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lextern/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lextern/okhttp3/CookieJar;

    invoke-virtual {v13}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v15

    invoke-interface {v14, v15}, Lextern/okhttp3/CookieJar;->loadForRequest(Lextern/okhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v6

    .line 86
    .local v6, "cookies":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Cookie;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 87
    const-string v14, "Cookie"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lextern/okhttp3/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lextern/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 90
    :cond_5
    const-string v14, "User-Agent"

    invoke-virtual {v13, v14}, Lextern/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_6

    .line 91
    const-string v14, "User-Agent"

    invoke-static {}, Lextern/okhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lextern/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 94
    :cond_6
    invoke-virtual {v8}, Lextern/okhttp3/Request$Builder;->build()Lextern/okhttp3/Request;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lextern/okhttp3/Interceptor$Chain;->proceed(Lextern/okhttp3/Request;)Lextern/okhttp3/Response;

    move-result-object v7

    .line 96
    .local v7, "networkResponse":Lextern/okhttp3/Response;
    move-object/from16 v0, p0

    iget-object v14, v0, Lextern/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lextern/okhttp3/CookieJar;

    invoke-virtual {v13}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v15

    invoke-virtual {v7}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lextern/okhttp3/internal/http/HttpHeaders;->receiveHeaders(Lextern/okhttp3/CookieJar;Lextern/okhttp3/HttpUrl;Lextern/okhttp3/Headers;)V

    .line 98
    invoke-virtual {v7}, Lextern/okhttp3/Response;->newBuilder()Lextern/okhttp3/Response$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Lextern/okhttp3/Response$Builder;->request(Lextern/okhttp3/Request;)Lextern/okhttp3/Response$Builder;

    move-result-object v10

    .line 101
    .local v10, "responseBuilder":Lextern/okhttp3/Response$Builder;
    if-eqz v12, :cond_7

    const-string v14, "gzip"

    const-string v15, "Content-Encoding"

    invoke-virtual {v7, v15}, Lextern/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {v7}, Lextern/okhttp3/internal/http/HttpHeaders;->hasBody(Lextern/okhttp3/Response;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 104
    new-instance v9, Lextern/okio/GzipSource;

    invoke-virtual {v7}, Lextern/okhttp3/Response;->body()Lextern/okhttp3/ResponseBody;

    move-result-object v14

    invoke-virtual {v14}, Lextern/okhttp3/ResponseBody;->source()Lextern/okio/BufferedSource;

    move-result-object v14

    invoke-direct {v9, v14}, Lextern/okio/GzipSource;-><init>(Lextern/okio/Source;)V

    .line 105
    .local v9, "responseBody":Lextern/okio/GzipSource;
    invoke-virtual {v7}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v14

    invoke-virtual {v14}, Lextern/okhttp3/Headers;->newBuilder()Lextern/okhttp3/Headers$Builder;

    move-result-object v14

    const-string v15, "Content-Encoding"

    invoke-virtual {v14, v15}, Lextern/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    move-result-object v14

    const-string v15, "Content-Length"

    invoke-virtual {v14, v15}, Lextern/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lextern/okhttp3/Headers$Builder;->build()Lextern/okhttp3/Headers;

    move-result-object v11

    .line 109
    .local v11, "strippedHeaders":Lextern/okhttp3/Headers;
    invoke-virtual {v10, v11}, Lextern/okhttp3/Response$Builder;->headers(Lextern/okhttp3/Headers;)Lextern/okhttp3/Response$Builder;

    .line 110
    new-instance v14, Lextern/okhttp3/internal/http/RealResponseBody;

    invoke-static {v9}, Lextern/okio/Okio;->buffer(Lextern/okio/Source;)Lextern/okio/BufferedSource;

    move-result-object v15

    invoke-direct {v14, v11, v15}, Lextern/okhttp3/internal/http/RealResponseBody;-><init>(Lextern/okhttp3/Headers;Lextern/okio/BufferedSource;)V

    invoke-virtual {v10, v14}, Lextern/okhttp3/Response$Builder;->body(Lextern/okhttp3/ResponseBody;)Lextern/okhttp3/Response$Builder;

    .line 113
    .end local v9    # "responseBody":Lextern/okio/GzipSource;
    .end local v11    # "strippedHeaders":Lextern/okhttp3/Headers;
    :cond_7
    invoke-virtual {v10}, Lextern/okhttp3/Response$Builder;->build()Lextern/okhttp3/Response;

    move-result-object v14

    return-object v14

    .line 64
    .end local v6    # "cookies":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Cookie;>;"
    .end local v7    # "networkResponse":Lextern/okhttp3/Response;
    .end local v10    # "responseBuilder":Lextern/okhttp3/Response$Builder;
    .end local v12    # "transparentGzip":Z
    .restart local v3    # "contentType":Lextern/okhttp3/MediaType;
    .restart local v4    # "contentLength":J
    :cond_8
    const-string v14, "Transfer-Encoding"

    const-string v15, "chunked"

    invoke-virtual {v8, v14, v15}, Lextern/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 65
    const-string v14, "Content-Length"

    invoke-virtual {v8, v14}, Lextern/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    goto/16 :goto_0
.end method
