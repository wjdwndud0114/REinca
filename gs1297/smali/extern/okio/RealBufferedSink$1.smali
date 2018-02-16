.class Lextern/okio/RealBufferedSink$1;
.super Ljava/io/OutputStream;
.source "RealBufferedSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okio/RealBufferedSink;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lextern/okio/RealBufferedSink;


# direct methods
.method constructor <init>(Lextern/okio/RealBufferedSink;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lextern/okio/RealBufferedSink$1;->this$0:Lextern/okio/RealBufferedSink;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lextern/okio/RealBufferedSink$1;->this$0:Lextern/okio/RealBufferedSink;

    invoke-virtual {v0}, Lextern/okio/RealBufferedSink;->close()V

    .line 205
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
    .line 198
    iget-object v0, p0, Lextern/okio/RealBufferedSink$1;->this$0:Lextern/okio/RealBufferedSink;

    iget-boolean v0, v0, Lextern/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lextern/okio/RealBufferedSink$1;->this$0:Lextern/okio/RealBufferedSink;

    invoke-virtual {v0}, Lextern/okio/RealBufferedSink;->flush()V

    .line 201
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lextern/okio/RealBufferedSink$1;->this$0:Lextern/okio/RealBufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lextern/okio/RealBufferedSink$1;->this$0:Lextern/okio/RealBufferedSink;

    iget-boolean v0, v0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink$1;->this$0:Lextern/okio/RealBufferedSink;

    iget-object v0, v0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lextern/okio/Buffer;->writeByte(I)Lextern/okio/Buffer;

    .line 187
    iget-object v0, p0, Lextern/okio/RealBufferedSink$1;->this$0:Lextern/okio/RealBufferedSink;

    invoke-virtual {v0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    .line 188
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lextern/okio/RealBufferedSink$1;->this$0:Lextern/okio/RealBufferedSink;

    iget-boolean v0, v0, Lextern/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lextern/okio/RealBufferedSink$1;->this$0:Lextern/okio/RealBufferedSink;

    iget-object v0, v0, Lextern/okio/RealBufferedSink;->buffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lextern/okio/Buffer;->write([BII)Lextern/okio/Buffer;

    .line 193
    iget-object v0, p0, Lextern/okio/RealBufferedSink$1;->this$0:Lextern/okio/RealBufferedSink;

    invoke-virtual {v0}, Lextern/okio/RealBufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    .line 194
    return-void
.end method
