.class public final Lextern/okhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field authenticator:Lextern/okhttp3/Authenticator;

.field cache:Lextern/okhttp3/Cache;

.field certificateChainCleaner:Lextern/okhttp3/internal/tls/CertificateChainCleaner;

.field certificatePinner:Lextern/okhttp3/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Lextern/okhttp3/ConnectionPool;

.field connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field cookieJar:Lextern/okhttp3/CookieJar;

.field dispatcher:Lextern/okhttp3/Dispatcher;

.field dns:Lextern/okhttp3/Dns;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field internalCache:Lextern/okhttp3/internal/cache/InternalCache;

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;

.field proxyAuthenticator:Lextern/okhttp3/Authenticator;

.field proxySelector:Ljava/net/ProxySelector;

.field readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 424
    new-instance v0, Lextern/okhttp3/Dispatcher;

    invoke-direct {v0}, Lextern/okhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->dispatcher:Lextern/okhttp3/Dispatcher;

    .line 425
    # getter for: Lextern/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;
    invoke-static {}, Lextern/okhttp3/OkHttpClient;->access$000()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 426
    # getter for: Lextern/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    invoke-static {}, Lextern/okhttp3/OkHttpClient;->access$100()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 427
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 428
    sget-object v0, Lextern/okhttp3/CookieJar;->NO_COOKIES:Lextern/okhttp3/CookieJar;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->cookieJar:Lextern/okhttp3/CookieJar;

    .line 429
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 430
    sget-object v0, Lextern/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lextern/okhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 431
    sget-object v0, Lextern/okhttp3/CertificatePinner;->DEFAULT:Lextern/okhttp3/CertificatePinner;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->certificatePinner:Lextern/okhttp3/CertificatePinner;

    .line 432
    sget-object v0, Lextern/okhttp3/Authenticator;->NONE:Lextern/okhttp3/Authenticator;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lextern/okhttp3/Authenticator;

    .line 433
    sget-object v0, Lextern/okhttp3/Authenticator;->NONE:Lextern/okhttp3/Authenticator;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->authenticator:Lextern/okhttp3/Authenticator;

    .line 434
    new-instance v0, Lextern/okhttp3/ConnectionPool;

    invoke-direct {v0}, Lextern/okhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->connectionPool:Lextern/okhttp3/ConnectionPool;

    .line 435
    sget-object v0, Lextern/okhttp3/Dns;->SYSTEM:Lextern/okhttp3/Dns;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->dns:Lextern/okhttp3/Dns;

    .line 436
    iput-boolean v1, p0, Lextern/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 437
    iput-boolean v1, p0, Lextern/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 438
    iput-boolean v1, p0, Lextern/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 439
    iput v2, p0, Lextern/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 440
    iput v2, p0, Lextern/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 441
    iput v2, p0, Lextern/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 442
    return-void
.end method

