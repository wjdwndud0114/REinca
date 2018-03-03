.class public final Lextern/okhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/internal/http2/Http2Connection$Listener;,
        Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;,
        Lextern/okhttp3/internal/http2/Http2Connection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final hostname:Ljava/lang/String;

.field private lastGoodStreamId:I

.field private final listener:Lextern/okhttp3/internal/http2/Http2Connection$Listener;

.field private nextPingId:I

.field private nextStreamId:I

.field okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

.field final peerSettings:Lextern/okhttp3/internal/http2/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lextern/okhttp3/internal/http2/Ping;",
            ">;"
        }
    .end annotation
.end field

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field private final pushObserver:Lextern/okhttp3/internal/http2/PushObserver;

.field final readerRunnable:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field private receivedInitialPeerSettings:Z

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lextern/okhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final writer:Lextern/okhttp3/internal/http2/Http2Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 56
    const-class v0, Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lextern/okhttp3/internal/http2/Http2Connection;->$assertionsDisabled:Z

    .line 70
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp FramedConnection"

    invoke-static {v0, v8}, Lextern/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lextern/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_0
    move v0, v2

    .line 56
    goto :goto_0
.end method

.method private constructor <init>(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)V
    .locals 11
    .param p1, "builder"    # Lextern/okhttp3/internal/http2/Http2Connection$Builder;

    .prologue
    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 102
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 111
    new-instance v0, Lextern/okhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lextern/okhttp3/internal/http2/Settings;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

    .line 117
    new-instance v0, Lextern/okhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lextern/okhttp3/internal/http2/Settings;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    .line 119
    iput-boolean v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    .line 775
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 127
    # getter for: Lextern/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lextern/okhttp3/internal/http2/PushObserver;
    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->access$000(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Lextern/okhttp3/internal/http2/PushObserver;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pushObserver:Lextern/okhttp3/internal/http2/PushObserver;

    .line 128
    # getter for: Lextern/okhttp3/internal/http2/Http2Connection$Builder;->client:Z
    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->access$100(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->client:Z

    .line 129
    # getter for: Lextern/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lextern/okhttp3/internal/http2/Http2Connection$Listener;
    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->access$200(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Lextern/okhttp3/internal/http2/Http2Connection$Listener;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->listener:Lextern/okhttp3/internal/http2/Http2Connection$Listener;

    .line 131
    # getter for: Lextern/okhttp3/internal/http2/Http2Connection$Builder;->client:Z
    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->access$100(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 132
    # getter for: Lextern/okhttp3/internal/http2/Http2Connection$Builder;->client:Z
    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->access$100(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 136
    :cond_0
    # getter for: Lextern/okhttp3/internal/http2/Http2Connection$Builder;->client:Z
    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->access$100(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextPingId:I

    .line 142
    # getter for: Lextern/okhttp3/internal/http2/Http2Connection$Builder;->client:Z
    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->access$100(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v1}, Lextern/okhttp3/internal/http2/Settings;->set(II)Lextern/okhttp3/internal/http2/Settings;

    .line 146
    :cond_2
    # getter for: Lextern/okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;
    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->access$300(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    .line 149
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-static {v0, v8}, Lextern/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lextern/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 152
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    const v1, 0xffff

    invoke-virtual {v0, v10, v1}, Lextern/okhttp3/internal/http2/Settings;->set(II)Lextern/okhttp3/internal/http2/Settings;

    .line 153
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lextern/okhttp3/internal/http2/Settings;->set(II)Lextern/okhttp3/internal/http2/Settings;

    .line 154
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 155
    # getter for: Lextern/okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;
    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->access$400(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    .line 156
    new-instance v0, Lextern/okhttp3/internal/http2/Http2Writer;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection$Builder;->sink:Lextern/okio/BufferedSink;
    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->access$500(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Lextern/okio/BufferedSink;

    move-result-object v1

    iget-boolean v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v0, v1, v2}, Lextern/okhttp3/internal/http2/Http2Writer;-><init>(Lextern/okio/BufferedSink;Z)V

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    .line 158
    new-instance v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v1, Lextern/okhttp3/internal/http2/Http2Reader;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection$Builder;->source:Lextern/okio/BufferedSource;
    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->access$600(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)Lextern/okio/BufferedSource;

    move-result-object v2

    iget-boolean v3, p0, Lextern/okhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v1, v2, v3}, Lextern/okhttp3/internal/http2/Http2Reader;-><init>(Lextern/okio/BufferedSource;Z)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Lextern/okhttp3/internal/http2/Http2Reader;Lextern/okhttp3/internal/http2/Http2Connection$1;)V

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->readerRunnable:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 159
    return-void

    :cond_3
    move v0, v1

    .line 131
    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lextern/okhttp3/internal/http2/Http2Connection$Builder;Lextern/okhttp3/internal/http2/Http2Connection$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection$Builder;
    .param p2, "x1"    # Lextern/okhttp3/internal/http2/Http2Connection$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http2/Http2Connection;-><init>(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;

    .prologue
    .line 56
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lextern/okhttp3/internal/http2/Http2Connection;Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;
    .param p1, "x1"    # Lextern/okhttp3/internal/http2/ErrorCode;
    .param p2, "x2"    # Lextern/okhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->close(Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method static synthetic access$1200(Lextern/okhttp3/internal/http2/Http2Connection;I)Z
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lextern/okhttp3/internal/http2/Http2Connection;ILextern/okio/BufferedSource;IZ)V
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lextern/okio/BufferedSource;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lextern/okhttp3/internal/http2/Http2Connection;->pushDataLater(ILextern/okio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic access$1400(Lextern/okhttp3/internal/http2/Http2Connection;ILjava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lextern/okhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1500(Lextern/okhttp3/internal/http2/Http2Connection;)Z
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;

    .prologue
    .line 56
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    return v0
.end method

.method static synthetic access$1502(Lextern/okhttp3/internal/http2/Http2Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    return p1
.end method

.method static synthetic access$1600(Lextern/okhttp3/internal/http2/Http2Connection;)I
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;

    .prologue
    .line 56
    iget v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    return v0
.end method

.method static synthetic access$1602(Lextern/okhttp3/internal/http2/Http2Connection;I)I
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic access$1700(Lextern/okhttp3/internal/http2/Http2Connection;)I
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;

    .prologue
    .line 56
    iget v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    return v0
.end method

.method static synthetic access$1800(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;

    .prologue
    .line 56
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lextern/okhttp3/internal/http2/Http2Connection;)Lextern/okhttp3/internal/http2/Http2Connection$Listener;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;

    .prologue
    .line 56
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->listener:Lextern/okhttp3/internal/http2/Http2Connection$Listener;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lextern/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2100(Lextern/okhttp3/internal/http2/Http2Connection;ILextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lextern/okhttp3/internal/http2/ErrorCode;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->pushResetLater(ILextern/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method static synthetic access$2200(Lextern/okhttp3/internal/http2/Http2Connection;)Z
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;

    .prologue
    .line 56
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    return v0
.end method

.method static synthetic access$2202(Lextern/okhttp3/internal/http2/Http2Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    return p1
.end method

.method static synthetic access$2300(Lextern/okhttp3/internal/http2/Http2Connection;I)Lextern/okhttp3/internal/http2/Ping;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->removePing(I)Lextern/okhttp3/internal/http2/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lextern/okhttp3/internal/http2/Http2Connection;ZIILextern/okhttp3/internal/http2/Ping;)V
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lextern/okhttp3/internal/http2/Ping;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lextern/okhttp3/internal/http2/Http2Connection;->writePingLater(ZIILextern/okhttp3/internal/http2/Ping;)V

    return-void
.end method

.method static synthetic access$2500(Lextern/okhttp3/internal/http2/Http2Connection;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$2600(Lextern/okhttp3/internal/http2/Http2Connection;)Lextern/okhttp3/internal/http2/PushObserver;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;

    .prologue
    .line 56
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pushObserver:Lextern/okhttp3/internal/http2/PushObserver;

    return-object v0
.end method

.method static synthetic access$2700(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;

    .prologue
    .line 56
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lextern/okhttp3/internal/http2/Http2Connection;ZIILextern/okhttp3/internal/http2/Ping;)V
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lextern/okhttp3/internal/http2/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lextern/okhttp3/internal/http2/Http2Connection;->writePing(ZIILextern/okhttp3/internal/http2/Ping;)V

    return-void
.end method

.method private close(Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 12
    .param p1, "connectionCode"    # Lextern/okhttp3/internal/http2/ErrorCode;
    .param p2, "streamCode"    # Lextern/okhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    sget-boolean v10, Lextern/okhttp3/internal/http2/Http2Connection;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 409
    :cond_0
    const/4 v9, 0x0

    .line 411
    .local v9, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown(Lextern/okhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    const/4 v8, 0x0

    .line 417
    .local v8, "streamsToClose":[Lextern/okhttp3/internal/http2/Http2Stream;
    const/4 v6, 0x0

    .line 418
    .local v6, "pingsToCancel":[Lextern/okhttp3/internal/http2/Ping;
    monitor-enter p0

    .line 419
    :try_start_1
    iget-object v10, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 420
    iget-object v10, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    iget-object v11, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    new-array v11, v11, [Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Lextern/okhttp3/internal/http2/Http2Stream;

    move-object v8, v0

    .line 421
    iget-object v10, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 423
    :cond_1
    iget-object v10, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-eqz v10, :cond_2

    .line 424
    iget-object v10, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    iget-object v11, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    new-array v11, v11, [Lextern/okhttp3/internal/http2/Ping;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Lextern/okhttp3/internal/http2/Ping;

    move-object v6, v0

    .line 425
    const/4 v10, 0x0

    iput-object v10, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    .line 427
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    if-eqz v8, :cond_4

    .line 430
    move-object v1, v8

    .local v1, "arr$":[Lextern/okhttp3/internal/http2/Http2Stream;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v7, v1, v3

    .line 432
    .local v7, "stream":Lextern/okhttp3/internal/http2/Http2Stream;
    :try_start_2
    invoke-virtual {v7, p2}, Lextern/okhttp3/internal/http2/Http2Stream;->close(Lextern/okhttp3/internal/http2/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 430
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 412
    .end local v1    # "arr$":[Lextern/okhttp3/internal/http2/Http2Stream;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "pingsToCancel":[Lextern/okhttp3/internal/http2/Ping;
    .end local v7    # "stream":Lextern/okhttp3/internal/http2/Http2Stream;
    .end local v8    # "streamsToClose":[Lextern/okhttp3/internal/http2/Http2Stream;
    :catch_0
    move-exception v2

    .line 413
    .local v2, "e":Ljava/io/IOException;
    move-object v9, v2

    goto :goto_0

    .line 427
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "pingsToCancel":[Lextern/okhttp3/internal/http2/Ping;
    .restart local v8    # "streamsToClose":[Lextern/okhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 433
    .restart local v1    # "arr$":[Lextern/okhttp3/internal/http2/Http2Stream;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v7    # "stream":Lextern/okhttp3/internal/http2/Http2Stream;
    :catch_1
    move-exception v2

    .line 434
    .restart local v2    # "e":Ljava/io/IOException;
    if-eqz v9, :cond_3

    move-object v9, v2

    goto :goto_2

    .line 439
    .end local v1    # "arr$":[Lextern/okhttp3/internal/http2/Http2Stream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "stream":Lextern/okhttp3/internal/http2/Http2Stream;
    :cond_4
    if-eqz v6, :cond_5

    .line 440
    move-object v1, v6

    .local v1, "arr$":[Lextern/okhttp3/internal/http2/Ping;
    array-length v4, v1

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v5, v1, v3

    .line 441
    .local v5, "ping":Lextern/okhttp3/internal/http2/Ping;
    invoke-virtual {v5}, Lextern/okhttp3/internal/http2/Ping;->cancel()V

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 447
    .end local v1    # "arr$":[Lextern/okhttp3/internal/http2/Ping;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "ping":Lextern/okhttp3/internal/http2/Ping;
    :cond_5
    :try_start_4
    iget-object v10, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v10}, Lextern/okhttp3/internal/http2/Http2Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 454
    :cond_6
    :goto_4
    :try_start_5
    iget-object v10, p0, Lextern/okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 459
    :goto_5
    if-eqz v9, :cond_7

    throw v9

    .line 448
    :catch_2
    move-exception v2

    .line 449
    .restart local v2    # "e":Ljava/io/IOException;
    if-nez v9, :cond_6

    move-object v9, v2

    goto :goto_4

    .line 455
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 456
    .restart local v2    # "e":Ljava/io/IOException;
    move-object v9, v2

    goto :goto_5

    .line 460
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    return-void
.end method

.method private newStream(ILjava/util/List;Z)Lextern/okhttp3/internal/http2/Http2Stream;
    .locals 12
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lextern/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    if-nez p3, :cond_0

    const/4 v3, 0x1

    .line 212
    .local v3, "outFinished":Z
    :goto_0
    const/4 v4, 0x0

    .line 217
    .local v4, "inFinished":Z
    iget-object v7, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    monitor-enter v7

    .line 218
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    :try_start_1
    iget-boolean v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v2, :cond_1

    .line 220
    new-instance v2, Ljava/io/IOException;

    const-string v5, "shutdown"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 237
    :catchall_1
    move-exception v2

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 211
    .end local v3    # "outFinished":Z
    .end local v4    # "inFinished":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 222
    .restart local v3    # "outFinished":Z
    .restart local v4    # "inFinished":Z
    :cond_1
    :try_start_3
    iget v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 223
    .local v1, "streamId":I
    iget v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 224
    new-instance v0, Lextern/okhttp3/internal/http2/Http2Stream;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lextern/okhttp3/internal/http2/Http2Stream;-><init>(ILextern/okhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    .line 225
    .local v0, "stream":Lextern/okhttp3/internal/http2/Http2Stream;
    if-eqz p3, :cond_2

    iget-wide v8, p0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_2

    iget-wide v8, v0, Lextern/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_5

    :cond_2
    const/4 v6, 0x1

    .line 226
    .local v6, "flushHeaders":Z
    :goto_1
    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    if-nez p1, :cond_6

    .line 231
    :try_start_4
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2, v3, v1, p1, p2}, Lextern/okhttp3/internal/http2/Http2Writer;->synStream(ZIILjava/util/List;)V

    .line 237
    :goto_2
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 239
    if-eqz v6, :cond_4

    .line 240
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2}, Lextern/okhttp3/internal/http2/Http2Writer;->flush()V

    .line 243
    :cond_4
    return-object v0

    .line 225
    .end local v6    # "flushHeaders":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 232
    .restart local v6    # "flushHeaders":Z
    :cond_6
    :try_start_5
    iget-boolean v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->client:Z

    if-eqz v2, :cond_7

    .line 233
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_7
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2, p1, v1, p2}, Lextern/okhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2
.end method

.method private pushDataLater(ILextern/okio/BufferedSource;IZ)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "source"    # Lextern/okio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    new-instance v5, Lextern/okio/Buffer;

    invoke-direct {v5}, Lextern/okio/Buffer;-><init>()V

    .line 826
    .local v5, "buffer":Lextern/okio/Buffer;
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lextern/okio/BufferedSource;->require(J)V

    .line 827
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lextern/okio/BufferedSource;->read(Lextern/okio/Buffer;J)J

    .line 828
    invoke-virtual {v5}, Lextern/okio/Buffer;->size()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lextern/okio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_0
    iget-object v8, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lextern/okhttp3/internal/http2/Http2Connection$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lextern/okhttp3/internal/http2/Http2Connection$6;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILextern/okio/Buffer;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 843
    return-void
.end method

.method private pushHeadersLater(ILjava/util/List;Z)V
    .locals 8
    .param p1, "streamId"    # I
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 803
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    iget-object v7, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lextern/okhttp3/internal/http2/Http2Connection$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lextern/okhttp3/internal/http2/Http2Connection$5;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 817
    return-void
.end method

.method private pushRequestLater(ILjava/util/List;)V
    .locals 7
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 778
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    monitor-enter p0

    .line 779
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    sget-object v0, Lextern/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lextern/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILextern/okhttp3/internal/http2/ErrorCode;)V

    .line 781
    monitor-exit p0

    .line 799
    :goto_0
    return-void

    .line 783
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 784
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    iget-object v6, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lextern/okhttp3/internal/http2/Http2Connection$4;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lextern/okhttp3/internal/http2/Http2Connection$4;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 784
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private pushResetLater(ILextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lextern/okhttp3/internal/http2/ErrorCode;

    .prologue
    .line 846
    iget-object v6, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lextern/okhttp3/internal/http2/Http2Connection$7;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lextern/okhttp3/internal/http2/Http2Connection$7;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILextern/okhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 854
    return-void
.end method

.method private pushedStream(I)Z
    .locals 1
    .param p1, "streamId"    # I

    .prologue
    .line 771
    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized removePing(I)Lextern/okhttp3/internal/http2/Ping;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/internal/http2/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writePing(ZIILextern/okhttp3/internal/http2/Ping;)V
    .locals 2
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lextern/okhttp3/internal/http2/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    monitor-enter v1

    .line 366
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lextern/okhttp3/internal/http2/Ping;->send()V

    .line 367
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2, p3}, Lextern/okhttp3/internal/http2/Http2Writer;->ping(ZII)V

    .line 368
    monitor-exit v1

    .line 369
    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writePingLater(ZIILextern/okhttp3/internal/http2/Ping;)V
    .locals 9
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lextern/okhttp3/internal/http2/Ping;

    .prologue
    .line 352
    sget-object v8, Lextern/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lextern/okhttp3/internal/http2/Http2Connection$3;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lextern/okhttp3/internal/http2/Http2Connection$3;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ZIILextern/okhttp3/internal/http2/Ping;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 300
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 301
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 302
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    sget-object v0, Lextern/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    sget-object v1, Lextern/okhttp3/internal/http2/ErrorCode;->CANCEL:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, v0, v1}, Lextern/okhttp3/internal/http2/Http2Connection;->close(Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V

    .line 405
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Writer;->flush()V

    .line 377
    return-void
.end method

.method public getProtocol()Lextern/okhttp3/Protocol;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lextern/okhttp3/Protocol;->HTTP_2:Lextern/okhttp3/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lextern/okhttp3/internal/http2/Http2Stream;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/internal/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .locals 2

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lextern/okhttp3/internal/http2/Settings;->getMaxConcurrentStreams(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;Z)Lextern/okhttp3/internal/http2/Http2Stream;
    .locals 1
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lextern/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lextern/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lextern/okhttp3/internal/http2/Ping;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lextern/okhttp3/internal/http2/Ping;

    invoke-direct {v0}, Lextern/okhttp3/internal/http2/Ping;-><init>()V

    .line 337
    .local v0, "ping":Lextern/okhttp3/internal/http2/Ping;
    monitor-enter p0

    .line 338
    :try_start_0
    iget-boolean v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v2, :cond_0

    .line 339
    new-instance v2, Ljava/io/IOException;

    const-string v3, "shutdown"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 341
    :cond_0
    :try_start_1
    iget v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextPingId:I

    .line 342
    .local v1, "pingId":I
    iget v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextPingId:I

    .line 343
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    .line 344
    :cond_1
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-direct {p0, v2, v1, v3, v0}, Lextern/okhttp3/internal/http2/Http2Connection;->writePing(ZIILextern/okhttp3/internal/http2/Ping;)V

    .line 347
    return-object v0
.end method

.method public pushStream(ILjava/util/List;Z)Lextern/okhttp3/internal/http2/Http2Stream;
    .locals 2
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lextern/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->client:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lextern/okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lextern/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized removeStream(I)Lextern/okhttp3/internal/http2/Http2Stream;
    .locals 3
    .param p1, "streamId"    # I

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/internal/http2/Http2Stream;

    .line 179
    .local v0, "stream":Lextern/okhttp3/internal/http2/Http2Stream;
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-object v0

    .line 178
    .end local v0    # "stream":Lextern/okhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSettings(Lextern/okhttp3/internal/http2/Settings;)V
    .locals 3
    .param p1, "settings"    # Lextern/okhttp3/internal/http2/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    monitor-enter v1

    .line 489
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 490
    :try_start_1
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v0, :cond_0

    .line 491
    new-instance v0, Ljava/io/IOException;

    const-string v2, "shutdown"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 496
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 493
    :cond_0
    :try_start_3
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v0, p1}, Lextern/okhttp3/internal/http2/Settings;->merge(Lextern/okhttp3/internal/http2/Settings;)V

    .line 494
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1}, Lextern/okhttp3/internal/http2/Http2Writer;->settings(Lextern/okhttp3/internal/http2/Settings;)V

    .line 495
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 496
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 497
    return-void
.end method

.method public shutdown(Lextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 4
    .param p1, "statusCode"    # Lextern/okhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    monitor-enter v2

    .line 387
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :try_start_1
    iget-boolean v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v1, :cond_0

    .line 389
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    :goto_0
    return-void

    .line 391
    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    .line 392
    iget v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 393
    .local v0, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 395
    :try_start_4
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    sget-object v3, Lextern/okhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v1, v0, p1, v3}, Lextern/okhttp3/internal/http2/Http2Writer;->goAway(ILextern/okhttp3/internal/http2/ErrorCode;[B)V

    .line 396
    monitor-exit v2

    goto :goto_0

    .end local v0    # "lastGoodStreamId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 393
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lextern/okhttp3/internal/http2/Http2Connection;->start(Z)V

    .line 468
    return-void
.end method

.method start(Z)V
    .locals 6
    .param p1, "sendConnectionPreface"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0xffff

    .line 475
    if-eqz p1, :cond_0

    .line 476
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v1}, Lextern/okhttp3/internal/http2/Http2Writer;->connectionPreface()V

    .line 477
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v1, v2}, Lextern/okhttp3/internal/http2/Http2Writer;->settings(Lextern/okhttp3/internal/http2/Settings;)V

    .line 478
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v1}, Lextern/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    .line 479
    .local v0, "windowSize":I
    if-eq v0, v3, :cond_0

    .line 480
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    const/4 v2, 0x0

    sub-int v3, v0, v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lextern/okhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    .line 483
    .end local v0    # "windowSize":I
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->readerRunnable:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 484
    return-void
.end method

.method public writeData(IZLextern/okio/Buffer;J)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lextern/okio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 265
    cmp-long v2, p4, v8

    if-nez v2, :cond_2

    .line 266
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2, p2, p1, p3, v3}, Lextern/okhttp3/internal/http2/Http2Writer;->data(ZILextern/okio/Buffer;I)V

    .line 294
    :cond_0
    return-void

    .line 286
    :cond_1
    :try_start_0
    iget-wide v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 287
    .local v1, "toWrite":I
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2}, Lextern/okhttp3/internal/http2/Http2Writer;->maxDataLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 288
    iget-wide v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 289
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    int-to-long v4, v1

    sub-long/2addr p4, v4

    .line 292
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    if-eqz p2, :cond_4

    cmp-long v2, p4, v8

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2, p1, p3, v1}, Lextern/okhttp3/internal/http2/Http2Writer;->data(ZILextern/okio/Buffer;I)V

    .line 270
    .end local v1    # "toWrite":I
    :cond_2
    cmp-long v2, p4, v8

    if-lez v2, :cond_0

    .line 272
    monitor-enter p0

    .line 274
    :goto_1
    :try_start_1
    iget-wide v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v8

    if-gtz v2, :cond_1

    .line 277
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 278
    new-instance v2, Ljava/io/IOException;

    const-string v3, "stream closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    .line 289
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 280
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .restart local v1    # "toWrite":I
    :cond_4
    move v2, v3

    .line 292
    goto :goto_0
.end method

.method writeSynReply(IZLjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    .local p3, "alternating":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3}, Lextern/okhttp3/internal/http2/Http2Writer;->synReply(ZILjava/util/List;)V

    .line 249
    return-void
.end method

.method writeSynReset(ILextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lextern/okhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2}, Lextern/okhttp3/internal/http2/Http2Writer;->rstStream(ILextern/okhttp3/internal/http2/ErrorCode;)V

    .line 317
    return-void
.end method

.method writeSynResetLater(ILextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lextern/okhttp3/internal/http2/ErrorCode;

    .prologue
    .line 305
    sget-object v6, Lextern/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lextern/okhttp3/internal/http2/Http2Connection$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lextern/okhttp3/internal/http2/Http2Connection$1;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILextern/okhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 313
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .prologue
    .line 320
    sget-object v0, Lextern/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lextern/okhttp3/internal/http2/Http2Connection$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lextern/okhttp3/internal/http2/Http2Connection$2;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method
