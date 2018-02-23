.class Lextern/okhttp3/internal/platform/AndroidPlatform;
.super Lextern/okhttp3/internal/platform/Platform;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/internal/platform/AndroidPlatform$CloseGuard;,
        Lextern/okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;
    }
.end annotation


# static fields
.field private static final MAX_LOG_LENGTH:I = 0xfa0


# instance fields
.field private final closeGuard:Lextern/okhttp3/internal/platform/AndroidPlatform$CloseGuard;

.field private final getAlpnSelectedProtocol:Lextern/okhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lextern/okhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setAlpnProtocols:Lextern/okhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lextern/okhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setHostname:Lextern/okhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lextern/okhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setUseSessionTickets:Lextern/okhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lextern/okhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final sslParametersClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lextern/okhttp3/internal/platform/OptionalMethod;Lextern/okhttp3/internal/platform/OptionalMethod;Lextern/okhttp3/internal/platform/OptionalMethod;Lextern/okhttp3/internal/platform/OptionalMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lextern/okhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lextern/okhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lextern/okhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lextern/okhttp3/internal/platform/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "setUseSessionTickets":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .local p3, "setHostname":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .local p4, "getAlpnSelectedProtocol":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .local p5, "setAlpnProtocols":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    invoke-direct {p0}, Lextern/okhttp3/internal/platform/Platform;-><init>()V

    .line 49
    invoke-static {}, Lextern/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->get()Lextern/okhttp3/internal/platform/AndroidPlatform$CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->closeGuard:Lextern/okhttp3/internal/platform/AndroidPlatform$CloseGuard;

    .line 54
    iput-object p1, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    .line 55
    iput-object p2, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->setUseSessionTickets:Lextern/okhttp3/internal/platform/OptionalMethod;

    .line 56
    iput-object p3, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->setHostname:Lextern/okhttp3/internal/platform/OptionalMethod;

    .line 57
    iput-object p4, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lextern/okhttp3/internal/platform/OptionalMethod;

    .line 58
    iput-object p5, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lextern/okhttp3/internal/platform/OptionalMethod;

    .line 59
    return-void
.end method

