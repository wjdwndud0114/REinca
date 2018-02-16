.class final Lextern/okio/RealBufferedSink;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lextern/okio/BufferedSink;


# instance fields
.field public final buffer:Lextern/okio/Buffer;

.field closed:Z

.field public final sink:Lextern/okio/Sink;


# direct methods
.method constructor <init>(Lextern/okio/Sink;)V
    .locals 2
    .param p1, "sink"    # Lextern/okio/Sink;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lextern/okio/Buffer;

    invoke-direct {v0}, Lextern/okio/Buffer;-><init>()V

    iput-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    .line 29
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lextern/okio/RealBufferedSink;->sink:Lextern/okio/Sink;

    .line 31
    return-void
.end method


# virtual methods
.method public buffer()Lextern/okio/Buffer;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-boolean v2, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v1, 0x0

    .line 228
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    iget-object v2, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    iget-wide v2, v2, Lextern/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 229
    iget-object v2, p0, Lextern/okio/RealBufferedSink;->sink:Lextern/okio/Sink;

    iget-object v3, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    iget-object v4, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    iget-wide v4, v4, Lextern/okio/Buffer;->size:J

    invoke-interface {v2, v3, v4, v5}, Lextern/okio/Sink;->write(Lextern/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_2
    :goto_1
    :try_start_1
    iget-object v2, p0, Lextern/okio/RealBufferedSink;->sink:Lextern/okio/Sink;

    invoke-interface {v2}, Lextern/okio/Sink;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    :cond_3
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lextern/okio/RealBufferedSink;->closed:Z

    .line 242
    if-eqz v1, :cond_0

    invoke-static {v1}, Lextern/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_1

    .line 237
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 238
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_2
.end method

.method public emit()Lextern/okio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-boolean v2, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_0
    iget-object v2, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v2}, Lextern/okio/Buffer;->size()J

    move-result-wide v0

    .line 178
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lextern/okio/RealBufferedSink;->sink:Lextern/okio/Sink;

    iget-object v3, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lextern/okio/Sink;->write(Lextern/okio/Buffer;J)V

    .line 179
    :cond_1
    return-object p0
.end method

.method public emitCompleteSegments()Lextern/okio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-boolean v2, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_0
    iget-object v2, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v2}, Lextern/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v0

    .line 171
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lextern/okio/RealBufferedSink;->sink:Lextern/okio/Sink;

    iget-object v3, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lextern/okio/Sink;->write(Lextern/okio/Buffer;J)V

    .line 172
    :cond_1
    return-object p0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    iget-wide v0, v0, Lextern/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 216
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->sink:Lextern/okio/Sink;

    iget-object v1, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    iget-object v2, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    iget-wide v2, v2, Lextern/okio/Buffer;->size:J

    invoke-interface {v0, v1, v2, v3}, Lextern/okio/Sink;->write(Lextern/okio/Buffer;J)V

    .line 218
    :cond_1
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->sink:Lextern/okio/Sink;

    invoke-interface {v0}, Lextern/okio/Sink;->flush()V

    .line 219
    return-void
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lextern/okio/RealBufferedSink$1;

    invoke-direct {v0, p0}, Lextern/okio/RealBufferedSink$1;-><init>(Lextern/okio/RealBufferedSink;)V

    return-object v0
.end method

.method public timeout()Lextern/okio/Timeout;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->sink:Lextern/okio/Sink;

    invoke-interface {v0}, Lextern/okio/Sink;->timeout()Lextern/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lextern/okio/RealBufferedSink;->sink:Lextern/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lextern/okio/ByteString;)Lextern/okio/BufferedSink;
    .locals 2
    .param p1, "byteString"    # Lextern/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1}, Lextern/okio/Buffer;->write(Lextern/okio/ByteString;)Lextern/okio/Buffer;

    .line 47
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public write(Lextern/okio/Source;J)Lextern/okio/BufferedSink;
    .locals 4
    .param p1, "source"    # Lextern/okio/Source;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    .line 106
    iget-object v2, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lextern/okio/Source;->read(Lextern/okio/Buffer;J)J

    move-result-wide v0

    .line 107
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 108
    :cond_0
    sub-long/2addr p2, v0

    .line 109
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    goto :goto_0

    .line 111
    .end local v0    # "read":J
    :cond_1
    return-object p0
.end method

.method public write([B)Lextern/okio/BufferedSink;
    .locals 2
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1}, Lextern/okio/Buffer;->write([B)Lextern/okio/Buffer;

    .line 85
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)Lextern/okio/BufferedSink;
    .locals 2
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lextern/okio/Buffer;->write([BII)Lextern/okio/Buffer;

    .line 91
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

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
    .line 39
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lextern/okio/Buffer;->write(Lextern/okio/Buffer;J)V

    .line 41
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    .line 42
    return-void
.end method

.method public writeAll(Lextern/okio/Source;)J
    .locals 8
    .param p1, "source"    # Lextern/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "source == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_0
    const-wide/16 v2, 0x0

    .line 97
    .local v2, "totalBytesRead":J
    :goto_0
    iget-object v4, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {p1, v4, v6, v7}, Lextern/okio/Source;->read(Lextern/okio/Buffer;J)J

    move-result-wide v0

    .local v0, "readCount":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 98
    add-long/2addr v2, v0

    .line 99
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    goto :goto_0

    .line 101
    :cond_1
    return-wide v2
.end method

.method public writeByte(I)Lextern/okio/BufferedSink;
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1}, Lextern/okio/Buffer;->writeByte(I)Lextern/okio/Buffer;

    .line 117
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeDecimalLong(J)Lextern/okio/BufferedSink;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lextern/okio/Buffer;->writeDecimalLong(J)Lextern/okio/Buffer;

    .line 159
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lextern/okio/BufferedSink;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lextern/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lextern/okio/Buffer;

    .line 165
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lextern/okio/BufferedSink;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1}, Lextern/okio/Buffer;->writeInt(I)Lextern/okio/Buffer;

    .line 135
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLe(I)Lextern/okio/BufferedSink;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1}, Lextern/okio/Buffer;->writeIntLe(I)Lextern/okio/Buffer;

    .line 141
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lextern/okio/BufferedSink;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lextern/okio/Buffer;->writeLong(J)Lextern/okio/Buffer;

    .line 147
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLe(J)Lextern/okio/BufferedSink;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lextern/okio/Buffer;->writeLongLe(J)Lextern/okio/Buffer;

    .line 153
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lextern/okio/BufferedSink;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1}, Lextern/okio/Buffer;->writeShort(I)Lextern/okio/Buffer;

    .line 123
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLe(I)Lextern/okio/BufferedSink;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1}, Lextern/okio/Buffer;->writeShortLe(I)Lextern/okio/Buffer;

    .line 129
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lextern/okio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lextern/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lextern/okio/Buffer;

    .line 79
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lextern/okio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lextern/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lextern/okio/Buffer;

    .line 72
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1}, Lextern/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lextern/okio/Buffer;

    .line 53
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lextern/okio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lextern/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lextern/okio/Buffer;

    .line 60
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lextern/okio/BufferedSink;
    .locals 2
    .param p1, "codePoint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-boolean v0, p0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1}, Lextern/okio/Buffer;->writeUtf8CodePoint(I)Lextern/okio/Buffer;

    .line 66
    invoke-virtual {p0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method
