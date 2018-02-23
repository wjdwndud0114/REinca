.class public Lcom/inca/security/xa;
.super Ljava/lang/Object;
.source "da"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/ka;,
        Lcom/inca/security/wa;
    }
.end annotation


# static fields
.field private static final synthetic iiIIIIIiiI:I = -0x1


# instance fields
.field private synthetic IIIIiiIiII:Lextern/okhttp3/OkHttpClient;

.field private final synthetic IIIiiiiIII:Ljava/lang/String;

.field private final synthetic IIiIIIIIii:Ljava/lang/String;

.field private synthetic IIiIiIIIii:Lextern/okhttp3/Request;

.field private final synthetic IIiiIiIIii:Ljava/net/CookieManager;

.field private synthetic IiIiIIIiIi:Lcom/inca/security/wa;

.field private final synthetic IiIiIiiIii:Ljava/lang/String;

.field private final synthetic IiiIiiiIiI:Z

.field private final synthetic IiiiiIiiIi:[B

.field private final synthetic iiIIIiiiiI:Ljava/util/Map;

.field private final synthetic iiIiIIIiiI:Ljava/lang/String;

.field private final synthetic iiiIiiiiII:I

.field private final synthetic iiiiIIIiii:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/inca/security/ka;

    invoke-direct {v0}, Lcom/inca/security/ka;-><init>()V

    invoke-direct {p0, v0}, Lcom/inca/security/xa;-><init>(Lcom/inca/security/ka;)V

    .line 91
    return-void
.end method

.method private synthetic constructor <init>(Lcom/inca/security/ka;)V
    .locals 1
    .param p1, "arg0"    # Lcom/inca/security/ka;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    sget-object v0, Lcom/inca/security/wa;->IiiIiiiIiI:Lcom/inca/security/wa;

    iput-object v0, p0, Lcom/inca/security/xa;->IiIiIIIiIi:Lcom/inca/security/wa;

    .line 53
    iget v0, p1, Lcom/inca/security/ka;->IiIiIiiIii:I

    iput v0, p0, Lcom/inca/security/xa;->iiiIiiiiII:I

    .line 43
    iget-boolean v0, p1, Lcom/inca/security/ka;->IIiiIiIIii:Z

    iput-boolean v0, p0, Lcom/inca/security/xa;->IiiIiiiIiI:Z

    .line 203
    iget-object v0, p1, Lcom/inca/security/ka;->IiiIiiiIiI:Ljava/net/CookieManager;

    iput-object v0, p0, Lcom/inca/security/xa;->IIiiIiIIii:Ljava/net/CookieManager;

    .line 149
    iget-object v0, p1, Lcom/inca/security/ka;->IIIIiiIiII:Ljava/lang/String;

    iput-object v0, p0, Lcom/inca/security/xa;->IIiIIIIIii:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Lcom/inca/security/ka;->iiiiIIIiii:Ljava/util/Map;

    iput-object v0, p0, Lcom/inca/security/xa;->iiIIIiiiiI:Ljava/util/Map;

    .line 118
    iget-object v0, p1, Lcom/inca/security/ka;->IIiIIIIIii:Ljava/lang/String;

    iput-object v0, p0, Lcom/inca/security/xa;->iiIiIIIiiI:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/inca/security/ka;->IIiIiIIIii:Ljava/io/File;

    iput-object v0, p0, Lcom/inca/security/xa;->iiiiIIIiii:Ljava/io/File;

    .line 315
    iget-object v0, p1, Lcom/inca/security/ka;->iiIIIiiiiI:Ljava/lang/String;

    iput-object v0, p0, Lcom/inca/security/xa;->IiIiIiiIii:Ljava/lang/String;

    .line 382
    iget-object v0, p1, Lcom/inca/security/ka;->IiIiIIIiIi:Ljava/lang/String;

    iput-object v0, p0, Lcom/inca/security/xa;->IIIiiiiIII:Ljava/lang/String;

    .line 265
    iget-object v0, p1, Lcom/inca/security/ka;->IiiiiIiiIi:[B

    iput-object v0, p0, Lcom/inca/security/xa;->IiiiiIiiIi:[B

    .line 228
    invoke-direct {p0}, Lcom/inca/security/xa;->IiiiIIIIii()Lextern/okhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/xa;->IIIIiiIiII:Lextern/okhttp3/OkHttpClient;

    .line 248
    invoke-virtual {p0}, Lcom/inca/security/xa;->IiiiIIIIii()Lextern/okhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/xa;->IIiIiIIIii:Lextern/okhttp3/Request;

    .line 378
    return-void
.end method

.method public synthetic constructor <init>(Lcom/inca/security/ka;Lcom/inca/security/qa;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/ka;
    .param p2, "arg1"    # Lcom/inca/security/qa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/inca/security/xa;-><init>(Lcom/inca/security/ka;)V

    return-void
.end method

.method private synthetic IiiiIIIIii()Lextern/okhttp3/OkHttpClient;
    .locals 4

    .prologue
    .line 361
    new-instance v0, Lextern/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lextern/okhttp3/OkHttpClient$Builder;-><init>()V

    .line 387
    iget-object v1, p0, Lcom/inca/security/xa;->IIiiIiIIii:Ljava/net/CookieManager;

    if-eqz v1, :cond_0

    .line 216
    new-instance v1, Lextern/okhttp3/JavaNetCookieJar;

    iget-object v2, p0, Lcom/inca/security/xa;->IIiiIiIIii:Ljava/net/CookieManager;

    invoke-direct {v1, v2}, Lextern/okhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    invoke-virtual {v0, v1}, Lextern/okhttp3/OkHttpClient$Builder;->cookieJar(Lextern/okhttp3/CookieJar;)Lextern/okhttp3/OkHttpClient$Builder;

    .line 460
    :cond_0
    iget v1, p0, Lcom/inca/security/xa;->iiiIiiiiII:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 391
    iget v1, p0, Lcom/inca/security/xa;->iiiIiiiiII:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lextern/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lextern/okhttp3/OkHttpClient$Builder;

    .line 483
    iget v1, p0, Lcom/inca/security/xa;->iiiIiiiiII:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lextern/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lextern/okhttp3/OkHttpClient$Builder;

    .line 286
    iget v1, p0, Lcom/inca/security/xa;->iiiIiiiiII:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lextern/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lextern/okhttp3/OkHttpClient$Builder;

    .line 310
    :cond_1
    iget-boolean v1, p0, Lcom/inca/security/xa;->IiiIiiiIiI:Z

    if-eqz v1, :cond_2

    .line 335
    invoke-direct {p0}, Lcom/inca/security/xa;->IiiiIIIIii()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 342
    invoke-direct {p0, v1}, Lcom/inca/security/xa;->IiiiIIIIii(Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 277
    invoke-virtual {v0, v2, v1}, Lextern/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lextern/okhttp3/OkHttpClient$Builder;

    .line 357
    invoke-direct {p0}, Lcom/inca/security/xa;->IiiiIIIIii()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lextern/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lextern/okhttp3/OkHttpClient$Builder;

    .line 404
    :cond_2
    invoke-virtual {v0}, Lextern/okhttp3/OkHttpClient$Builder;->build()Lextern/okhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private synthetic IiiiIIIIii()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/inca/security/xa;->IIiIIIIIii:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/inca/security/xa;->IIiIIIIIii:Ljava/lang/String;

    .line 375
    :goto_0
    return-object v0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/inca/security/xa;->iiIIIiiiiI:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 375
    const-string v0, "z\u0002y\u0019" #POST

    invoke-static {v0}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_1
    const-string v0, "\u0004\u0006\u0017" #GET

    invoke-static {v0}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/xa;)Ljava/lang/String;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/xa;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inca/security/xa;->IIIiiiiIII:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic IiiiIIIIii()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 466
    new-instance v0, Lcom/inca/security/ja;

    invoke-direct {v0, p0}, Lcom/inca/security/ja;-><init>(Lcom/inca/security/xa;)V

    return-object v0
.end method

.method private synthetic IiiiIIIIii(Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .param p1, "arg0"    # Ljavax/net/ssl/TrustManager;

    .prologue
    .line 341
    :try_start_0
    const-string v0, "\u0019f\u001e" #TLS

    invoke-static {v0}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 345
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 215
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 337
    :catch_0
    move-exception v0

    .line 305
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private synthetic IiiiIIIIii()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 344
    new-instance v0, Lcom/inca/security/qa;

    invoke-direct {v0, p0}, Lcom/inca/security/qa;-><init>(Lcom/inca/security/xa;)V

    return-object v0
.end method

.method private synthetic IiiiIIIIii()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/inca/security/xa;->IIIIiiIiII:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lextern/okhttp3/OkHttpClient;->connectionPool()Lextern/okhttp3/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/ConnectionPool;->evictAll()V

    .line 397
    return-void
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/xa;)[B
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/xa;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inca/security/xa;->IiiiiIiiIi:[B

    return-object v0
.end method


# virtual methods
.method public IiiiIIIIii()Lcom/inca/security/wa;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/inca/security/xa;->IiIiIIIiIi:Lcom/inca/security/wa;

    return-object v0
.end method

.method public IiiiIIIIii()Lextern/okhttp3/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 477
    new-instance v3, Lextern/okhttp3/Request$Builder;

    invoke-direct {v3}, Lextern/okhttp3/Request$Builder;-><init>()V

    .line 281
    iget-object v0, p0, Lcom/inca/security/xa;->iiIiIIIiiI:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lextern/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    .line 467
    iget-object v0, p0, Lcom/inca/security/xa;->iiIIIiiiiI:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Lcom/inca/security/xa;->iiiiIIIiii:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 384
    new-instance v4, Lextern/okhttp3/MultipartBody$Builder;

    invoke-direct {v4}, Lextern/okhttp3/MultipartBody$Builder;-><init>()V

    .line 476
    iget-object v0, p0, Lcom/inca/security/xa;->IiIiIiiIii:Ljava/lang/String;

    iget-object v1, p0, Lcom/inca/security/xa;->iiiiIIIiii:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lextern/okhttp3/MultipartBody;->FORM:Lextern/okhttp3/MediaType;

    iget-object v5, p0, Lcom/inca/security/xa;->iiiiIIIiii:Ljava/io/File;

    .line 261
    invoke-static {v2, v5}, Lextern/okhttp3/RequestBody;->create(Lextern/okhttp3/MediaType;Ljava/io/File;)Lextern/okhttp3/RequestBody;

    move-result-object v2

    .line 476
    invoke-virtual {v4, v0, v1, v2}, Lextern/okhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/MultipartBody$Builder;

    .line 328
    sget-object v0, Lextern/okhttp3/MultipartBody;->FORM:Lextern/okhttp3/MediaType;

    invoke-virtual {v4, v0}, Lextern/okhttp3/MultipartBody$Builder;->setType(Lextern/okhttp3/MediaType;)Lextern/okhttp3/MultipartBody$Builder;

    .line 352
    iget-object v0, p0, Lcom/inca/security/xa;->iiIIIiiiiI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 322
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Lextern/okhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/MultipartBody$Builder;

    move-object v0, v2

    .line 299
    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v4}, Lextern/okhttp3/MultipartBody$Builder;->build()Lextern/okhttp3/MultipartBody;

    move-result-object v0

    .line 484
    invoke-direct {p0}, Lcom/inca/security/xa;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lextern/okhttp3/Request$Builder;->method(Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;

    move-object v0, v3

    .line 438
    :goto_1
    invoke-virtual {v0}, Lextern/okhttp3/Request$Builder;->build()Lextern/okhttp3/Request;

    move-result-object v0

    return-object v0

    .line 294
    :cond_1
    new-instance v4, Lextern/okhttp3/FormBody$Builder;

    invoke-direct {v4}, Lextern/okhttp3/FormBody$Builder;-><init>()V

    .line 251
    iget-object v0, p0, Lcom/inca/security/xa;->iiIIIiiiiI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 459
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Lextern/okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/FormBody$Builder;

    move-object v0, v2

    .line 458
    goto :goto_2

    .line 390
    :cond_2
    invoke-virtual {v4}, Lextern/okhttp3/FormBody$Builder;->build()Lextern/okhttp3/FormBody;

    move-result-object v0

    .line 343
    invoke-direct {p0}, Lcom/inca/security/xa;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lextern/okhttp3/Request$Builder;->method(Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;

    :cond_3
    move-object v0, v3

    .line 438
    goto :goto_1
.end method

.method public IiiiIIIIii()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v0, ""

    .line 113
    const/4 v0, 0x0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/inca/security/xa;->IIIIiiIiII:Lextern/okhttp3/OkHttpClient;

    iget-object v3, p0, Lcom/inca/security/xa;->IIiIiIIIii:Lextern/okhttp3/Request;

    invoke-virtual {v1, v3}, Lextern/okhttp3/OkHttpClient;->newCall(Lextern/okhttp3/Request;)Lextern/okhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lextern/okhttp3/Call;->execute()Lextern/okhttp3/Response;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lextern/okhttp3/Response;->code()I

    move-result v3

    .line 42
    invoke-virtual {v1}, Lextern/okhttp3/Response;->body()Lextern/okhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lextern/okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-virtual {v1}, Lextern/okhttp3/Response;->body()Lextern/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/ResponseBody;->close()V

    .line 18
    sget-object v1, Lcom/inca/security/wa;->IIIiiiiIII:Lcom/inca/security/wa;

    iput-object v1, p0, Lcom/inca/security/xa;->IiIiIIIiIi:Lcom/inca/security/wa;

    .line 171
    const-string v1, " ,\'&"

    const-string v5, "N,^,"

    invoke-static {v5}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {v1}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-direct {p0}, Lcom/inca/security/xa;->IiiiIIIIii()V

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/inca/security/xa;->IiIiIIIiIi:Lcom/inca/security/wa;

    sget-object v3, Lcom/inca/security/wa;->IiiIiiiIiI:Lcom/inca/security/wa;

    if-ne v1, v3, :cond_1

    .line 196
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 193
    :catch_0
    move-exception v1

    .line 144
    :try_start_1
    invoke-virtual {v1}, Ljavax/net/ssl/SSLHandshakeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lcom/inca/security/wa;->IiIiIiiIii:Lcom/inca/security/wa;

    iput-object v1, p0, Lcom/inca/security/xa;->IiIiIIIiIi:Lcom/inca/security/wa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/inca/security/xa;->IiiiIIIIii()V

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 129
    :try_start_2
    sget-object v1, Lcom/inca/security/wa;->IiiIiiiIiI:Lcom/inca/security/wa;

    iput-object v1, p0, Lcom/inca/security/xa;->IiIiIIIiIi:Lcom/inca/security/wa;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    invoke-direct {p0}, Lcom/inca/security/xa;->IiiiIIIIii()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/inca/security/xa;->IiiiIIIIii()V

    throw v0

    .line 57
    :cond_1
    return-object v2
.end method

.method public iIiIIiIIIi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return-object v0
.end method
