.class public final Lextern/okhttp3/internal/connection/RouteSelector;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field private final address:Lextern/okhttp3/Address;

.field private inetSocketAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private lastInetSocketAddress:Ljava/net/InetSocketAddress;

.field private lastProxy:Ljava/net/Proxy;

.field private nextInetSocketAddressIndex:I

.field private nextProxyIndex:I

.field private final postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Route;",
            ">;"
        }
    .end annotation
.end field

.field private proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final routeDatabase:Lextern/okhttp3/internal/connection/RouteDatabase;


# direct methods
.method public constructor <init>(Lextern/okhttp3/Address;Lextern/okhttp3/internal/connection/RouteDatabase;)V
    .locals 2
    .param p1, "address"    # Lextern/okhttp3/Address;
    .param p2, "routeDatabase"    # Lextern/okhttp3/internal/connection/RouteDatabase;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->address:Lextern/okhttp3/Address;

    .line 58
    iput-object p2, p0, Lextern/okhttp3/internal/connection/RouteSelector;->routeDatabase:Lextern/okhttp3/internal/connection/RouteDatabase;

    .line 60
    invoke-virtual {p1}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p1}, Lextern/okhttp3/Address;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lextern/okhttp3/internal/connection/RouteSelector;->resetNextProxy(Lextern/okhttp3/HttpUrl;Ljava/net/Proxy;)V

    .line 61
    return-void
.end method

.method static getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "socketAddress"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 189
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 190
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 198
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private hasNextInetSocketAddress()Z
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lextern/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    iget-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextPostponed()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lextern/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextProxy()Z
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lextern/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    iget-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0}, Lextern/okhttp3/internal/connection/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lextern/okhttp3/internal/connection/RouteSelector;->address:Lextern/okhttp3/Address;

    invoke-virtual {v2}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lextern/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    iget v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lextern/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method private nextPostponed()Lextern/okhttp3/Route;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lextern/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/Route;

    return-object v0
.end method

.method private nextProxy()Ljava/net/Proxy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Lextern/okhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No route to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lextern/okhttp3/internal/connection/RouteSelector;->address:Lextern/okhttp3/Address;

    invoke-virtual {v3}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; exhausted proxy configurations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lextern/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    iget-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    iget v2, p0, Lextern/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lextern/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 139
    .local v0, "result":Ljava/net/Proxy;
    invoke-direct {p0, v0}, Lextern/okhttp3/internal/connection/RouteSelector;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    .line 140
    return-object v0
.end method