.method constructor <init>(Lextern/okhttp3/OkHttpClient;)V
    .locals 2
    .param p1, "okHttpClient"    # Lextern/okhttp3/OkHttpClient;

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 445
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->dispatcher:Lextern/okhttp3/Dispatcher;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->dispatcher:Lextern/okhttp3/Dispatcher;

    .line 446
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 447
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 448
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 449
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lextern/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 450
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Lextern/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 451
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 452
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->cookieJar:Lextern/okhttp3/CookieJar;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->cookieJar:Lextern/okhttp3/CookieJar;

    .line 453
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->internalCache:Lextern/okhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->internalCache:Lextern/okhttp3/internal/cache/InternalCache;

    .line 454
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->cache:Lextern/okhttp3/Cache;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->cache:Lextern/okhttp3/Cache;

    .line 455
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 456
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 457
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->certificateChainCleaner:Lextern/okhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lextern/okhttp3/internal/tls/CertificateChainCleaner;

    .line 458
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 459
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->certificatePinner:Lextern/okhttp3/CertificatePinner;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->certificatePinner:Lextern/okhttp3/CertificatePinner;

    .line 460
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->proxyAuthenticator:Lextern/okhttp3/Authenticator;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lextern/okhttp3/Authenticator;

    .line 461
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->authenticator:Lextern/okhttp3/Authenticator;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->authenticator:Lextern/okhttp3/Authenticator;

    .line 462
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->connectionPool:Lextern/okhttp3/ConnectionPool;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->connectionPool:Lextern/okhttp3/ConnectionPool;

    .line 463
    iget-object v0, p1, Lextern/okhttp3/OkHttpClient;->dns:Lextern/okhttp3/Dns;

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->dns:Lextern/okhttp3/Dns;

    .line 464
    iget-boolean v0, p1, Lextern/okhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 465
    iget-boolean v0, p1, Lextern/okhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 466
    iget-boolean v0, p1, Lextern/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 467
    iget v0, p1, Lextern/okhttp3/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 468
    iget v0, p1, Lextern/okhttp3/OkHttpClient;->readTimeout:I

    iput v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 469
    iget v0, p1, Lextern/okhttp3/OkHttpClient;->writeTimeout:I

    iput v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 470
    return-void
.end method