.method public static buildIfSupported()Lextern/okhttp3/internal/platform/Platform;
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 189
    :try_start_0
    const-string v0, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 196
    .local v1, "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_1
    new-instance v2, Lextern/okhttp3/internal/platform/OptionalMethod;

    const/4 v0, 0x0

    const-string v10, "setUseSessionTickets"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-direct {v2, v0, v10, v11}, Lextern/okhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 198
    .local v2, "setUseSessionTickets":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    new-instance v3, Lextern/okhttp3/internal/platform/OptionalMethod;

    const/4 v0, 0x0

    const-string v10, "setHostname"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-direct {v3, v0, v10, v11}, Lextern/okhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    .local v3, "setHostname":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    const/4 v4, 0x0

    .line 201
    .local v4, "getAlpnSelectedProtocol":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    const/4 v5, 0x0

    .line 205
    .local v5, "setAlpnProtocols":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    :try_start_2
    const-string v0, "android.net.Network"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 206
    new-instance v7, Lextern/okhttp3/internal/platform/OptionalMethod;

    const-class v0, [B

    const-string v10, "getAlpnSelectedProtocol"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-direct {v7, v0, v10, v11}, Lextern/okhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 207
    .end local v4    # "getAlpnSelectedProtocol":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .local v7, "getAlpnSelectedProtocol":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    :try_start_3
    new-instance v8, Lextern/okhttp3/internal/platform/OptionalMethod;

    const/4 v0, 0x0

    const-string v10, "setAlpnProtocols"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, [B

    aput-object v13, v11, v12

    invoke-direct {v8, v0, v10, v11}, Lextern/okhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v5    # "setAlpnProtocols":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .local v8, "setAlpnProtocols":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    move-object v5, v8

    .end local v8    # "setAlpnProtocols":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v5    # "setAlpnProtocols":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    move-object v4, v7

    .line 211
    .end local v7    # "getAlpnSelectedProtocol":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v4    # "getAlpnSelectedProtocol":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    :goto_1
    :try_start_4
    new-instance v0, Lextern/okhttp3/internal/platform/AndroidPlatform;

    invoke-direct/range {v0 .. v5}, Lextern/okhttp3/internal/platform/AndroidPlatform;-><init>(Ljava/lang/Class;Lextern/okhttp3/internal/platform/OptionalMethod;Lextern/okhttp3/internal/platform/OptionalMethod;Lextern/okhttp3/internal/platform/OptionalMethod;Lextern/okhttp3/internal/platform/OptionalMethod;)V

    .line 217
    .end local v1    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setUseSessionTickets":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .end local v3    # "setHostname":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .end local v4    # "getAlpnSelectedProtocol":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .end local v5    # "setAlpnProtocols":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    :goto_2
    return-object v0

    .line 190
    :catch_0
    move-exception v6

    .line 192
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    const-string v0, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .restart local v1    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 213
    .end local v1    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v0

    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    move-object v0, v9

    .line 217
    goto :goto_2

    .line 208
    .restart local v1    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "setUseSessionTickets":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v3    # "setHostname":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v4    # "getAlpnSelectedProtocol":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v5    # "setAlpnProtocols":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    :catch_2
    move-exception v0

    goto :goto_1

    .end local v4    # "getAlpnSelectedProtocol":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v7    # "getAlpnSelectedProtocol":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    :catch_3
    move-exception v0

    move-object v4, v7

    .end local v7    # "getAlpnSelectedProtocol":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v4    # "getAlpnSelectedProtocol":Lextern/okhttp3/internal/platform/OptionalMethod;, "Lextern/okhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    goto :goto_1
.end method


# virtual methods
.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lextern/okhttp3/internal/tls/CertificateChainCleaner;
    .locals 9
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 173
    :try_start_0
    const-string v5, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 174
    .local v4, "extensionsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljavax/net/ssl/X509TrustManager;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 175
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 176
    .local v3, "extensions":Ljava/lang/Object;
    const-string v5, "checkServerTrusted"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [Ljava/security/cert/X509Certificate;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 178
    .local v0, "checkServerTrusted":Ljava/lang/reflect/Method;
    new-instance v5, Lextern/okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;

    invoke-direct {v5, v3, v0}, Lextern/okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "checkServerTrusted":Ljava/lang/reflect/Method;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "extensions":Ljava/lang/Object;
    .end local v4    # "extensionsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v5

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lextern/okhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lextern/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v5

    goto :goto_0
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Protocol;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 102
    if-eqz p2, :cond_0

    .line 103
    iget-object v1, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->setUseSessionTickets:Lextern/okhttp3/internal/platform/OptionalMethod;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p1, v2}, Lextern/okhttp3/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->setHostname:Lextern/okhttp3/internal/platform/OptionalMethod;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {v1, p1, v2}, Lextern/okhttp3/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    iget-object v1, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lextern/okhttp3/internal/platform/OptionalMethod;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lextern/okhttp3/internal/platform/OptionalMethod;

    invoke-virtual {v1, p1}, Lextern/okhttp3/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p3}, Lextern/okhttp3/internal/platform/AndroidPlatform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v5

    .line 110
    .local v0, "parameters":[Ljava/lang/Object;
    iget-object v1, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lextern/okhttp3/internal/platform/OptionalMethod;

    invoke-virtual {v1, p1, v0}, Lextern/okhttp3/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v0    # "parameters":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lextern/okhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 67
    :cond_0
    throw v0

    .line 68
    .end local v0    # "e":Ljava/lang/AssertionError;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "ioException":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 73
    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v1, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lextern/okhttp3/internal/platform/OptionalMethod;

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v2

    .line 116
    :cond_1
    iget-object v1, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lextern/okhttp3/internal/platform/OptionalMethod;

    invoke-virtual {v1, p1}, Lextern/okhttp3/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lextern/okhttp3/internal/platform/OptionalMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Lextern/okhttp3/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 119
    .local v0, "alpnResult":[B
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lextern/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "closer"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->closeGuard:Lextern/okhttp3/internal/platform/AndroidPlatform$CloseGuard;

    invoke-virtual {v0, p1}, Lextern/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->createAndOpen(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 11
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 152
    :try_start_0
    const-string v7, "android.security.NetworkSecurityPolicy"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 153
    .local v3, "networkPolicyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getInstance"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 154
    .local v1, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 155
    .local v4, "networkSecurityPolicy":Ljava/lang/Object;
    const-string v7, "isCleartextTrafficPermitted"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 157
    .local v2, "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v7

    if-eqz v7, :cond_0

    .line 161
    .end local v1    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v2    # "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    .end local v3    # "networkPolicyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "networkSecurityPolicy":Ljava/lang/Object;
    :goto_0
    return v5

    .restart local v1    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "networkPolicyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "networkSecurityPolicy":Ljava/lang/Object;
    :cond_0
    move v5, v6

    .line 157
    goto :goto_0

    .line 158
    .end local v1    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v2    # "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    .end local v3    # "networkPolicyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "networkSecurityPolicy":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-super {p0, p1}, Lextern/okhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-super {p0, p1}, Lextern/okhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 164
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 166
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x5

    .line 123
    if-ne p1, v3, :cond_2

    .line 124
    .local v3, "logLevel":I
    :goto_0
    if-eqz p3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 127
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 128
    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 129
    .local v4, "newline":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 131
    :cond_1
    :goto_2
    add-int/lit16 v5, v1, 0xfa0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    .local v0, "end":I
    const-string v5, "OkHttp"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 133
    move v1, v0

    .line 134
    if-lt v1, v4, :cond_1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "logLevel":I
    .end local v4    # "newline":I
    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "logLevel":I
    .restart local v4    # "newline":I
    :cond_3
    move v4, v2

    .line 129
    goto :goto_2

    .line 136
    .end local v4    # "newline":I
    :cond_4
    return-void
.end method

.method public logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/Object;

    .prologue
    .line 143
    iget-object v1, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->closeGuard:Lextern/okhttp3/internal/platform/AndroidPlatform$CloseGuard;

    invoke-virtual {v1, p2}, Lextern/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpen(Ljava/lang/Object;)Z

    move-result v0

    .line 144
    .local v0, "reported":Z
    if-nez v0, :cond_0

    .line 146
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lextern/okhttp3/internal/platform/AndroidPlatform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    :cond_0
    return-void
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 7
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 78
    iget-object v4, p0, Lextern/okhttp3/internal/platform/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    const-string v5, "sslParameters"

    invoke-static {p1, v4, v5}, Lextern/okhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "context":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 83
    :try_start_0
    const-string v4, "com.google.android.gms.org.conscrypt.SSLParametersImpl"

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 86
    .local v2, "gmsSslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "sslParameters"

    invoke-static {p1, v2, v4}, Lextern/okhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    .end local v2    # "gmsSslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v4, Ljavax/net/ssl/X509TrustManager;

    const-string v5, "x509TrustManager"

    invoke-static {v0, v4, v5}, Lextern/okhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .line 94
    .local v3, "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    if-eqz v3, :cond_1

    .line 96
    .end local v3    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :goto_0
    return-object v3

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-super {p0, p1}, Lextern/okhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    goto :goto_0

    .line 96
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_1
    const-class v4, Ljavax/net/ssl/X509TrustManager;

    const-string v5, "trustManager"

    invoke-static {v0, v4, v5}, Lextern/okhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    move-object v3, v4

    goto :goto_0
.end method
