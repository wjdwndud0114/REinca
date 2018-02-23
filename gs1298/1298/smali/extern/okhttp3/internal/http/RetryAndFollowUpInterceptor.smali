.class public final Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lextern/okhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lextern/okhttp3/OkHttpClient;

.field private forWebSocket:Z

.field private streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lextern/okhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "client"    # Lextern/okhttp3/OkHttpClient;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    .line 73
    return-void
.end method

.method private createAddress(Lextern/okhttp3/HttpUrl;)Lextern/okhttp3/Address;
    .locals 13
    .param p1, "url"    # Lextern/okhttp3/HttpUrl;

    .prologue
    .line 192
    const/4 v5, 0x0

    .line 193
    .local v5, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v6, 0x0

    .line 194
    .local v6, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v7, 0x0

    .line 195
    .local v7, "certificatePinner":Lextern/okhttp3/CertificatePinner;
    invoke-virtual {p1}, Lextern/okhttp3/HttpUrl;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lextern/okhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 197
    iget-object v0, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lextern/okhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 198
    iget-object v0, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lextern/okhttp3/OkHttpClient;->certificatePinner()Lextern/okhttp3/CertificatePinner;

    move-result-object v7

    .line 201
    :cond_0
    new-instance v0, Lextern/okhttp3/Address;

    invoke-virtual {p1}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lextern/okhttp3/HttpUrl;->port()I

    move-result v2

    iget-object v3, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lextern/okhttp3/OkHttpClient;->dns()Lextern/okhttp3/Dns;

    move-result-object v3

    iget-object v4, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v4}, Lextern/okhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    iget-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v8}, Lextern/okhttp3/OkHttpClient;->proxyAuthenticator()Lextern/okhttp3/Authenticator;

    move-result-object v8

    iget-object v9, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v9}, Lextern/okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v9

    iget-object v10, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v10}, Lextern/okhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v11}, Lextern/okhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v12}, Lextern/okhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lextern/okhttp3/Address;-><init>(Ljava/lang/String;ILextern/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lextern/okhttp3/CertificatePinner;Lextern/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0
.end method

.method private followUpRequest(Lextern/okhttp3/Response;)Lextern/okhttp3/Request;
    .locals 14
    .param p1, "userResponse"    # Lextern/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 268
    if-nez p1, :cond_0

    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11}, Ljava/lang/IllegalStateException;-><init>()V

    throw v11

    .line 269
    :cond_0
    iget-object v12, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v12}, Lextern/okhttp3/internal/connection/StreamAllocation;->connection()Lextern/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 270
    .local v0, "connection":Lextern/okhttp3/Connection;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lextern/okhttp3/Connection;->route()Lextern/okhttp3/Route;

    move-result-object v7

    .line 273
    .local v7, "route":Lextern/okhttp3/Route;
    :goto_0
    invoke-virtual {p1}, Lextern/okhttp3/Response;->code()I

    move-result v6

    .line 275
    .local v6, "responseCode":I
    invoke-virtual {p1}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v12

    invoke-virtual {v12}, Lextern/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "method":Ljava/lang/String;
    sparse-switch v6, :sswitch_data_0

    .line 352
    :cond_1
    :goto_1
    return-object v11

    .end local v3    # "method":Ljava/lang/String;
    .end local v6    # "responseCode":I
    .end local v7    # "route":Lextern/okhttp3/Route;
    :cond_2
    move-object v7, v11

    .line 270
    goto :goto_0

    .line 278
    .restart local v3    # "method":Ljava/lang/String;
    .restart local v6    # "responseCode":I
    .restart local v7    # "route":Lextern/okhttp3/Route;
    :sswitch_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lextern/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v9

    .line 281
    .local v9, "selectedProxy":Ljava/net/Proxy;
    :goto_2
    invoke-virtual {v9}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v11

    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v11, v12, :cond_4

    .line 282
    new-instance v11, Ljava/net/ProtocolException;

    const-string v12, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 278
    .end local v9    # "selectedProxy":Ljava/net/Proxy;
    :cond_3
    iget-object v11, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v11}, Lextern/okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v9

    goto :goto_2

    .line 284
    .restart local v9    # "selectedProxy":Ljava/net/Proxy;
    :cond_4
    iget-object v11, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v11}, Lextern/okhttp3/OkHttpClient;->proxyAuthenticator()Lextern/okhttp3/Authenticator;

    move-result-object v11

    invoke-interface {v11, v7, p1}, Lextern/okhttp3/Authenticator;->authenticate(Lextern/okhttp3/Route;Lextern/okhttp3/Response;)Lextern/okhttp3/Request;

    move-result-object v11

    goto :goto_1

    .line 287
    .end local v9    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_1
    iget-object v11, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v11}, Lextern/okhttp3/OkHttpClient;->authenticator()Lextern/okhttp3/Authenticator;

    move-result-object v11

    invoke-interface {v11, v7, p1}, Lextern/okhttp3/Authenticator;->authenticate(Lextern/okhttp3/Route;Lextern/okhttp3/Response;)Lextern/okhttp3/Request;

    move-result-object v11

    goto :goto_1

    .line 293
    :sswitch_2
    const-string v12, "GET"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "HEAD"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 302
    :cond_5
    :sswitch_3
    iget-object v12, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v12}, Lextern/okhttp3/OkHttpClient;->followRedirects()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 304
    const-string v12, "Location"

    invoke-virtual {p1, v12}, Lextern/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 306
    invoke-virtual {p1}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v12

    invoke-virtual {v12}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12, v1}, Lextern/okhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lextern/okhttp3/HttpUrl;

    move-result-object v10

    .line 309
    .local v10, "url":Lextern/okhttp3/HttpUrl;
    if-eqz v10, :cond_1

    .line 312
    invoke-virtual {v10}, Lextern/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v13

    invoke-virtual {v13}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v13

    invoke-virtual {v13}, Lextern/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 313
    .local v8, "sameScheme":Z
    if-nez v8, :cond_6

    iget-object v12, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v12}, Lextern/okhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 316
    :cond_6
    invoke-virtual {p1}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v12

    invoke-virtual {v12}, Lextern/okhttp3/Request;->newBuilder()Lextern/okhttp3/Request$Builder;

    move-result-object v5

    .line 317
    .local v5, "requestBuilder":Lextern/okhttp3/Request$Builder;
    invoke-static {v3}, Lextern/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 318
    invoke-static {v3}, Lextern/okhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v2

    .line 319
    .local v2, "maintainBody":Z
    invoke-static {v3}, Lextern/okhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 320
    const-string v12, "GET"

    invoke-virtual {v5, v12, v11}, Lextern/okhttp3/Request$Builder;->method(Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;

    .line 325
    :goto_3
    if-nez v2, :cond_7

    .line 326
    const-string v11, "Transfer-Encoding"

    invoke-virtual {v5, v11}, Lextern/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 327
    const-string v11, "Content-Length"

    invoke-virtual {v5, v11}, Lextern/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 328
    const-string v11, "Content-Type"

    invoke-virtual {v5, v11}, Lextern/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 335
    .end local v2    # "maintainBody":Z
    :cond_7
    invoke-direct {p0, p1, v10}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lextern/okhttp3/Response;Lextern/okhttp3/HttpUrl;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 336
    const-string v11, "Authorization"

    invoke-virtual {v5, v11}, Lextern/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 339
    :cond_8
    invoke-virtual {v5, v10}, Lextern/okhttp3/Request$Builder;->url(Lextern/okhttp3/HttpUrl;)Lextern/okhttp3/Request$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lextern/okhttp3/Request$Builder;->build()Lextern/okhttp3/Request;

    move-result-object v11

    goto/16 :goto_1

    .line 322
    .restart local v2    # "maintainBody":Z
    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v11

    invoke-virtual {v11}, Lextern/okhttp3/Request;->body()Lextern/okhttp3/RequestBody;

    move-result-object v4

    .line 323
    .local v4, "requestBody":Lextern/okhttp3/RequestBody;
    :goto_4
    invoke-virtual {v5, v3, v4}, Lextern/okhttp3/Request$Builder;->method(Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;

    goto :goto_3

    .end local v4    # "requestBody":Lextern/okhttp3/RequestBody;
    :cond_a
    move-object v4, v11

    .line 322
    goto :goto_4

    .line 345
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "maintainBody":Z
    .end local v5    # "requestBuilder":Lextern/okhttp3/Request$Builder;
    .end local v8    # "sameScheme":Z
    .end local v10    # "url":Lextern/okhttp3/HttpUrl;
    :sswitch_4
    invoke-virtual {p1}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v12

    invoke-virtual {v12}, Lextern/okhttp3/Request;->body()Lextern/okhttp3/RequestBody;

    move-result-object v12

    instance-of v12, v12, Lextern/okhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v12, :cond_1

    .line 349
    invoke-virtual {p1}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v11

    goto/16 :goto_1

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
        0x198 -> :sswitch_4
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "routeException"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v1

    .line 238
    :cond_1
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_3

    .line 239
    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 244
    :cond_3
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_4

    .line 247
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_0

    .line 251
    :cond_4
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_0

    move v1, v0

    .line 259
    goto :goto_0
.end method

.method private recover(Ljava/io/IOException;ZLextern/okhttp3/Request;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "routeException"    # Z
    .param p3, "userRequest"    # Lextern/okhttp3/Request;

    .prologue
    const/4 v0, 0x0

    .line 212
    iget-object v1, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1, p1}, Lextern/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 215
    iget-object v1, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lextern/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p3}, Lextern/okhttp3/Request;->body()Lextern/okhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Lextern/okhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v1, :cond_0

    .line 221
    :cond_2
    invoke-direct {p0, p1, p2}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lextern/okhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sameConnection(Lextern/okhttp3/Response;Lextern/okhttp3/HttpUrl;)Z
    .locals 3
    .param p1, "response"    # Lextern/okhttp3/Response;
    .param p2, "followUp"    # Lextern/okhttp3/HttpUrl;

    .prologue
    .line 361
    invoke-virtual {p1}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v0

    .line 362
    .local v0, "url":Lextern/okhttp3/HttpUrl;
    invoke-virtual {v0}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lextern/okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p2}, Lextern/okhttp3/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lextern/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lextern/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    .line 86
    iget-object v0, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    .line 87
    .local v0, "streamAllocation":Lextern/okhttp3/internal/connection/StreamAllocation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lextern/okhttp3/internal/connection/StreamAllocation;->cancel()V

    .line 88
    :cond_0
    return-void