# virtual methods
.method public addInterceptor(Lextern/okhttp3/Interceptor;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "interceptor"    # Lextern/okhttp3/Interceptor;

    .prologue
    .line 821
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    return-object p0
.end method

.method public addNetworkInterceptor(Lextern/okhttp3/Interceptor;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "interceptor"    # Lextern/okhttp3/Interceptor;

    .prologue
    .line 835
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    return-object p0
.end method

.method public authenticator(Lextern/okhttp3/Authenticator;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "authenticator"    # Lextern/okhttp3/Authenticator;

    .prologue
    .line 677
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_0
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->authenticator:Lextern/okhttp3/Authenticator;

    .line 679
    return-object p0
.end method

.method public build()Lextern/okhttp3/OkHttpClient;
    .locals 2

    .prologue
    .line 840
    new-instance v0, Lextern/okhttp3/OkHttpClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lextern/okhttp3/OkHttpClient;-><init>(Lextern/okhttp3/OkHttpClient$Builder;Lextern/okhttp3/OkHttpClient$1;)V

    return-object v0
.end method

.method public cache(Lextern/okhttp3/Cache;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "cache"    # Lextern/okhttp3/Cache;

    .prologue
    .line 557
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->cache:Lextern/okhttp3/Cache;

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->internalCache:Lextern/okhttp3/internal/cache/InternalCache;

    .line 559
    return-object p0
.end method

.method public certificatePinner(Lextern/okhttp3/CertificatePinner;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "certificatePinner"    # Lextern/okhttp3/CertificatePinner;

    .prologue
    .line 665
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificatePinner == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_0
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->certificatePinner:Lextern/okhttp3/CertificatePinner;

    .line 667
    return-object p0
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 478
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 479
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 480
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 481
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 482
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 483
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lextern/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 484
    return-object p0
.end method

.method public connectionPool(Lextern/okhttp3/ConnectionPool;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "connectionPool"    # Lextern/okhttp3/ConnectionPool;

    .prologue
    .line 700
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionPool == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_0
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->connectionPool:Lextern/okhttp3/ConnectionPool;

    .line 702
    return-object p0
.end method

.method public connectionSpecs(Ljava/util/List;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/ConnectionSpec;",
            ">;)",
            "Lextern/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .prologue
    .line 807
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/ConnectionSpec;>;"
    invoke-static {p1}, Lextern/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 808
    return-object p0
.end method

.method public cookieJar(Lextern/okhttp3/CookieJar;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "cookieJar"    # Lextern/okhttp3/CookieJar;

    .prologue
    .line 545
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookieJar == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->cookieJar:Lextern/okhttp3/CookieJar;

    .line 547
    return-object p0
.end method

.method public dispatcher(Lextern/okhttp3/Dispatcher;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "dispatcher"    # Lextern/okhttp3/Dispatcher;

    .prologue
    .line 749
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->dispatcher:Lextern/okhttp3/Dispatcher;

    .line 751
    return-object p0
.end method

.method public dns(Lextern/okhttp3/Dns;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "dns"    # Lextern/okhttp3/Dns;

    .prologue
    .line 568
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_0
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->dns:Lextern/okhttp3/Dns;

    .line 570
    return-object p0
.end method

.method public followRedirects(Z)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "followRedirects"    # Z

    .prologue
    .line 718
    iput-boolean p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 719
    return-object p0
.end method

.method public followSslRedirects(Z)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    .prologue
    .line 712
    iput-boolean p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 713
    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 654
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hostnameVerifier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 656
    return-object p0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 817
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public protocols(Ljava/util/List;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Protocol;",
            ">;)",
            "Lextern/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .prologue
    .line 783
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Protocol;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 786
    .end local p1    # "protocols":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Protocol;>;"
    .local v0, "protocols":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Protocol;>;"
    sget-object v1, Lextern/okhttp3/Protocol;->HTTP_1_1:Lextern/okhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 787
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :cond_0
    sget-object v1, Lextern/okhttp3/Protocol;->HTTP_1_0:Lextern/okhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocols must not contain http/1.0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 792
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "protocols must not contain null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 797
    :cond_2
    sget-object v1, Lextern/okhttp3/Protocol;->SPDY_3:Lextern/okhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 798
    sget-object v1, Lextern/okhttp3/Protocol;->SPDY_3:Lextern/okhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 802
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lextern/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 803
    return-object p0
.end method

.method public proxy(Ljava/net/Proxy;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 521
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 522
    return-object p0
.end method

.method public proxyAuthenticator(Lextern/okhttp3/Authenticator;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "proxyAuthenticator"    # Lextern/okhttp3/Authenticator;

    .prologue
    .line 689
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_0
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lextern/okhttp3/Authenticator;

    .line 691
    return-object p0
.end method

.method public proxySelector(Ljava/net/ProxySelector;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .prologue
    .line 534
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 535
    return-object p0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 492
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 493
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 494
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 495
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 496
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 497
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lextern/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 498
    return-object p0
.end method

.method public retryOnConnectionFailure(Z)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "retryOnConnectionFailure"    # Z

    .prologue
    .line 741
    iput-boolean p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 742
    return-object p0
.end method

.method setInternalCache(Lextern/okhttp3/internal/cache/InternalCache;)V
    .locals 1
    .param p1, "internalCache"    # Lextern/okhttp3/internal/cache/InternalCache;

    .prologue
    .line 552
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->internalCache:Lextern/okhttp3/internal/cache/InternalCache;

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->cache:Lextern/okhttp3/Cache;

    .line 554
    return-void
.end method

.method public socketFactory(Ljavax/net/SocketFactory;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .prologue
    .line 582
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 584
    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 4
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 597
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "sslSocketFactory == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    :cond_0
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, p1}, Lextern/okhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 599
    .local v0, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_1

    .line 600
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to extract the trust manager on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sslSocketFactory is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_1
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 604
    invoke-static {v0}, Lextern/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lextern/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v1

    iput-object v1, p0, Lextern/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lextern/okhttp3/internal/tls/CertificateChainCleaner;

    .line 605
    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 640
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustManager == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_1
    iput-object p1, p0, Lextern/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 643
    invoke-static {p2}, Lextern/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lextern/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lextern/okhttp3/internal/tls/CertificateChainCleaner;

    .line 644
    return-object p0
.end method

.method public writeTimeout(JLjava/util/concurrent/TimeUnit;)Lextern/okhttp3/OkHttpClient$Builder;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 506
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 507
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 508
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 509
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 510
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 511
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lextern/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 512
    return-object p0
.end method
