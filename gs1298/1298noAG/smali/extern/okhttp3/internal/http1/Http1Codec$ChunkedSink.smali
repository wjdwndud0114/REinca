.class final Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lextern/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChunkedSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lextern/okhttp3/internal/http1/Http1Codec;

.field private final timeout:Lextern/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lextern/okhttp3/internal/http1/Http1Codec;)V
    .locals 2

    .prologue
    .line 310
    iput-object p1, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Lextern/okio/ForwardingTimeout;

    iget-object v1, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;
    invoke-static {v1}, Lextern/okhttp3/internal/http1/Http1Codec;->access$300(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1}, Lextern/okio/BufferedSink;->timeout()Lextern/okio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lextern/okio/ForwardingTimeout;-><init>(Lextern/okio/Timeout;)V

    iput-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lextern/okio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/internal/http1/Http1Codec;Lextern/okhttp3/internal/http1/Http1Codec$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/internal/http1/Http1Codec;
    .param p2, "x1"    # Lextern/okhttp3/internal/http1/Http1Codec$1;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;-><init>(Lextern/okhttp3/internal/http1/Http1Codec;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 339
    :goto_0
    monitor-exit p0

    return-void

    .line 335
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    .line 336
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;
    invoke-static {v0}, Lextern/okhttp3/internal/http1/Http1Codec;->access$300(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSink;

    move-result-object v0

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    .line 337
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lextern/okio/ForwardingTimeout;

    # invokes: Lextern/okhttp3/internal/http1/Http1Codec;->detachTimeout(Lextern/okio/ForwardingTimeout;)V
    invoke-static {v0, v1}, Lextern/okhttp3/internal/http1/Http1Codec;->access$400(Lextern/okhttp3/internal/http1/Http1Codec;Lextern/okio/ForwardingTimeout;)V

    .line 338
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    const/4 v1, 0x3

    # setter for: Lextern/okhttp3/internal/http1/Http1Codec;->state:I
    invoke-static {v0, v1}, Lextern/okhttp3/internal/http1/Http1Codec;->access$502(Lextern/okhttp3/internal/http1/Http1Codec;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    monitor-exit p0

    return-void

    .line 330
    :cond_0
    :try_start_1
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;
    invoke-static {v0}, Lextern/okhttp3/internal/http1/Http1Codec;->access$300(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lextern/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lextern/okio/Timeout;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lextern/okio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lextern/okio/Buffer;J)V
    .locals 2
    .param p1, "source"    # Lextern/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    iget-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 326
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;
    invoke-static {v0}, Lextern/okhttp3/internal/http1/Http1Codec;->access$300(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lextern/okio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lextern/okio/BufferedSink;

    .line 323
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;
    invoke-static {v0}, Lextern/okhttp3/internal/http1/Http1Codec;->access$300(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    .line 324
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;
    invoke-static {v0}, Lextern/okhttp3/internal/http1/Http1Codec;->access$300(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lextern/okio/BufferedSink;->write(Lextern/okio/Buffer;J)V

    .line 325
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;
    invoke-static {v0}, Lextern/okhttp3/internal/http1/Http1Codec;->access$300(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    goto :goto_0
.end method
