.class public Lextern/okhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Lextern/okhttp3/Call$Factory;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final authenticator:Lextern/okhttp3/Authenticator;

.field final cache:Lextern/okhttp3/Cache;

.field final certificateChainCleaner:Lextern/okhttp3/internal/tls/CertificateChainCleaner;

.field final certificatePinner:Lextern/okhttp3/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Lextern/okhttp3/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Lextern/okhttp3/CookieJar;

.field final dispatcher:Lextern/okhttp3/Dispatcher;

.field final dns:Lextern/okhttp3/Dns;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

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

.field final internalCache:Lextern/okhttp3/internal/cache/InternalCache;

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

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxyAuthenticator:Lextern/okhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-array v0, v4, [Lextern/okhttp3/Protocol;

    sget-object v1, Lextern/okhttp3/Protocol;->HTTP_2:Lextern/okhttp3/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lextern/okhttp3/Protocol;->HTTP_1_1:Lextern/okhttp3/Protocol;

    aput-object v1, v0, v3

    invoke-static {v0}, Lextern/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [Lextern/okhttp3/ConnectionSpec;

    sget-object v1, Lextern/okhttp3/ConnectionSpec;->MODERN_TLS:Lextern/okhttp3/ConnectionSpec;

    aput-object v1, v0, v2

    sget-object v1, Lextern/okhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lextern/okhttp3/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lextern/okhttp3/ConnectionSpec;->CLEARTEXT:Lextern/okhttp3/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Lextern/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 127
    new-instance v0, Lextern/okhttp3/OkHttpClient$1;

    invoke-direct {v0}, Lextern/okhttp3/OkHttpClient$1;-><init>()V

    sput-object v0, Lextern/okhttp3/internal/Internal;->instance:Lextern/okhttp3/internal/Internal;

    .line 176
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lextern/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lextern/okhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lextern/okhttp3/OkHttpClient;-><init>(Lextern/okhttp3/OkHttpClient$Builder;)V

    .line 206
    return-void
.end method

.method private constructor <init>(Lextern/okhttp3/OkHttpClient$Builder;)V
    .locals 6
    .param p1, "builder"    # Lextern/okhttp3/OkHttpClient$Builder;

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->dispatcher:Lextern/okhttp3/Dispatcher;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->dispatcher:Lextern/okhttp3/Dispatcher;

    .line 210
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 211
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 212
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 213
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v4}, Lextern/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 214
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v4}, Lextern/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 215
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 216
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->cookieJar:Lextern/okhttp3/CookieJar;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->cookieJar:Lextern/okhttp3/CookieJar;

    .line 217
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->cache:Lextern/okhttp3/Cache;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->cache:Lextern/okhttp3/Cache;

    .line 218
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->internalCache:Lextern/okhttp3/internal/cache/InternalCache;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->internalCache:Lextern/okhttp3/internal/cache/InternalCache;

    .line 219
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "isTLS":Z
    iget-object v4, p0, Lextern/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lextern/okhttp3/ConnectionSpec;

    .line 223
    .local v2, "spec":Lextern/okhttp3/ConnectionSpec;
    if-nez v1, :cond_0

    invoke-virtual {v2}, Lextern/okhttp3/ConnectionSpec;->isTls()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 224
    :goto_1
    goto :goto_0

    .line 223
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 226
    .end local v2    # "spec":Lextern/okhttp3/ConnectionSpec;
    :cond_2
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_3

    if-nez v1, :cond_4

    .line 227
    :cond_3
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 228
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lextern/okhttp3/internal/tls/CertificateChainCleaner;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->certificateChainCleaner:Lextern/okhttp3/internal/tls/CertificateChainCleaner;

    .line 235
    :goto_2
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 236
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->certificatePinner:Lextern/okhttp3/CertificatePinner;

    iget-object v5, p0, Lextern/okhttp3/OkHttpClient;->certificateChainCleaner:Lextern/okhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v4, v5}, Lextern/okhttp3/CertificatePinner;->withCertificateChainCleaner(Lextern/okhttp3/internal/tls/CertificateChainCleaner;)Lextern/okhttp3/CertificatePinner;

    move-result-object v4

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->certificatePinner:Lextern/okhttp3/CertificatePinner;

    .line 238
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lextern/okhttp3/Authenticator;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->proxyAuthenticator:Lextern/okhttp3/Authenticator;

    .line 239
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->authenticator:Lextern/okhttp3/Authenticator;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->authenticator:Lextern/okhttp3/Authenticator;

    .line 240
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->connectionPool:Lextern/okhttp3/ConnectionPool;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->connectionPool:Lextern/okhttp3/ConnectionPool;

    .line 241
    iget-object v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->dns:Lextern/okhttp3/Dns;

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->dns:Lextern/okhttp3/Dns;

    .line 242
    iget-boolean v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v4, p0, Lextern/okhttp3/OkHttpClient;->followSslRedirects:Z

    .line 243
    iget-boolean v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v4, p0, Lextern/okhttp3/OkHttpClient;->followRedirects:Z

    .line 244
    iget-boolean v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v4, p0, Lextern/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 245
    iget v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v4, p0, Lextern/okhttp3/OkHttpClient;->connectTimeout:I

    .line 246
    iget v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v4, p0, Lextern/okhttp3/OkHttpClient;->readTimeout:I

    .line 247
    iget v4, p1, Lextern/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    iput v4, p0, Lextern/okhttp3/OkHttpClient;->writeTimeout:I

    .line 248
    return-void

    .line 230
    :cond_4
    invoke-direct {p0}, Lextern/okhttp3/OkHttpClient;->systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    .line 231
    .local v3, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-direct {p0, v3}, Lextern/okhttp3/OkHttpClient;->systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 232
    invoke-static {v3}, Lextern/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lextern/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v4

    iput-object v4, p0, Lextern/okhttp3/OkHttpClient;->certificateChainCleaner:Lextern/okhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_2