.end method

.method public intercept(Lextern/okhttp3/Interceptor$Chain;)Lextern/okhttp3/Response;
    .locals 13
    .param p1, "chain"    # Lextern/okhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 111
    invoke-interface {p1}, Lextern/okhttp3/Interceptor$Chain;->request()Lextern/okhttp3/Request;

    move-result-object v6

    .line 113
    .local v6, "request":Lextern/okhttp3/Request;
    new-instance v8, Lextern/okhttp3/internal/connection/StreamAllocation;

    iget-object v9, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v9}, Lextern/okhttp3/OkHttpClient;->connectionPool()Lextern/okhttp3/ConnectionPool;

    move-result-object v9

    invoke-virtual {v6}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v10

    invoke-direct {p0, v10}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lextern/okhttp3/HttpUrl;)Lextern/okhttp3/Address;

    move-result-object v10

    iget-object v11, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v8, v9, v10, v11}, Lextern/okhttp3/internal/connection/StreamAllocation;-><init>(Lextern/okhttp3/ConnectionPool;Lextern/okhttp3/Address;Ljava/lang/Object;)V

    iput-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, "followUpCount":I
    const/4 v4, 0x0

    .line 119
    .local v4, "priorResponse":Lextern/okhttp3/Response;
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-eqz v8, :cond_1

    .line 120
    iget-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lextern/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 121
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Canceled"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 124
    :cond_1
    const/4 v7, 0x0

    .line 125
    .local v7, "response":Lextern/okhttp3/Response;
    const/4 v5, 0x1

    .line 127
    .local v5, "releaseConnection":Z
    :try_start_0
    move-object v0, p1

    check-cast v0, Lextern/okhttp3/internal/http/RealInterceptorChain;

    move-object v8, v0

    iget-object v9, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v6, v9, v10, v11}, Lextern/okhttp3/internal/http/RealInterceptorChain;->proceed(Lextern/okhttp3/Request;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/Connection;)Lextern/okhttp3/Response;
    :try_end_0
    .catch Lextern/okhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 128
    const/4 v5, 0x0

    .line 141
    if-eqz v5, :cond_2

    .line 142
    iget-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8, v12}, Lextern/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 143
    iget-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lextern/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 148
    :cond_2
    if-eqz v4, :cond_3

    .line 149
    invoke-virtual {v7}, Lextern/okhttp3/Response;->newBuilder()Lextern/okhttp3/Response$Builder;

    move-result-object v8

    invoke-virtual {v4}, Lextern/okhttp3/Response;->newBuilder()Lextern/okhttp3/Response$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lextern/okhttp3/Response$Builder;->body(Lextern/okhttp3/ResponseBody;)Lextern/okhttp3/Response$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lextern/okhttp3/Response$Builder;->build()Lextern/okhttp3/Response;

    move-result-object v9

    invoke-virtual {v8, v9}, Lextern/okhttp3/Response$Builder;->priorResponse(Lextern/okhttp3/Response;)Lextern/okhttp3/Response$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lextern/okhttp3/Response$Builder;->build()Lextern/okhttp3/Response;

    move-result-object v7

    .line 156
    :cond_3
    invoke-direct {p0, v7}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lextern/okhttp3/Response;)Lextern/okhttp3/Request;

    move-result-object v2

    .line 158
    .local v2, "followUp":Lextern/okhttp3/Request;
    if-nez v2, :cond_8

    .line 159
    iget-boolean v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    if-nez v8, :cond_4

    .line 160
    iget-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lextern/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 162
    :cond_4
    return-object v7

    .line 129
    .end local v2    # "followUp":Lextern/okhttp3/Request;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Lextern/okhttp3/internal/connection/RouteException;
    :try_start_1
    invoke-virtual {v1}, Lextern/okhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9, v6}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLextern/okhttp3/Request;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v1}, Lextern/okhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local v1    # "e":Lextern/okhttp3/internal/connection/RouteException;
    :catchall_0
    move-exception v8

    if-eqz v5, :cond_5

    .line 142
    iget-object v9, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v9, v12}, Lextern/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 143
    iget-object v9, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v9}, Lextern/okhttp3/internal/connection/StreamAllocation;->release()V

    :cond_5
    throw v8

    .line 132
    .restart local v1    # "e":Lextern/okhttp3/internal/connection/RouteException;
    :cond_6
    const/4 v5, 0x0

    .line 141
    if-eqz v5, :cond_0

    .line 142
    iget-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8, v12}, Lextern/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 143
    iget-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lextern/okhttp3/internal/connection/StreamAllocation;->release()V

    goto/16 :goto_0

    .line 134
    .end local v1    # "e":Lextern/okhttp3/internal/connection/RouteException;
    :catch_1
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    const/4 v8, 0x0

    :try_start_2
    invoke-direct {p0, v1, v8, v6}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLextern/okhttp3/Request;)Z

    move-result v8

    if-nez v8, :cond_7

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :cond_7
    const/4 v5, 0x0

    .line 141
    if-eqz v5, :cond_0

    .line 142
    iget-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8, v12}, Lextern/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 143
    iget-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lextern/okhttp3/internal/connection/StreamAllocation;->release()V

    goto/16 :goto_0

    .line 165
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "followUp":Lextern/okhttp3/Request;
    :cond_8
    invoke-virtual {v7}, Lextern/okhttp3/Response;->body()Lextern/okhttp3/ResponseBody;

    move-result-object v8

    invoke-static {v8}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0x14

    if-le v3, v8, :cond_9

    .line 168
    iget-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lextern/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 169
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Too many follow-up requests: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 172
    :cond_9
    invoke-virtual {v2}, Lextern/okhttp3/Request;->body()Lextern/okhttp3/RequestBody;

    move-result-object v8

    instance-of v8, v8, Lextern/okhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v8, :cond_a

    .line 173
    iget-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lextern/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 174
    new-instance v8, Ljava/net/HttpRetryException;

    const-string v9, "Cannot retry streamed HTTP body"

    invoke-virtual {v7}, Lextern/okhttp3/Response;->code()I

    move-result v10

    invoke-direct {v8, v9, v10}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 177
    :cond_a
    invoke-virtual {v2}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lextern/okhttp3/Response;Lextern/okhttp3/HttpUrl;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 178
    iget-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lextern/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 179
    new-instance v8, Lextern/okhttp3/internal/connection/StreamAllocation;

    iget-object v9, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v9}, Lextern/okhttp3/OkHttpClient;->connectionPool()Lextern/okhttp3/ConnectionPool;

    move-result-object v9

    invoke-virtual {v2}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v10

    invoke-direct {p0, v10}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lextern/okhttp3/HttpUrl;)Lextern/okhttp3/Address;

    move-result-object v10

    iget-object v11, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v8, v9, v10, v11}, Lextern/okhttp3/internal/connection/StreamAllocation;-><init>(Lextern/okhttp3/ConnectionPool;Lextern/okhttp3/Address;Ljava/lang/Object;)V

    iput-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    .line 186
    :cond_b
    move-object v6, v2

    .line 187
    move-object v4, v7

    .line 188
    goto/16 :goto_0

    .line 181
    :cond_c
    iget-object v8, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lextern/okhttp3/internal/connection/StreamAllocation;->codec()Lextern/okhttp3/internal/http/HttpCodec;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 182
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Closing the body of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public isForWebSocket()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callStackTrace"    # Ljava/lang/Object;

    .prologue
    .line 103
    iput-object p1, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public setForWebSocket(Z)V
    .locals 0
    .param p1, "forWebSocket"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    .line 96
    return-void
.end method

.method public streamAllocation()Lextern/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
