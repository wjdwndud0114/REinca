.class public abstract Lorg/apache/commons/net/SocketClient;
.super Ljava/lang/Object;
.source "SocketClient.java"


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x0

.field public static final NETASCII_EOL:Ljava/lang/String; = "\r\n"

.field private static final __DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

.field private static final __DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;


# instance fields
.field private __commandSupport:Lorg/apache/commons/net/ProtocolCommandSupport;

.field protected _defaultPort_:I

.field protected _input_:Ljava/io/InputStream;

.field protected _output_:Ljava/io/OutputStream;

.field protected _serverSocketFactory_:Ljavax/net/ServerSocketFactory;

.field protected _socketFactory_:Ljavax/net/SocketFactory;

.field protected _socket_:Ljava/net/Socket;

.field protected _timeout_:I

.field private charset:Ljava/nio/charset/Charset;

.field private connProxy:Ljava/net/Proxy;

.field protected connectTimeout:I

.field private receiveBufferSize:I

.field private sendBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    .line 68
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v1, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    .line 103
    iput v0, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    .line 106
    iput v0, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    .line 114
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->charset:Ljava/nio/charset/Charset;

    .line 125
    iput-object v2, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 126
    iput-object v2, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 127
    iput-object v2, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 128
    iput v1, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    .line 129
    iput v1, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    .line 130
    sget-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    .line 131
    sget-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    .line 132
    return-void
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "close"    # Ljava/io/Closeable;

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 332
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private closeQuietly(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 321
    if-eqz p1, :cond_0

    .line 323
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 154
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 155
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 156
    return-void
.end method

.method public addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/commons/net/ProtocolCommandListener;

    .prologue
    .line 757
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    .line 758
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/lang/String;I)V

    .line 297
    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/net/InetAddress;I)V

    .line 204
    return-void
.end method

.method public connect(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 260
    return-void
.end method

.method public connect(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/net/InetAddress;I)V

    .line 278
    return-void
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 175
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 176
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    if-eq v0, v2, :cond_0

    .line 177
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 179
    :cond_0
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    if-eq v0, v2, :cond_1

    .line 180
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 182
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v2, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 183
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 184
    return-void
.end method

.method public connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 3
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 226
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 227
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    if-eq v0, v2, :cond_0

    .line 228
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 230
    :cond_0
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    if-eq v0, v2, :cond_1

    .line 231
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 233
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 234
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v2, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 235
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 236
    return-void
.end method

.method protected createCommandSupport()V
    .locals 1

    .prologue
    .line 800
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->__commandSupport:Lorg/apache/commons/net/ProtocolCommandSupport;

    .line 801
    return-void
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/SocketClient;->closeQuietly(Ljava/net/Socket;)V

    .line 313
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/SocketClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 314
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/SocketClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 315
    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 316
    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 317
    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 318
    return-void
.end method

.method protected fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 791
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :cond_0
    return-void
.end method

.method protected fireReplyReceived(ILjava/lang/String;)V
    .locals 1
    .param p1, "replyCode"    # I
    .param p2, "reply"    # Ljava/lang/String;

    .prologue
    .line 778
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 779
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireReplyReceived(ILjava/lang/String;)V

    .line 781
    :cond_0
    return-void
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->__commandSupport:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    return v0
.end method

.method public getDefaultPort()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    return v0
.end method

.method public getDefaultTimeout()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    return v0
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->connProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method protected getReceiveBufferSize()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method protected getSendBufferSize()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    return v0
.end method

.method public getServerSocketFactory()Ljavax/net/ServerSocketFactory;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    return-object v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 362
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v1

    .line 368
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 374
    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 388
    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    const/4 v1, 0x1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 392
    .local v0, "ioex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/commons/net/ProtocolCommandListener;

    .prologue
    .line 767
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    .line 768
    return-void
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 863
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->charset:Ljava/nio/charset/Charset;

    .line 864
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 728
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    .line 729
    return-void
.end method

.method public setDefaultPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 410
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    .line 411
    return-void
.end method

.method public setDefaultTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 438
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    .line 439
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .param p1, "keepAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 567
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 823
    new-instance v0, Lorg/apache/commons/net/DefaultSocketFactory;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/DefaultSocketFactory;-><init>(Ljava/net/Proxy;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 824
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->connProxy:Ljava/net/Proxy;

    .line 825
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 501
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    .line 502
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 481
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    .line 482
    return-void
.end method

.method public setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V
    .locals 1
    .param p1, "factory"    # Ljavax/net/ServerSocketFactory;

    .prologue
    .line 714
    if-nez p1, :cond_0

    .line 715
    sget-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    goto :goto_0
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 592
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 470
    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .locals 1
    .param p1, "factory"    # Ljavax/net/SocketFactory;

    .prologue
    .line 693
    if-nez p1, :cond_0

    .line 694
    sget-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    .line 701
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->connProxy:Ljava/net/Proxy;

    .line 702
    return-void

    .line 696
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    goto :goto_0
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 536
    return-void
.end method

.method public verifyRemote(Ljava/net/Socket;)Z
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 675
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 676
    .local v0, "host1":Ljava/net/InetAddress;
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 678
    .local v1, "host2":Ljava/net/InetAddress;
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