.method private resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .locals 11
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lextern/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 150
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v8, v9, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_2

    .line 151
    :cond_0
    iget-object v8, p0, Lextern/okhttp3/internal/connection/RouteSelector;->address:Lextern/okhttp3/Address;

    invoke-virtual {v8}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "socketHost":Ljava/lang/String;
    iget-object v8, p0, Lextern/okhttp3/internal/connection/RouteSelector;->address:Lextern/okhttp3/Address;

    invoke-virtual {v8}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lextern/okhttp3/HttpUrl;->port()I

    move-result v7

    .line 164
    .local v7, "socketPort":I
    :goto_0
    const/4 v8, 0x1

    if-lt v7, v8, :cond_1

    const v8, 0xffff

    if-le v7, v8, :cond_4

    .line 165
    :cond_1
    new-instance v8, Ljava/net/SocketException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No route to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; port is out of range"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 154
    .end local v6    # "socketHost":Ljava/lang/String;
    .end local v7    # "socketPort":I
    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    .line 155
    .local v3, "proxyAddress":Ljava/net/SocketAddress;
    instance-of v8, v3, Ljava/net/InetSocketAddress;

    if-nez v8, :cond_3

    .line 156
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    move-object v4, v3

    .line 159
    check-cast v4, Ljava/net/InetSocketAddress;

    .line 160
    .local v4, "proxySocketAddress":Ljava/net/InetSocketAddress;
    invoke-static {v4}, Lextern/okhttp3/internal/connection/RouteSelector;->getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v6

    .line 161
    .restart local v6    # "socketHost":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .restart local v7    # "socketPort":I
    goto :goto_0

    .line 169
    .end local v3    # "proxyAddress":Ljava/net/SocketAddress;
    .end local v4    # "proxySocketAddress":Ljava/net/InetSocketAddress;
    :cond_4
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_6

    .line 170
    iget-object v8, p0, Lextern/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_5
    const/4 v8, 0x0

    iput v8, p0, Lextern/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    .line 181
    return-void

    .line 173
    :cond_6
    iget-object v8, p0, Lextern/okhttp3/internal/connection/RouteSelector;->address:Lextern/okhttp3/Address;

    invoke-virtual {v8}, Lextern/okhttp3/Address;->dns()Lextern/okhttp3/Dns;

    move-result-object v8

    invoke-interface {v8, v6}, Lextern/okhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v1, v5, :cond_5

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 176
    .local v2, "inetAddress":Ljava/net/InetAddress;
    iget-object v8, p0, Lextern/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v2, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private resetNextProxy(Lextern/okhttp3/HttpUrl;Ljava/net/Proxy;)V
    .locals 3
    .param p1, "url"    # Lextern/okhttp3/HttpUrl;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 111
    if-eqz p2, :cond_0

    .line 113
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    .line 124
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    .line 125
    return-void

    .line 117
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    .line 118
    iget-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->address:Lextern/okhttp3/Address;

    invoke-virtual {v1}, Lextern/okhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v1

    invoke-virtual {p1}, Lextern/okhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "selectedProxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    :cond_1
    iget-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 122
    iget-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public connectFailed(Lextern/okhttp3/Route;Ljava/io/IOException;)V
    .locals 3
    .param p1, "failedRoute"    # Lextern/okhttp3/Route;
    .param p2, "failure"    # Ljava/io/IOException;

    .prologue
    .line 100
    invoke-virtual {p1}, Lextern/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lextern/okhttp3/internal/connection/RouteSelector;->address:Lextern/okhttp3/Address;

    invoke-virtual {v0}, Lextern/okhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lextern/okhttp3/internal/connection/RouteSelector;->address:Lextern/okhttp3/Address;

    invoke-virtual {v0}, Lextern/okhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->address:Lextern/okhttp3/Address;

    invoke-virtual {v1}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lextern/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/connection/RouteSelector;->routeDatabase:Lextern/okhttp3/internal/connection/RouteDatabase;

    invoke-virtual {v0, p1}, Lextern/okhttp3/internal/connection/RouteDatabase;->failed(Lextern/okhttp3/Route;)V

    .line 107
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lextern/okhttp3/internal/connection/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lextern/okhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lextern/okhttp3/internal/connection/RouteSelector;->hasNextPostponed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lextern/okhttp3/Route;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lextern/okhttp3/internal/connection/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v1

    if-nez v1, :cond_3

    .line 75
    invoke-direct {p0}, Lextern/okhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    invoke-direct {p0}, Lextern/okhttp3/internal/connection/RouteSelector;->hasNextPostponed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 79
    :cond_0
    invoke-direct {p0}, Lextern/okhttp3/internal/connection/RouteSelector;->nextPostponed()Lextern/okhttp3/Route;

    move-result-object v0

    .line 92
    :cond_1
    :goto_0
    return-object v0

    .line 81
    :cond_2
    invoke-direct {p0}, Lextern/okhttp3/internal/connection/RouteSelector;->nextProxy()Ljava/net/Proxy;

    move-result-object v1

    iput-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->lastProxy:Ljava/net/Proxy;

    .line 83
    :cond_3
    invoke-direct {p0}, Lextern/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 85
    new-instance v0, Lextern/okhttp3/Route;

    iget-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->address:Lextern/okhttp3/Address;

    iget-object v2, p0, Lextern/okhttp3/internal/connection/RouteSelector;->lastProxy:Ljava/net/Proxy;

    iget-object v3, p0, Lextern/okhttp3/internal/connection/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, Lextern/okhttp3/Route;-><init>(Lextern/okhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 86
    .local v0, "route":Lextern/okhttp3/Route;
    iget-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->routeDatabase:Lextern/okhttp3/internal/connection/RouteDatabase;

    invoke-virtual {v1, v0}, Lextern/okhttp3/internal/connection/RouteDatabase;->shouldPostpone(Lextern/okhttp3/Route;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lextern/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lextern/okhttp3/internal/connection/RouteSelector;->next()Lextern/okhttp3/Route;

    move-result-object v0

    goto :goto_0
.end method
