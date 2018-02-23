.class public Lextern/okhttp3/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private client:Z

.field private hostname:Ljava/lang/String;

.field private listener:Lextern/okhttp3/internal/http2/Http2Connection$Listener;

.field private pushObserver:Lextern/okhttp3/internal/http2/PushObserver;

.field private sink:Lextern/okio/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Lextern/okio/BufferedSource;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "client"    # Z

    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    sget-object v0, Lextern/okhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lextern/okhttp3/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lextern/okhttp3/internal/http2/Http2Connection$Listener;

    .line 505
    sget-object v0, Lextern/okhttp3/internal/http2/PushObserver;->CANCEL:Lextern/okhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lextern/okhttp3/internal/http2/PushObserver;

    .line 513
    iput-boolean p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    .line 514
    return-void
.end method

.method static synthetic access$000(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Lextern/okhttp3/internal/http2/PushObserver;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection$Builder;

    .prologue
    .line 499
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lextern/okhttp3/internal/http2/PushObserver;

    return-object v0
.end method

.method static synthetic access$100(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection$Builder;

    .prologue
    .line 499
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    return v0
.end method

.method static synthetic access$200(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Lextern/okhttp3/internal/http2/Http2Connection$Listener;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection$Builder;

    .prologue
    .line 499
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lextern/okhttp3/internal/http2/Http2Connection$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection$Builder;

    .prologue
    .line 499
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection$Builder;

    .prologue
    .line 499
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$500(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Lextern/okio/BufferedSink;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection$Builder;

    .prologue
    .line 499
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->sink:Lextern/okio/BufferedSink;

    return-object v0
.end method

.method static synthetic access$600(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Lextern/okio/BufferedSource;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection$Builder;

    .prologue
    .line 499
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->source:Lextern/okio/BufferedSource;

    return-object v0
.end method


# virtual methods
.method public build()Lextern/okhttp3/internal/http2/Http2Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    new-instance v0, Lextern/okhttp3/internal/http2/Http2Connection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lextern/okhttp3/internal/http2/Http2Connection;-><init>(Lextern/okhttp3/internal/http2/Http2Connection$Builder;Lextern/okhttp3/internal/http2/Http2Connection$1;)V

    return-object v0
.end method

.method public listener(Lextern/okhttp3/internal/http2/Http2Connection$Listener;)Lextern/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "listener"    # Lextern/okhttp3/internal/http2/Http2Connection$Listener;

    .prologue
    .line 531
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lextern/okhttp3/internal/http2/Http2Connection$Listener;

    .line 532
    return-object p0
.end method

.method public pushObserver(Lextern/okhttp3/internal/http2/PushObserver;)Lextern/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "pushObserver"    # Lextern/okhttp3/internal/http2/PushObserver;

    .prologue
    .line 536
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lextern/okhttp3/internal/http2/PushObserver;

    .line 537
    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lextern/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lextern/okio/Okio;->source(Ljava/net/Socket;)Lextern/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lextern/okio/Okio;->buffer(Lextern/okio/Source;)Lextern/okio/BufferedSource;

    move-result-object v1

    invoke-static {p1}, Lextern/okio/Okio;->sink(Ljava/net/Socket;)Lextern/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lextern/okio/Okio;->buffer(Lextern/okio/Sink;)Lextern/okio/BufferedSink;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lextern/okio/BufferedSource;Lextern/okio/BufferedSink;)Lextern/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lextern/okio/BufferedSource;Lextern/okio/BufferedSink;)Lextern/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "source"    # Lextern/okio/BufferedSource;
    .param p4, "sink"    # Lextern/okio/BufferedSink;

    .prologue
    .line 523
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    .line 524
    iput-object p2, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    .line 525
    iput-object p3, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->source:Lextern/okio/BufferedSource;

    .line 526
    iput-object p4, p0, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->sink:Lextern/okio/BufferedSink;

    .line 527
    return-object p0
.end method
