.class public Lcom/igaworks/net/HttpsUrlConnectionThread;
.super Ljava/lang/Thread;
.source "HttpsUrlConnectionThread.java"


# static fields
.field public static final GET:I = 0x0

.field public static final POST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HttpsUrlConnectionThread"

.field private static TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field private static TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private callbackOnMainThread:Z

.field private conn:Ljava/net/HttpURLConnection;

.field private context:Landroid/content/Context;

.field private httpResponseString:Ljava/lang/String;

.field private isEncode:Z

.field private listener:Lcom/igaworks/interfaces/HttpCallbackListener;

.field private method:I

.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "method"    # I
    .param p3, "url_"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/igaworks/interfaces/HttpCallbackListener;
    .param p6, "isEncode"    # Z
    .param p7, "callbackOnMainThread_"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/igaworks/interfaces/HttpCallbackListener;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/net/HttpsUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/net/HttpsUrlConnectionThread;->callbackOnMainThread:Z

    .line 58
    iput-object p3, p0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcom/igaworks/net/HttpsUrlConnectionThread;->method:I

    .line 60
    iput-object p4, p0, Lcom/igaworks/net/HttpsUrlConnectionThread;->params:Ljava/util/HashMap;

    .line 61
    iput-object p5, p0, Lcom/igaworks/net/HttpsUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;

    .line 62
    iput-object p1, p0, Lcom/igaworks/net/HttpsUrlConnectionThread;->context:Landroid/content/Context;

    .line 63
    iput-boolean p6, p0, Lcom/igaworks/net/HttpsUrlConnectionThread;->isEncode:Z

    .line 64
    iput-boolean p7, p0, Lcom/igaworks/net/HttpsUrlConnectionThread;->callbackOnMainThread:Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/net/HttpsUrlConnectionThread;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/net/HttpsUrlConnectionThread;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/igaworks/net/HttpsUrlConnectionThread;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/igaworks/net/HttpsUrlConnectionThread;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/net/HttpsUrlConnectionThread;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/igaworks/net/HttpsUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/igaworks/net/HttpsUrlConnectionThread;)Lcom/igaworks/interfaces/HttpCallbackListener;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/net/HttpsUrlConnectionThread;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/igaworks/net/HttpsUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;

    return-object v0
.end method

.method private disableConnectionReuseIfNecessary()V
    .locals 2

    .prologue
    .line 260
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 261
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    :cond_0
    return-void
.end method

