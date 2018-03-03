.class public final Lextern/okhttp3/internal/connection/RealConnection;
.super Lextern/okhttp3/internal/http2/Http2Connection$Listener;
.source "RealConnection.java"

# interfaces
.implements Lextern/okhttp3/Connection;


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lextern/okhttp3/internal/connection/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field private handshake:Lextern/okhttp3/Handshake;

.field public volatile http2Connection:Lextern/okhttp3/internal/http2/Http2Connection;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lextern/okhttp3/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lextern/okhttp3/Route;

.field public sink:Lextern/okio/BufferedSink;

.field public socket:Ljava/net/Socket;

.field public source:Lextern/okio/BufferedSource;

.field public successCount:I


# direct methods
.method public constructor <init>(Lextern/okhttp3/Route;)V
    .locals 2
    .param p1, "route"    # Lextern/okhttp3/Route;

    .prologue
    .line 86
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    .line 84
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 87
    iput-object p1, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    .line 88
    return-void
.end method

.method private buildConnection(IIILextern/okhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 0
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionSpecSelector"    # Lextern/okhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lextern/okhttp3/internal/connection/RealConnection;->connectSocket(II)V

    .line 175
    invoke-direct {p0, p2, p3, p4}, Lextern/okhttp3/internal/connection/RealConnection;->establishProtocol(IILextern/okhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 176
    return-void
.end method

.method private buildTunneledConnection(IIILextern/okhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 7
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionSpecSelector"    # Lextern/okhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 146
    invoke-direct {p0}, Lextern/okhttp3/internal/connection/RealConnection;->createTunnelRequest()Lextern/okhttp3/Request;

    move-result-object v2

    .line 147
    .local v2, "tunnelRequest":Lextern/okhttp3/Request;
    invoke-virtual {v2}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v3

    .line 148
    .local v3, "url":Lextern/okhttp3/HttpUrl;
    const/4 v0, 0x0

    .line 149
    .local v0, "attemptedConnections":I
    const/16 v1, 0x15

    .line 151
    .local v1, "maxAttempts":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_0

    .line 152
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many tunnel connections attempted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 155
    :cond_0
    invoke-direct {p0, p1, p2}, Lextern/okhttp3/internal/connection/RealConnection;->connectSocket(II)V

    .line 156
    invoke-direct {p0, p2, p3, v2, v3}, Lextern/okhttp3/internal/connection/RealConnection;->createTunnel(IILextern/okhttp3/Request;Lextern/okhttp3/HttpUrl;)Lextern/okhttp3/Request;

    move-result-object v2

    .line 158
    if-nez v2, :cond_1

    .line 168
    invoke-direct {p0, p2, p3, p4}, Lextern/okhttp3/internal/connection/RealConnection;->establishProtocol(IILextern/okhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 169
    return-void

    .line 162
    :cond_1
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v4}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 163
    iput-object v5, p0, Lextern/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 164
    iput-object v5, p0, Lextern/okhttp3/internal/connection/RealConnection;->sink:Lextern/okio/BufferedSink;

    .line 165
    iput-object v5, p0, Lextern/okhttp3/internal/connection/RealConnection;->source:Lextern/okio/BufferedSource;

    goto :goto_0
.end method

.method private connectSocket(II)V
    .locals 6
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v3, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v3}, Lextern/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    .line 180
    .local v2, "proxy":Ljava/net/Proxy;
    iget-object v3, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v3}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v0

    .line 182
    .local v0, "address":Lextern/okhttp3/Address;
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Lextern/okhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lextern/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 186
    iget-object v3, p0, Lextern/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 188
    :try_start_0
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v3

    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v5, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v5}, Lextern/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p1}, Lextern/okhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    iget-object v3, p0, Lextern/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lextern/okio/Okio;->source(Ljava/net/Socket;)Lextern/okio/Source;

    move-result-object v3

    invoke-static {v3}, Lextern/okio/Okio;->buffer(Lextern/okio/Source;)Lextern/okio/BufferedSource;

    move-result-object v3

    iput-object v3, p0, Lextern/okhttp3/internal/connection/RealConnection;->source:Lextern/okio/BufferedSource;

    .line 193
    iget-object v3, p0, Lextern/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lextern/okio/Okio;->sink(Ljava/net/Socket;)Lextern/okio/Sink;

    move-result-object v3

    invoke-static {v3}, Lextern/okio/Okio;->buffer(Lextern/okio/Sink;)Lextern/okio/BufferedSink;

    move-result-object v3

    iput-object v3, p0, Lextern/okhttp3/internal/connection/RealConnection;->sink:Lextern/okio/BufferedSink;

    .line 194
    return-void

    .line 182
    :cond_1
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/net/ConnectException;
    new-instance v3, Ljava/net/ConnectException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v5}, Lextern/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private connectTls(IILextern/okhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 14
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "connectionSpecSelector"    # Lextern/okhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v10, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v10}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v1

    .line 225
    .local v1, "address":Lextern/okhttp3/Address;
    invoke-virtual {v1}, Lextern/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    .line 226
    .local v7, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v8, 0x0

    .line 227
    .local v8, "success":Z
    const/4 v6, 0x0

    .line 230
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    iget-object v10, p0, Lextern/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lextern/okhttp3/HttpUrl;->port()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v7, v10, v11, v12, v13}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v6, v0

    .line 234
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lextern/okhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lextern/okhttp3/ConnectionSpec;

    move-result-object v3

    .line 235
    .local v3, "connectionSpec":Lextern/okhttp3/ConnectionSpec;
    invoke-virtual {v3}, Lextern/okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 236
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v10

    invoke-virtual {v1}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lextern/okhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v6, v11, v12}, Lextern/okhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 241
    :cond_0
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 242
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v10

    invoke-static {v10}, Lextern/okhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lextern/okhttp3/Handshake;

    move-result-object v9

    .line 245
    .local v9, "unverifiedHandshake":Lextern/okhttp3/Handshake;
    invoke-virtual {v1}, Lextern/okhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v10

    invoke-virtual {v1}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 246
    invoke-virtual {v9}, Lextern/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 247
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v10, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Hostname "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not verified:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n    certificate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Lextern/okhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n    DN: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n    subjectAltNames: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Lextern/okhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "connectionSpec":Lextern/okhttp3/ConnectionSpec;
    .end local v9    # "unverifiedHandshake":Lextern/okhttp3/Handshake;
    :catch_0
    move-exception v4

    .line 270
    .local v4, "e":Ljava/lang/AssertionError;
    :try_start_1
    invoke-static {v4}, Lextern/okhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .end local v4    # "e":Ljava/lang/AssertionError;
    :catchall_0
    move-exception v10

    if-eqz v6, :cond_1

    .line 274
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v11

    invoke-virtual {v11, v6}, Lextern/okhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 276
    :cond_1
    if-nez v8, :cond_2

    .line 277
    invoke-static {v6}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_2
    throw v10

    .line 254
    .restart local v3    # "connectionSpec":Lextern/okhttp3/ConnectionSpec;
    .restart local v9    # "unverifiedHandshake":Lextern/okhttp3/Handshake;
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lextern/okhttp3/Address;->certificatePinner()Lextern/okhttp3/CertificatePinner;

    move-result-object v10

    invoke-virtual {v1}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lextern/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lextern/okhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 258
    invoke-virtual {v3}, Lextern/okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v10

    invoke-virtual {v10, v6}, Lextern/okhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "maybeProtocol":Ljava/lang/String;
    :goto_0
    iput-object v6, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 262
    iget-object v10, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v10}, Lextern/okio/Okio;->source(Ljava/net/Socket;)Lextern/okio/Source;

    move-result-object v10

    invoke-static {v10}, Lextern/okio/Okio;->buffer(Lextern/okio/Source;)Lextern/okio/BufferedSource;

    move-result-object v10

    iput-object v10, p0, Lextern/okhttp3/internal/connection/RealConnection;->source:Lextern/okio/BufferedSource;

    .line 263
    iget-object v10, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v10}, Lextern/okio/Okio;->sink(Ljava/net/Socket;)Lextern/okio/Sink;

    move-result-object v10

    invoke-static {v10}, Lextern/okio/Okio;->buffer(Lextern/okio/Sink;)Lextern/okio/BufferedSink;

    move-result-object v10

    iput-object v10, p0, Lextern/okhttp3/internal/connection/RealConnection;->sink:Lextern/okio/BufferedSink;

    .line 264
    iput-object v9, p0, Lextern/okhttp3/internal/connection/RealConnection;->handshake:Lextern/okhttp3/Handshake;

    .line 265
    if-eqz v5, :cond_7

    invoke-static {v5}, Lextern/okhttp3/Protocol;->get(Ljava/lang/String;)Lextern/okhttp3/Protocol;

    move-result-object v10

    :goto_1
    iput-object v10, p0, Lextern/okhttp3/internal/connection/RealConnection;->protocol:Lextern/okhttp3/Protocol;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    const/4 v8, 0x1

    .line 273
    if-eqz v6, :cond_4

    .line 274
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v10

    invoke-virtual {v10, v6}, Lextern/okhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 276
    :cond_4
    if-nez v8, :cond_5

    .line 277
    invoke-static {v6}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 280
    :cond_5
    return-void

    .line 258
    .end local v5    # "maybeProtocol":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0

    .line 265
    .restart local v5    # "maybeProtocol":Ljava/lang/String;
    :cond_7
    :try_start_3
    sget-object v10, Lextern/okhttp3/Protocol;->HTTP_1_1:Lextern/okhttp3/Protocol;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 271
    .end local v3    # "connectionSpec":Lextern/okhttp3/ConnectionSpec;
    .end local v5    # "maybeProtocol":Ljava/lang/String;
    .end local v9    # "unverifiedHandshake":Lextern/okhttp3/Handshake;
    .restart local v4    # "e":Ljava/lang/AssertionError;
    :cond_8
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private createTunnel(IILextern/okhttp3/Request;Lextern/okhttp3/HttpUrl;)Lextern/okhttp3/Request;
    .locals 11
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "tunnelRequest"    # Lextern/okhttp3/Request;
    .param p4, "url"    # Lextern/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CONNECT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p4, v8}, Lextern/okhttp3/internal/Util;->hostHeader(Lextern/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " HTTP/1.1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "requestLine":Ljava/lang/String;
    :cond_0
    new-instance v5, Lextern/okhttp3/internal/http1/Http1Codec;

    iget-object v7, p0, Lextern/okhttp3/internal/connection/RealConnection;->source:Lextern/okio/BufferedSource;

    iget-object v8, p0, Lextern/okhttp3/internal/connection/RealConnection;->sink:Lextern/okio/BufferedSink;

    invoke-direct {v5, v6, v6, v7, v8}, Lextern/okhttp3/internal/http1/Http1Codec;-><init>(Lextern/okhttp3/OkHttpClient;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okio/BufferedSource;Lextern/okio/BufferedSink;)V

    .line 292
    .local v5, "tunnelConnection":Lextern/okhttp3/internal/http1/Http1Codec;
    iget-object v7, p0, Lextern/okhttp3/internal/connection/RealConnection;->source:Lextern/okio/BufferedSource;

    invoke-interface {v7}, Lextern/okio/BufferedSource;->timeout()Lextern/okio/Timeout;

    move-result-object v7

    int-to-long v8, p1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Lextern/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lextern/okio/Timeout;

    .line 293
    iget-object v7, p0, Lextern/okhttp3/internal/connection/RealConnection;->sink:Lextern/okio/BufferedSink;

    invoke-interface {v7}, Lextern/okio/BufferedSink;->timeout()Lextern/okio/Timeout;

    move-result-object v7

    int-to-long v8, p2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Lextern/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lextern/okio/Timeout;

    .line 294
    invoke-virtual {p3}, Lextern/okhttp3/Request;->headers()Lextern/okhttp3/Headers;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Lextern/okhttp3/internal/http1/Http1Codec;->writeRequest(Lextern/okhttp3/Headers;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v5}, Lextern/okhttp3/internal/http1/Http1Codec;->finishRequest()V

    .line 296
    invoke-virtual {v5}, Lextern/okhttp3/internal/http1/Http1Codec;->readResponse()Lextern/okhttp3/Response$Builder;

    move-result-object v7

    invoke-virtual {v7, p3}, Lextern/okhttp3/Response$Builder;->request(Lextern/okhttp3/Request;)Lextern/okhttp3/Response$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lextern/okhttp3/Response$Builder;->build()Lextern/okhttp3/Response;

    move-result-object v4

    .line 299
    .local v4, "response":Lextern/okhttp3/Response;
    invoke-static {v4}, Lextern/okhttp3/internal/http/HttpHeaders;->contentLength(Lextern/okhttp3/Response;)J

    move-result-wide v2

    .line 300
    .local v2, "contentLength":J
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    .line 301
    const-wide/16 v2, 0x0

    .line 303
    :cond_1
    invoke-virtual {v5, v2, v3}, Lextern/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lextern/okio/Source;

    move-result-object v0

    .line 304
    .local v0, "body":Lextern/okio/Source;
    const v7, 0x7fffffff

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v7, v8}, Lextern/okhttp3/internal/Util;->skipAll(Lextern/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 305
    invoke-interface {v0}, Lextern/okio/Source;->close()V

    .line 307
    invoke-virtual {v4}, Lextern/okhttp3/Response;->code()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 328
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected response code for CONNECT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lextern/okhttp3/Response;->code()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 313
    :sswitch_0
    iget-object v7, p0, Lextern/okhttp3/internal/connection/RealConnection;->source:Lextern/okio/BufferedSource;

    invoke-interface {v7}, Lextern/okio/BufferedSource;->buffer()Lextern/okio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lextern/okio/Buffer;->exhausted()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lextern/okhttp3/internal/connection/RealConnection;->sink:Lextern/okio/BufferedSink;

    invoke-interface {v7}, Lextern/okio/BufferedSink;->buffer()Lextern/okio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lextern/okio/Buffer;->exhausted()Z

    move-result v7

    if-nez v7, :cond_4

    .line 314
    :cond_2
    new-instance v6, Ljava/io/IOException;

    const-string v7, "TLS tunnel buffered too many bytes!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 319
    :sswitch_1
    iget-object v7, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v7}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v7

    invoke-virtual {v7}, Lextern/okhttp3/Address;->proxyAuthenticator()Lextern/okhttp3/Authenticator;

    move-result-object v7

    iget-object v8, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-interface {v7, v8, v4}, Lextern/okhttp3/Authenticator;->authenticate(Lextern/okhttp3/Route;Lextern/okhttp3/Response;)Lextern/okhttp3/Request;

    move-result-object p3

    .line 320
    if-nez p3, :cond_3

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Failed to authenticate with proxy"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 322
    :cond_3
    const-string v7, "close"

    const-string v8, "Connection"

    invoke-virtual {v4, v8}, Lextern/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v6, p3

    .line 323
    :cond_4
    return-object v6

    .line 307
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private createTunnelRequest()Lextern/okhttp3/Request;
    .locals 4

    .prologue
    .line 340
    new-instance v0, Lextern/okhttp3/Request$Builder;

    invoke-direct {v0}, Lextern/okhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v1}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lextern/okhttp3/Request$Builder;->url(Lextern/okhttp3/HttpUrl;)Lextern/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Host"

    iget-object v2, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v2}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lextern/okhttp3/internal/Util;->hostHeader(Lextern/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lextern/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lextern/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-static {}, Lextern/okhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lextern/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/Request$Builder;->build()Lextern/okhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method private establishProtocol(IILextern/okhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 6
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "connectionSpecSelector"    # Lextern/okhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 198
    iget-object v1, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v1}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lextern/okhttp3/internal/connection/RealConnection;->connectTls(IILextern/okhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 205
    :goto_0
    iget-object v1, p0, Lextern/okhttp3/internal/connection/RealConnection;->protocol:Lextern/okhttp3/Protocol;

    sget-object v2, Lextern/okhttp3/Protocol;->HTTP_2:Lextern/okhttp3/Protocol;

    if-ne v1, v2, :cond_1

    .line 206
    iget-object v1, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 208
    new-instance v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;

    invoke-direct {v1, v3}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;-><init>(Z)V

    iget-object v2, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v3}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->source:Lextern/okio/BufferedSource;

    iget-object v5, p0, Lextern/okhttp3/internal/connection/RealConnection;->sink:Lextern/okio/BufferedSink;

    invoke-virtual {v1, v2, v3, v4, v5}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lextern/okio/BufferedSource;Lextern/okio/BufferedSink;)Lextern/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->listener(Lextern/okhttp3/internal/http2/Http2Connection$Listener;)Lextern/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->build()Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v0

    .line 212
    .local v0, "http2Connection":Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Connection;->start()V

    .line 215
    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v1

    iput v1, p0, Lextern/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 216
    iput-object v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->http2Connection:Lextern/okhttp3/internal/http2/Http2Connection;

    .line 220
    .end local v0    # "http2Connection":Lextern/okhttp3/internal/http2/Http2Connection;
    :goto_1
    return-void

    .line 201
    :cond_0
    sget-object v1, Lextern/okhttp3/Protocol;->HTTP_1_1:Lextern/okhttp3/Protocol;

    iput-object v1, p0, Lextern/okhttp3/internal/connection/RealConnection;->protocol:Lextern/okhttp3/Protocol;

    .line 202
    iget-object v1, p0, Lextern/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v1, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 218
    :cond_1
    iput v3, p0, Lextern/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 355
    return-void
