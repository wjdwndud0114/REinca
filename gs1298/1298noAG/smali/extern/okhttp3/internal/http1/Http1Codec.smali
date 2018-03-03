.class public final Lextern/okhttp3/internal/http1/Http1Codec;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lextern/okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/internal/http1/Http1Codec$1;,
        Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;,
        Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;,
        Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSource;,
        Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;,
        Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;,
        Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private final client:Lextern/okhttp3/OkHttpClient;

.field private final sink:Lextern/okio/BufferedSink;

.field private final source:Lextern/okio/BufferedSource;

.field private state:I

.field private final streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lextern/okhttp3/OkHttpClient;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okio/BufferedSource;Lextern/okio/BufferedSink;)V
    .locals 1
    .param p1, "client"    # Lextern/okhttp3/OkHttpClient;
    .param p2, "streamAllocation"    # Lextern/okhttp3/internal/connection/StreamAllocation;
    .param p3, "source"    # Lextern/okio/BufferedSource;
    .param p4, "sink"    # Lextern/okio/BufferedSink;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    .line 90
    iput-object p1, p0, Lextern/okhttp3/internal/http1/Http1Codec;->client:Lextern/okhttp3/OkHttpClient;

    .line 91
    iput-object p2, p0, Lextern/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    .line 92
    iput-object p3, p0, Lextern/okhttp3/internal/http1/Http1Codec;->source:Lextern/okio/BufferedSource;

    .line 93
    iput-object p4, p0, Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;

    .line 94
    return-void
.end method