.method private getPostDataString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 240
    .local v1, "first":Z
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 241
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 242
    const/4 v1, 0x0

    .line 246
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 250
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_0

    const-string v3, ""

    .line 251
    :cond_0
    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 244
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 254
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    .prologue
    .line 298
    sget-object v3, Lcom/igaworks/net/HttpsUrlConnectionThread;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v3, :cond_0

    .line 299
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/igaworks/net/HttpsUrlConnectionThread$5;

    invoke-direct {v4, p0}, Lcom/igaworks/net/HttpsUrlConnectionThread$5;-><init>(Lcom/igaworks/net/HttpsUrlConnectionThread;)V

    aput-object v4, v2, v3

    .line 318
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 319
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 320
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    sput-object v3, Lcom/igaworks/net/HttpsUrlConnectionThread;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    .end local v2    # "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :cond_0
    :goto_0
    sget-object v3, Lcom/igaworks/net/HttpsUrlConnectionThread;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    return-object v3

    .line 321
    .restart local v2    # "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/security/GeneralSecurityException;
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpsUrlConnection > SSL Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/igaworks/net/HttpsUrlConnectionThread$4;

    invoke-direct {v0, p0}, Lcom/igaworks/net/HttpsUrlConnectionThread$4;-><init>(Lcom/igaworks/net/HttpsUrlConnectionThread;)V

    sput-object v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 286
    :cond_0
    sget-object v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 70
    :try_start_0
    new-instance v4, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v4, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    .local v4, "handler":Landroid/os/Handler;
    const-string v9, ""

    .line 73
    .local v9, "response":Ljava/lang/String;
    const/4 v10, -0x1

    .line 75
    .local v10, "responseCode":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->method:I

    if-nez v13, :cond_7

    .line 77
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->params:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/igaworks/net/HttpsUrlConnectionThread;->getPostDataString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "queryString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    const-string v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 80
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    .line 85
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->isEncode:Z

    if-eqz v13, :cond_3

    .line 86
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "queryString="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/igaworks/util/IgawBase64;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    .line 91
    :goto_1
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    invoke-direct {v11, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 92
    .local v11, "urlObj":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    .line 93
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    const-string v14, "https"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct/range {p0 .. p0}, Lcom/igaworks/net/HttpsUrlConnectionThread;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct/range {p0 .. p0}, Lcom/igaworks/net/HttpsUrlConnectionThread;->getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 97
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/16 v14, 0x3a98

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 98
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/16 v14, 0x3a98

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const-string v14, "GET"

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const-string v14, "Accept-Charset"

    const-string v15, "UTF-8"

    invoke-virtual {v13, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 102
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 103
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 104
    invoke-direct/range {p0 .. p0}, Lcom/igaworks/net/HttpsUrlConnectionThread;->disableConnectionReuseIfNecessary()V

    .line 106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->context:Landroid/content/Context;

    const-string v14, "IGAW_QA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HttpsUrlConnectionThread: getPromotionInfo > url = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x3

    const/16 v17, 0x1

    invoke-static/range {v13 .. v17}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 108
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 110
    const/16 v13, 0xc8

    if-ne v10, v13, :cond_5

    .line 112
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 113
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 114
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 82
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v11    # "urlObj":Ljava/net/URL;
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 217
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v8    # "queryString":Ljava/lang/String;
    .end local v9    # "response":Ljava/lang/String;
    .end local v10    # "responseCode":I
    :catch_0
    move-exception v3

    .line 218
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->context:Landroid/content/Context;

    const-string v14, "IGAW_QA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->callbackOnMainThread:Z

    if-eqz v13, :cond_10

    .line 220
    new-instance v4, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v4, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 221
    .restart local v4    # "handler":Landroid/os/Handler;
    new-instance v13, Lcom/igaworks/net/HttpsUrlConnectionThread$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/igaworks/net/HttpsUrlConnectionThread$3;-><init>(Lcom/igaworks/net/HttpsUrlConnectionThread;)V

    invoke-virtual {v4, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    .end local v4    # "handler":Landroid/os/Handler;
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-void

    .line 88
    .restart local v4    # "handler":Landroid/os/Handler;
    .restart local v8    # "queryString":Ljava/lang/String;
    .restart local v9    # "response":Ljava/lang/String;
    .restart local v10    # "responseCode":I
    :cond_3
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 232
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v8    # "queryString":Ljava/lang/String;
    .end local v9    # "response":Ljava/lang/String;
    .end local v10    # "responseCode":I
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v13

    .line 118
    .restart local v4    # "handler":Landroid/os/Handler;
    .restart local v8    # "queryString":Ljava/lang/String;
    .restart local v9    # "response":Ljava/lang/String;
    .restart local v10    # "responseCode":I
    .restart local v11    # "urlObj":Ljava/net/URL;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->context:Landroid/content/Context;

    const-string v14, "IGAW_QA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HttpsUrlConnectionThread: HTTP GET >> responseCode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 119
    const-string v9, ""

    .line 185
    .end local v8    # "queryString":Ljava/lang/String;
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 188
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->callbackOnMainThread:Z

    if-eqz v13, :cond_c

    .line 189
    new-instance v13, Lcom/igaworks/net/HttpsUrlConnectionThread$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/igaworks/net/HttpsUrlConnectionThread$1;-><init>(Lcom/igaworks/net/HttpsUrlConnectionThread;)V

    invoke-virtual {v4, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    .line 124
    .end local v11    # "urlObj":Ljava/net/URL;
    :cond_7
    :try_start_4
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    invoke-direct {v11, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 125
    .restart local v11    # "urlObj":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "path":Ljava/lang/String;
    const-string v1, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    .local v1, "apiName":Ljava/lang/String;
    :try_start_5
    const-string v13, "/"

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v13, "/"

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v13, v14, :cond_a

    .line 130
    const-string v13, "/"

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 138
    :goto_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->context:Landroid/content/Context;

    const-string v14, "IGAW_QA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HttpsUrlConnectionThread: HTTP POST > reqName : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", param size: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->params:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x3

    const/16 v17, 0x1

    invoke-static/range {v13 .. v17}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 141
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->isEncode:Z

    if-eqz v13, :cond_8

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->params:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/igaworks/net/HttpsUrlConnectionThread;->getPostDataString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v8

    .line 143
    .restart local v8    # "queryString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->params:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->params:Ljava/util/HashMap;

    const-string v14, "queryString"

    invoke-static {v8}, Lcom/igaworks/util/IgawBase64;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v8    # "queryString":Ljava/lang/String;
    :cond_8
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->url:Ljava/lang/String;

    const-string v14, "https"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct/range {p0 .. p0}, Lcom/igaworks/net/HttpsUrlConnectionThread;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct/range {p0 .. p0}, Lcom/igaworks/net/HttpsUrlConnectionThread;->getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 152
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/16 v14, 0x3a98

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/16 v14, 0x3a98

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 154
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const-string v14, "POST"

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 157
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const-string v14, "Accept-Charset"

    const-string v15, "UTF-8"

    invoke-virtual {v13, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const-string v14, "Content-Type"

    const-string v15, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v13, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/igaworks/net/HttpsUrlConnectionThread;->disableConnectionReuseIfNecessary()V

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 163
    .local v6, "os":Ljava/io/OutputStream;
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/OutputStreamWriter;

    const-string v14, "UTF-8"

    invoke-direct {v13, v6, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 165
    .local v12, "writer":Ljava/io/BufferedWriter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->params:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/igaworks/net/HttpsUrlConnectionThread;->getPostDataString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->flush()V

    .line 167
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    .line 168
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 172
    const/16 v13, 0xc8

    if-ne v10, v13, :cond_b

    .line 174
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 175
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :goto_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "line":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 176
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    .line 132
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    :cond_a
    move-object v1, v7

    goto/16 :goto_7

    .line 134
    :catch_1
    move-exception v3

    .line 135
    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v1, v7

    goto/16 :goto_7

    .line 180
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->context:Landroid/content/Context;

    const-string v14, "IGAW_QA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HttpsUrlConnectionThread: HTTP POST >> responseCode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 181
    const-string v9, ""

    goto/16 :goto_5

    .line 198
    .end local v1    # "apiName":Ljava/lang/String;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "path":Ljava/lang/String;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    :cond_c
    sget-boolean v13, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->context:Landroid/content/Context;

    const-string v14, "Live"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    const/16 v16, 0x3

    const/16 v17, 0x1

    invoke-static/range {v13 .. v17}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 199
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    invoke-interface {v13, v14}, Lcom/igaworks/interfaces/HttpCallbackListener;->callback(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 204
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->callbackOnMainThread:Z

    if-eqz v13, :cond_f

    .line 205
    new-instance v13, Lcom/igaworks/net/HttpsUrlConnectionThread$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/igaworks/net/HttpsUrlConnectionThread$2;-><init>(Lcom/igaworks/net/HttpsUrlConnectionThread;)V

    invoke-virtual {v4, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 212
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/igaworks/interfaces/HttpCallbackListener;->callback(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_6

    .line 229
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v9    # "response":Ljava/lang/String;
    .end local v10    # "responseCode":I
    .end local v11    # "urlObj":Ljava/net/URL;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_10
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/net/HttpsUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/igaworks/interfaces/HttpCallbackListener;->callback(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3
.end method
