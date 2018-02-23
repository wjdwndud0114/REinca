.class final Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;
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
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lextern/okhttp3/internal/http1/Http1Codec;

.field private final timeout:Lextern/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lextern/okhttp3/internal/http1/Http1Codec;J)V
    .locals 2
    .param p2, "bytesRemaining"    # J

    .prologue
    .line 273
    iput-object p1, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Lextern/okio/ForwardingTimeout;

    iget-object v1, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;
    invoke-static {v1}, Lextern/okhttp3/internal/http1/Http1Codec;->access$300(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1}, Lextern/okio/BufferedSink;->timeout()Lextern/okio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lextern/okio/ForwardingTimeout;-><init>(Lextern/okio/Timeout;)V

    iput-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lextern/okio/ForwardingTimeout;

    .line 274
    iput-wide p2, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/internal/http1/Http1Codec;JLextern/okhttp3/internal/http1/Http1Codec$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/internal/http1/Http1Codec;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lextern/okhttp3/internal/http1/Http1Codec$1;

    .prologue
    .line 268
    invoke-direct {p0, p1, p2, p3}, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;-><init>(Lextern/okhttp3/internal/http1/Http1Codec;J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    .line 300
    iget-wide v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_1
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lextern/okio/ForwardingTimeout;

    # invokes: Lextern/okhttp3/internal/http1/Http1Codec;->detachTimeout(Lextern/okio/ForwardingTimeout;)V
    invoke-static {v0, v1}, Lextern/okhttp3/internal/http1/Http1Codec;->access$400(Lextern/okhttp3/internal/http1/Http1Codec;Lextern/okio/ForwardingTimeout;)V

    .line 302
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    const/4 v1, 0x3

    # setter for: Lextern/okhttp3/internal/http1/Http1Codec;->state:I
    invoke-static {v0, v1}, Lextern/okhttp3/internal/http1/Http1Codec;->access$502(Lextern/okhttp3/internal/http1/Http1Codec;I)I

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;
    invoke-static {v0}, Lextern/okhttp3/internal/http1/Http1Codec;->access$300(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lextern/okio/BufferedSink;->flush()V

    goto :goto_0
.end method

.method public timeout()Lextern/okio/Timeout;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lextern/okio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lextern/okio/Buffer;J)V
    .locals 6
    .param p1, "source"    # Lextern/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    invoke-virtual {p1}, Lextern/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 284
    iget-wide v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 285
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->sink:Lextern/okio/BufferedSink;
    invoke-static {v0}, Lextern/okhttp3/internal/http1/Http1Codec;->access$300(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lextern/okio/BufferedSink;->write(Lextern/okio/Buffer;J)V

    .line 289
    iget-wide v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    .line 290
    return-void
.end method