.method static synthetic access$300(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSink;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http1/Http1Codec;

    .prologue
    .line 70
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;

    return-object v0
.end method

.method static synthetic access$400(Lextern/okhttp3/internal/http1/Http1Codec;Lextern/okio/ForwardingTimeout;)V
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http1/Http1Codec;
    .param p1, "x1"    # Lextern/okio/ForwardingTimeout;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http1/Http1Codec;->detachTimeout(Lextern/okio/ForwardingTimeout;)V

    return-void
.end method

.method static synthetic access$500(Lextern/okhttp3/internal/http1/Http1Codec;)I
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http1/Http1Codec;

    .prologue
    .line 70
    iget v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    return v0
.end method

.method static synthetic access$502(Lextern/okhttp3/internal/http1/Http1Codec;I)I
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http1/Http1Codec;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    return p1
.end method

.method static synthetic access$600(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSource;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http1/Http1Codec;

    .prologue
    .line 70
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->source:Lextern/okio/BufferedSource;

    return-object v0
.end method

.method static synthetic access$700(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okhttp3/internal/connection/StreamAllocation;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http1/Http1Codec;

    .prologue
    .line 70
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method

.method static synthetic access$900(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okhttp3/OkHttpClient;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http1/Http1Codec;

    .prologue
    .line 70
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->client:Lextern/okhttp3/OkHttpClient;

    return-object v0
.end method

.method private detachTimeout(Lextern/okio/ForwardingTimeout;)V
    .locals 2
    .param p1, "timeout"    # Lextern/okio/ForwardingTimeout;

    .prologue
    .line 261
    invoke-virtual {p1}, Lextern/okio/ForwardingTimeout;->delegate()Lextern/okio/Timeout;

    move-result-object v0

    .line 262
    .local v0, "oldDelegate":Lextern/okio/Timeout;
    sget-object v1, Lextern/okio/Timeout;->NONE:Lextern/okio/Timeout;

    invoke-virtual {p1, v1}, Lextern/okio/ForwardingTimeout;->setDelegate(Lextern/okio/Timeout;)Lextern/okio/ForwardingTimeout;

    .line 263
    invoke-virtual {v0}, Lextern/okio/Timeout;->clearDeadline()Lextern/okio/Timeout;

    .line 264
    invoke-virtual {v0}, Lextern/okio/Timeout;->clearTimeout()Lextern/okio/Timeout;

    .line 265
    return-void
.end method

.method private getTransferStream(Lextern/okhttp3/Response;)Lextern/okio/Source;
    .locals 4
    .param p1, "response"    # Lextern/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p1}, Lextern/okhttp3/internal/http/HttpHeaders;->hasBody(Lextern/okhttp3/Response;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lextern/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lextern/okio/Source;

    move-result-object v2

    .line 158
    :goto_0
    return-object v2

    .line 146
    :cond_0
    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    invoke-virtual {p1, v3}, Lextern/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-virtual {p1}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lextern/okhttp3/internal/http1/Http1Codec;->newChunkedSource(Lextern/okhttp3/HttpUrl;)Lextern/okio/Source;

    move-result-object v2

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {p1}, Lextern/okhttp3/internal/http/HttpHeaders;->contentLength(Lextern/okhttp3/Response;)J

    move-result-wide v0

    .line 151
    .local v0, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 152
    invoke-virtual {p0, v0, v1}, Lextern/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lextern/okio/Source;

    move-result-object v2

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0}, Lextern/okhttp3/internal/http1/Http1Codec;->newUnknownLengthSource()Lextern/okio/Source;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lextern/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lextern/okhttp3/internal/connection/StreamAllocation;->connection()Lextern/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 113
    .local v0, "connection":Lextern/okhttp3/internal/connection/RealConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lextern/okhttp3/internal/connection/RealConnection;->cancel()V

    .line 114
    :cond_0
    return-void
.end method

.method public createRequestBody(Lextern/okhttp3/Request;J)Lextern/okio/Sink;
    .locals 2
    .param p1, "request"    # Lextern/okhttp3/Request;
    .param p2, "contentLength"    # J

    .prologue
    .line 97
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lextern/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lextern/okhttp3/internal/http1/Http1Codec;->newChunkedSink()Lextern/okio/Sink;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 102
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0, p2, p3}, Lextern/okhttp3/internal/http1/Http1Codec;->newFixedLengthSink(J)Lextern/okio/Sink;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;

    invoke-interface {v0}, Lextern/okio/BufferedSink;->flush()V

    .line 168
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newChunkedSink()Lextern/okio/Sink;
    .locals 3

    .prologue
    .line 224
    iget v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    .line 226
    new-instance v0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;-><init>(Lextern/okhttp3/internal/http1/Http1Codec;Lextern/okhttp3/internal/http1/Http1Codec$1;)V

    return-object v0
.end method

.method public newChunkedSource(Lextern/okhttp3/HttpUrl;)Lextern/okio/Source;
    .locals 3
    .param p1, "url"    # Lextern/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    .line 244
    new-instance v0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;-><init>(Lextern/okhttp3/internal/http1/Http1Codec;Lextern/okhttp3/HttpUrl;)V

    return-object v0
.end method

.method public newFixedLengthSink(J)Lextern/okio/Sink;
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 230
    iget v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    .line 232
    new-instance v0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;-><init>(Lextern/okhttp3/internal/http1/Http1Codec;JLextern/okhttp3/internal/http1/Http1Codec$1;)V

    return-object v0
.end method

.method public newFixedLengthSource(J)Lextern/okio/Source;
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    .line 238
    new-instance v0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSource;-><init>(Lextern/okhttp3/internal/http1/Http1Codec;J)V

    return-object v0
.end method

.method public newUnknownLengthSource()Lextern/okio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    .line 251
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lextern/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 252
    new-instance v0, Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Lextern/okhttp3/internal/http1/Http1Codec;Lextern/okhttp3/internal/http1/Http1Codec$1;)V

    return-object v0
.end method

.method public openResponseBody(Lextern/okhttp3/Response;)Lextern/okhttp3/ResponseBody;
    .locals 4
    .param p1, "response"    # Lextern/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http1/Http1Codec;->getTransferStream(Lextern/okhttp3/Response;)Lextern/okio/Source;

    move-result-object v0

    .line 138
    .local v0, "source":Lextern/okio/Source;
    new-instance v1, Lextern/okhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v2

    invoke-static {v0}, Lextern/okio/Okio;->buffer(Lextern/okio/Source;)Lextern/okio/BufferedSource;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lextern/okhttp3/internal/http/RealResponseBody;-><init>(Lextern/okhttp3/Headers;Lextern/okio/BufferedSource;)V

    return-object v1
.end method

.method public readHeaders()Lextern/okhttp3/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lextern/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lextern/okhttp3/Headers$Builder;-><init>()V

    .line 217
    .local v0, "headers":Lextern/okhttp3/Headers$Builder;
    :goto_0
    iget-object v2, p0, Lextern/okhttp3/internal/http1/Http1Codec;->source:Lextern/okio/BufferedSource;

    invoke-interface {v2}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    sget-object v2, Lextern/okhttp3/internal/Internal;->instance:Lextern/okhttp3/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lextern/okhttp3/internal/Internal;->addLenient(Lextern/okhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v0}, Lextern/okhttp3/Headers$Builder;->build()Lextern/okhttp3/Headers;

    move-result-object v2

    return-object v2
.end method

.method public readResponse()Lextern/okhttp3/Response$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget v4, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 187
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 192
    :cond_0
    :try_start_0
    iget-object v4, p0, Lextern/okhttp3/internal/http1/Http1Codec;->source:Lextern/okio/BufferedSource;

    invoke-interface {v4}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lextern/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lextern/okhttp3/internal/http/StatusLine;

    move-result-object v3

    .line 194
    .local v3, "statusLine":Lextern/okhttp3/internal/http/StatusLine;
    new-instance v4, Lextern/okhttp3/Response$Builder;

    invoke-direct {v4}, Lextern/okhttp3/Response$Builder;-><init>()V

    iget-object v5, v3, Lextern/okhttp3/internal/http/StatusLine;->protocol:Lextern/okhttp3/Protocol;

    invoke-virtual {v4, v5}, Lextern/okhttp3/Response$Builder;->protocol(Lextern/okhttp3/Protocol;)Lextern/okhttp3/Response$Builder;

    move-result-object v4

    iget v5, v3, Lextern/okhttp3/internal/http/StatusLine;->code:I

    invoke-virtual {v4, v5}, Lextern/okhttp3/Response$Builder;->code(I)Lextern/okhttp3/Response$Builder;

    move-result-object v4

    iget-object v5, v3, Lextern/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lextern/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lextern/okhttp3/Response$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lextern/okhttp3/internal/http1/Http1Codec;->readHeaders()Lextern/okhttp3/Headers;

    move-result-object v5

    invoke-virtual {v4, v5}, Lextern/okhttp3/Response$Builder;->headers(Lextern/okhttp3/Headers;)Lextern/okhttp3/Response$Builder;

    move-result-object v2

    .line 200
    .local v2, "responseBuilder":Lextern/okhttp3/Response$Builder;
    iget v4, v3, Lextern/okhttp3/internal/http/StatusLine;->code:I

    const/16 v5, 0x64

    if-eq v4, v5, :cond_0

    .line 201
    const/4 v4, 0x4

    iput v4, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    return-object v2

    .line 205
    .end local v2    # "responseBuilder":Lextern/okhttp3/Response$Builder;
    .end local v3    # "statusLine":Lextern/okhttp3/internal/http/StatusLine;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected end of stream on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lextern/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 209
    throw v1
.end method

.method public readResponseHeaders()Lextern/okhttp3/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lextern/okhttp3/internal/http1/Http1Codec;->readResponse()Lextern/okhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeRequest(Lextern/okhttp3/Headers;Ljava/lang/String;)V
    .locals 5
    .param p1, "headers"    # Lextern/okhttp3/Headers;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget v2, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_0
    iget-object v2, p0, Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;

    invoke-interface {v2, p2}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lextern/okhttp3/Headers;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 175
    iget-object v2, p0, Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;

    invoke-virtual {p1, v0}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v2

    invoke-virtual {p1, v0}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    iget-object v2, p0, Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    .line 181
    const/4 v2, 0x1

    iput v2, p0, Lextern/okhttp3/internal/http1/Http1Codec;->state:I

    .line 182
    return-void
.end method

.method public writeRequestHeaders(Lextern/okhttp3/Request;)V
    .locals 2
    .param p1, "request"    # Lextern/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v1, p0, Lextern/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lextern/okhttp3/internal/connection/StreamAllocation;->connection()Lextern/okhttp3/internal/connection/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/internal/connection/RealConnection;->route()Lextern/okhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    invoke-static {p1, v1}, Lextern/okhttp3/internal/http/RequestLine;->get(Lextern/okhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "requestLine":Ljava/lang/String;
    invoke-virtual {p1}, Lextern/okhttp3/Request;->headers()Lextern/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lextern/okhttp3/internal/http1/Http1Codec;->writeRequest(Lextern/okhttp3/Headers;Ljava/lang/String;)V

    .line 130
    return-void
.end method
