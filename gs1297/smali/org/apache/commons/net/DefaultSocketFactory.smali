.class public Lorg/apache/commons/net/DefaultSocketFactory;
.super Ljavax/net/SocketFactory;
.source "DefaultSocketFactory.java"


# instance fields
.field private final connProxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/DefaultSocketFactory;-><init>(Ljava/net/Proxy;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 63
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    .line 65
    return-void
.end method


# virtual methods
.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 1
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2}, Ljava/net/ServerSocket;-><init>(II)V

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 1
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "bindAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-object v0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 81
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    goto :goto_0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 99
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 100
    .local v0, "s":Ljava/net/Socket;
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 103
    .end local v0    # "s":Ljava/net/Socket;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 146
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 147
    .local v0, "s":Ljava/net/Socket;
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 148
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 151
    .end local v0    # "s":Ljava/net/Socket;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 120
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 121
    .local v0, "s":Ljava/net/Socket;
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 124
    .end local v0    # "s":Ljava/net/Socket;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 173
    .local v0, "s":Ljava/net/Socket;
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 174
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 177
    .end local v0    # "s":Ljava/net/Socket;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    goto :goto_0
.end method
