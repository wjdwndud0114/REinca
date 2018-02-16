.class final Lextern/okhttp3/OkHttpClient$1;
.super Lextern/okhttp3/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lextern/okhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lextern/okhttp3/Headers$Builder;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lextern/okhttp3/Headers$Builder;
    .param p2, "line"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-virtual {p1, p2}, Lextern/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 130
    return-void
.end method

.method public addLenient(Lextern/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lextern/okhttp3/Headers$Builder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-virtual {p1, p2, p3}, Lextern/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 134
    return-void
.end method

.method public apply(Lextern/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0
    .param p1, "tlsConfiguration"    # Lextern/okhttp3/ConnectionSpec;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "isFallback"    # Z

    .prologue
    .line 164
    invoke-virtual {p1, p2, p3}, Lextern/okhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    .line 165
    return-void
.end method

.method public callEngineGetStreamAllocation(Lextern/okhttp3/Call;)Lextern/okhttp3/internal/connection/StreamAllocation;
    .locals 1
    .param p1, "call"    # Lextern/okhttp3/Call;

    .prologue
    .line 159
    check-cast p1, Lextern/okhttp3/RealCall;

    .end local p1    # "call":Lextern/okhttp3/Call;
    invoke-virtual {p1}, Lextern/okhttp3/RealCall;->streamAllocation()Lextern/okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method public connectionBecameIdle(Lextern/okhttp3/ConnectionPool;Lextern/okhttp3/internal/connection/RealConnection;)Z
    .locals 1
    .param p1, "pool"    # Lextern/okhttp3/ConnectionPool;
    .param p2, "connection"    # Lextern/okhttp3/internal/connection/RealConnection;

    .prologue
    .line 142
    invoke-virtual {p1, p2}, Lextern/okhttp3/ConnectionPool;->connectionBecameIdle(Lextern/okhttp3/internal/connection/RealConnection;)Z

    move-result v0

    return v0
.end method

.method public get(Lextern/okhttp3/ConnectionPool;Lextern/okhttp3/Address;Lextern/okhttp3/internal/connection/StreamAllocation;)Lextern/okhttp3/internal/connection/RealConnection;
    .locals 1
    .param p1, "pool"    # Lextern/okhttp3/ConnectionPool;
    .param p2, "address"    # Lextern/okhttp3/Address;
    .param p3, "streamAllocation"    # Lextern/okhttp3/internal/connection/StreamAllocation;

    .prologue
    .line 147
    invoke-virtual {p1, p2, p3}, Lextern/okhttp3/ConnectionPool;->get(Lextern/okhttp3/Address;Lextern/okhttp3/internal/connection/StreamAllocation;)Lextern/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Lextern/okhttp3/HttpUrl;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p1}, Lextern/okhttp3/HttpUrl;->getChecked(Ljava/lang/String;)Lextern/okhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public put(Lextern/okhttp3/ConnectionPool;Lextern/okhttp3/internal/connection/RealConnection;)V
    .locals 0
    .param p1, "pool"    # Lextern/okhttp3/ConnectionPool;
    .param p2, "connection"    # Lextern/okhttp3/internal/connection/RealConnection;

    .prologue
    .line 151
    invoke-virtual {p1, p2}, Lextern/okhttp3/ConnectionPool;->put(Lextern/okhttp3/internal/connection/RealConnection;)V

    .line 152
    return-void
.end method

.method public routeDatabase(Lextern/okhttp3/ConnectionPool;)Lextern/okhttp3/internal/connection/RouteDatabase;
    .locals 1
    .param p1, "connectionPool"    # Lextern/okhttp3/ConnectionPool;

    .prologue
    .line 155
    iget-object v0, p1, Lextern/okhttp3/ConnectionPool;->routeDatabase:Lextern/okhttp3/internal/connection/RouteDatabase;

    return-object v0
.end method

.method public setCache(Lextern/okhttp3/OkHttpClient$Builder;Lextern/okhttp3/internal/cache/InternalCache;)V
    .locals 0
    .param p1, "builder"    # Lextern/okhttp3/OkHttpClient$Builder;
    .param p2, "internalCache"    # Lextern/okhttp3/internal/cache/InternalCache;

    .prologue
    .line 137
    invoke-virtual {p1, p2}, Lextern/okhttp3/OkHttpClient$Builder;->setInternalCache(Lextern/okhttp3/internal/cache/InternalCache;)V

    .line 138
    return-void
.end method

.method public setCallWebSocket(Lextern/okhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lextern/okhttp3/Call;

    .prologue
    .line 173
    check-cast p1, Lextern/okhttp3/RealCall;

    .end local p1    # "call":Lextern/okhttp3/Call;
    invoke-virtual {p1}, Lextern/okhttp3/RealCall;->setForWebSocket()V

    .line 174
    return-void
.end method