.end method

.method public connect(IIILjava/util/List;Z)V
    .locals 8
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/ConnectionSpec;>;"
    const/4 v5, 0x0

    .line 92
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->protocol:Lextern/okhttp3/Protocol;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "already connected"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_0
    const/4 v3, 0x0

    .line 95
    .local v3, "routeException":Lextern/okhttp3/internal/connection/RouteException;
    new-instance v0, Lextern/okhttp3/internal/connection/ConnectionSpecSelector;

    invoke-direct {v0, p4}, Lextern/okhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 97
    .local v0, "connectionSpecSelector":Lextern/okhttp3/internal/connection/ConnectionSpecSelector;
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v4}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v4

    invoke-virtual {v4}, Lextern/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    if-nez v4, :cond_2

    .line 98
    sget-object v4, Lextern/okhttp3/ConnectionSpec;->CLEARTEXT:Lextern/okhttp3/ConnectionSpec;

    invoke-interface {p4, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    new-instance v4, Lextern/okhttp3/internal/connection/RouteException;

    new-instance v5, Ljava/net/UnknownServiceException;

    const-string v6, "CLEARTEXT communication not enabled for client"

    invoke-direct {v5, v6}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lextern/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v4

    .line 102
    :cond_1
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v4}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v4

    invoke-virtual {v4}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "host":Ljava/lang/String;
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v4

    invoke-virtual {v4, v2}, Lextern/okhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 104
    new-instance v4, Lextern/okhttp3/internal/connection/RouteException;

    new-instance v5, Ljava/net/UnknownServiceException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLEARTEXT communication to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not permitted by network security policy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lextern/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v4

    .line 109
    .end local v2    # "host":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->protocol:Lextern/okhttp3/Protocol;

    if-nez v4, :cond_6

    .line 111
    :try_start_0
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v4}, Lextern/okhttp3/Route;->requiresTunnel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 112
    invoke-direct {p0, p1, p2, p3, v0}, Lextern/okhttp3/internal/connection/RealConnection;->buildTunneledConnection(IIILextern/okhttp3/internal/connection/ConnectionSpecSelector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v4}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 119
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v4}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 120
    iput-object v5, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 121
    iput-object v5, p0, Lextern/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 122
    iput-object v5, p0, Lextern/okhttp3/internal/connection/RealConnection;->source:Lextern/okio/BufferedSource;

    .line 123
    iput-object v5, p0, Lextern/okhttp3/internal/connection/RealConnection;->sink:Lextern/okio/BufferedSink;

    .line 124
    iput-object v5, p0, Lextern/okhttp3/internal/connection/RealConnection;->handshake:Lextern/okhttp3/Handshake;

    .line 125
    iput-object v5, p0, Lextern/okhttp3/internal/connection/RealConnection;->protocol:Lextern/okhttp3/Protocol;

    .line 127
    if-nez v3, :cond_5

    .line 128
    new-instance v3, Lextern/okhttp3/internal/connection/RouteException;

    .end local v3    # "routeException":Lextern/okhttp3/internal/connection/RouteException;
    invoke-direct {v3, v1}, Lextern/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 133
    .restart local v3    # "routeException":Lextern/okhttp3/internal/connection/RouteException;
    :goto_1
    if-eqz p5, :cond_3

    invoke-virtual {v0, v1}, Lextern/okhttp3/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 134
    :cond_3
    throw v3

    .line 115
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_1
    invoke-direct {p0, p1, p2, p3, v0}, Lextern/okhttp3/internal/connection/RealConnection;->buildConnection(IIILextern/okhttp3/internal/connection/ConnectionSpecSelector;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 130
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_5
    invoke-virtual {v3, v1}, Lextern/okhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    goto :goto_1

    .line 138
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    return-void
.end method

.method public handshake()Lextern/okhttp3/Handshake;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->handshake:Lextern/okhttp3/Handshake;

    return-object v0
.end method

.method public isHealthy(Z)Z
    .locals 6
    .param p1, "doExtensiveChecks"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 363
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 390
    :cond_1
    :goto_0
    return v2

    .line 367
    :cond_2
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->http2Connection:Lextern/okhttp3/internal/http2/Http2Connection;

    if-nez v4, :cond_1

    .line 371
    if-eqz p1, :cond_1

    .line 373
    :try_start_0
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 375
    .local v1, "readTimeout":I
    :try_start_1
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 376
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->source:Lextern/okio/BufferedSource;

    invoke-interface {v4}, Lextern/okio/BufferedSource;->exhausted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 381
    :try_start_2
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    .line 383
    .end local v1    # "readTimeout":I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 381
    .restart local v1    # "readTimeout":I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v4
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 385
    .end local v1    # "readTimeout":I
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v2, v3

    .line 386
    goto :goto_0
.end method

.method public isMultiplexed()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->http2Connection:Lextern/okhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettings(Lextern/okhttp3/internal/http2/Http2Connection;)V
    .locals 1
    .param p1, "connection"    # Lextern/okhttp3/internal/http2/Http2Connection;

    .prologue
    .line 400
    invoke-virtual {p1}, Lextern/okhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v0

    iput v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 401
    return-void
.end method

.method public onStream(Lextern/okhttp3/internal/http2/Http2Stream;)V
    .locals 1
    .param p1, "stream"    # Lextern/okhttp3/internal/http2/Http2Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    sget-object v0, Lextern/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lextern/okhttp3/internal/http2/Http2Stream;->close(Lextern/okhttp3/internal/http2/ErrorCode;)V

    .line 396
    return-void
.end method

.method public protocol()Lextern/okhttp3/Protocol;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->http2Connection:Lextern/okhttp3/internal/http2/Http2Connection;

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->protocol:Lextern/okhttp3/Protocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->protocol:Lextern/okhttp3/Protocol;

    .line 419
    :goto_0
    return-object v0

    .line 417
    :cond_0
    sget-object v0, Lextern/okhttp3/Protocol;->HTTP_1_1:Lextern/okhttp3/Protocol;

    goto :goto_0

    .line 419
    :cond_1
    sget-object v0, Lextern/okhttp3/Protocol;->HTTP_2:Lextern/okhttp3/Protocol;

    goto :goto_0
.end method

.method public route()Lextern/okhttp3/Route;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    return-object v0
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v1}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v1}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v1}, Lextern/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/internal/connection/RealConnection;->route:Lextern/okhttp3/Route;

    invoke-virtual {v1}, Lextern/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->handshake:Lextern/okhttp3/Handshake;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/internal/connection/RealConnection;->handshake:Lextern/okhttp3/Handshake;

    invoke-virtual {v0}, Lextern/okhttp3/Handshake;->cipherSuite()Lextern/okhttp3/CipherSuite;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/internal/connection/RealConnection;->protocol:Lextern/okhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method