.end method

.method synthetic constructor <init>(Lextern/okhttp3/OkHttpClient$Builder;Lextern/okhttp3/OkHttpClient$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/OkHttpClient$Builder;
    .param p2, "x1"    # Lextern/okhttp3/OkHttpClient$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lextern/okhttp3/OkHttpClient;-><init>(Lextern/okhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lextern/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lextern/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    return-object v0
.end method

.method private systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 268
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 269
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 270
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 271
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 6

    .prologue
    .line 252
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 254
    .local v1, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v3, 0x0

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 255
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 256
    .local v2, "trustManagers":[Ljavax/net/ssl/TrustManager;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-nez v3, :cond_1

    .line 257
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected default trust managers:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v1    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 260
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v2, v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3
.end method


# virtual methods
.method public authenticator()Lextern/okhttp3/Authenticator;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->authenticator:Lextern/okhttp3/Authenticator;

    return-object v0
.end method

.method public cache()Lextern/okhttp3/Cache;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->cache:Lextern/okhttp3/Cache;

    return-object v0
.end method

.method public certificatePinner()Lextern/okhttp3/CertificatePinner;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->certificatePinner:Lextern/okhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lextern/okhttp3/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public connectionPool()Lextern/okhttp3/ConnectionPool;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->connectionPool:Lextern/okhttp3/ConnectionPool;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public cookieJar()Lextern/okhttp3/CookieJar;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->cookieJar:Lextern/okhttp3/CookieJar;

    return-object v0
.end method

.method public dispatcher()Lextern/okhttp3/Dispatcher;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->dispatcher:Lextern/okhttp3/Dispatcher;

    return-object v0
.end method

.method public dns()Lextern/okhttp3/Dns;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->dns:Lextern/okhttp3/Dns;

    return-object v0
.end method

.method public followRedirects()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lextern/okhttp3/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public followSslRedirects()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lextern/okhttp3/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
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
    .line 373
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lextern/okhttp3/internal/cache/InternalCache;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->cache:Lextern/okhttp3/Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->cache:Lextern/okhttp3/Cache;

    iget-object v0, v0, Lextern/okhttp3/Cache;->internalCache:Lextern/okhttp3/internal/cache/InternalCache;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->internalCache:Lextern/okhttp3/internal/cache/InternalCache;

    goto :goto_0
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
    .line 382
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newBuilder()Lextern/okhttp3/OkHttpClient$Builder;
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lextern/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Lextern/okhttp3/OkHttpClient$Builder;-><init>(Lextern/okhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public newCall(Lextern/okhttp3/Request;)Lextern/okhttp3/Call;
    .locals 1
    .param p1, "request"    # Lextern/okhttp3/Request;

    .prologue
    .line 389
    new-instance v0, Lextern/okhttp3/RealCall;

    invoke-direct {v0, p0, p1}, Lextern/okhttp3/RealCall;-><init>(Lextern/okhttp3/OkHttpClient;Lextern/okhttp3/Request;)V

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lextern/okhttp3/Authenticator;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->proxyAuthenticator:Lextern/okhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public readTimeoutMillis()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lextern/okhttp3/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lextern/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lextern/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lextern/okhttp3/OkHttpClient;->writeTimeout:I

    return v0
.end method
