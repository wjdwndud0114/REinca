.class Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;
.super Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedSource"
.end annotation


# static fields
.field private static final NO_CHUNK_YET:J = -0x1L


# instance fields
.field private bytesRemainingInChunk:J

.field private hasMoreChunks:Z

.field final synthetic this$0:Lextern/okhttp3/internal/http1/Http1Codec;

.field private final url:Lextern/okhttp3/HttpUrl;


# direct methods
.method constructor <init>(Lextern/okhttp3/internal/http1/Http1Codec;Lextern/okhttp3/HttpUrl;)V
    .locals 2
    .param p2, "url"    # Lextern/okhttp3/HttpUrl;

    .prologue
    .line 414
    iput-object p1, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lextern/okhttp3/internal/http1/Http1Codec;Lextern/okhttp3/internal/http1/Http1Codec$1;)V

    .line 411
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    .line 415
    iput-object p2, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->url:Lextern/okhttp3/HttpUrl;

    .line 416
    return-void
.end method

.method private readChunkSize()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 439
    iget-wide v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 440
    iget-object v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->source:Lextern/okio/BufferedSource;
    invoke-static {v2}, Lextern/okhttp3/internal/http1/Http1Codec;->access$600(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSource;

    move-result-object v2

    invoke-interface {v2}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 443
    :cond_0
    :try_start_0
    iget-object v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->source:Lextern/okio/BufferedSource;
    invoke-static {v2}, Lextern/okhttp3/internal/http1/Http1Codec;->access$600(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSource;

    move-result-object v2

    invoke-interface {v2}, Lextern/okio/BufferedSource;->readHexadecimalUnsignedLong()J

    move-result-wide v2

    iput-wide v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    .line 444
    iget-object v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->source:Lextern/okio/BufferedSource;
    invoke-static {v2}, Lextern/okhttp3/internal/http1/Http1Codec;->access$600(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSource;

    move-result-object v2

    invoke-interface {v2}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "extensions":Ljava/lang/String;
    iget-wide v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 446
    :cond_1
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected chunk size and optional extensions but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v1    # "extensions":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "extensions":Ljava/lang/String;
    :cond_2
    iget-wide v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    .line 453
    const/4 v2, 0x0

    iput-boolean v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    .line 454
    iget-object v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->client:Lextern/okhttp3/OkHttpClient;
    invoke-static {v2}, Lextern/okhttp3/internal/http1/Http1Codec;->access$900(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lextern/okhttp3/OkHttpClient;->cookieJar()Lextern/okhttp3/CookieJar;

    move-result-object v2

    iget-object v3, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->url:Lextern/okhttp3/HttpUrl;

    iget-object v4, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    invoke-virtual {v4}, Lextern/okhttp3/internal/http1/Http1Codec;->readHeaders()Lextern/okhttp3/Headers;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lextern/okhttp3/internal/http/HttpHeaders;->receiveHeaders(Lextern/okhttp3/CookieJar;Lextern/okhttp3/HttpUrl;Lextern/okhttp3/Headers;)V

    .line 455
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->endOfInput(Z)V

    .line 457
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    iget-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->closed:Z

    if-eqz v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lextern/okhttp3/internal/Util;->discard(Lextern/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->endOfInput(Z)V

    .line 464
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->closed:Z

    goto :goto_0
.end method

.method public read(Lextern/okio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lextern/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v2, -0x1

    .line 419
    cmp-long v4, p2, v6

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    :cond_0
    iget-boolean v4, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->closed:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 421
    :cond_1
    iget-boolean v4, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    if-nez v4, :cond_2

    move-wide v0, v2

    .line 434
    :goto_0
    return-wide v0

    .line 423
    :cond_2
    iget-wide v4, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_4

    .line 424
    :cond_3
    invoke-direct {p0}, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->readChunkSize()V

    .line 425
    iget-boolean v4, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    if-nez v4, :cond_4

    move-wide v0, v2

    goto :goto_0

    .line 428
    :cond_4
    iget-object v4, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->source:Lextern/okio/BufferedSource;
    invoke-static {v4}, Lextern/okhttp3/internal/http1/Http1Codec;->access$600(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSource;

    move-result-object v4

    iget-wide v6, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lextern/okio/BufferedSource;->read(Lextern/okio/Buffer;J)J

    move-result-wide v0

    .line 429
    .local v0, "read":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    .line 430
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->endOfInput(Z)V

    .line 431
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 433
    :cond_5
    iget-wide v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    goto :goto_0
.end method
