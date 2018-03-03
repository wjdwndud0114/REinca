.class final Lextern/okio/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lextern/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okio/Okio;->sink(Ljava/io/OutputStream;Lextern/okio/Timeout;)Lextern/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lextern/okio/Timeout;


# direct methods
.method constructor <init>(Lextern/okio/Timeout;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lextern/okio/Okio$1;->val$timeout:Lextern/okio/Timeout;

    iput-object p2, p0, Lextern/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 92
    iget-object v0, p0, Lextern/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 93
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
    .line 88
    iget-object v0, p0, Lextern/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 89
    return-void
.end method

.method public timeout()Lextern/okio/Timeout;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lextern/okio/Okio$1;->val$timeout:Lextern/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lextern/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lextern/okio/Buffer;J)V
    .locals 8
    .param p1, "source"    # Lextern/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 69
    iget-wide v0, p1, Lextern/okio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lextern/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 70
    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 71
    iget-object v0, p0, Lextern/okio/Okio$1;->val$timeout:Lextern/okio/Timeout;

    invoke-virtual {v0}, Lextern/okio/Timeout;->throwIfReached()V

    .line 72
    iget-object v6, p1, Lextern/okio/Buffer;->head:Lextern/okio/Segment;

    .line 73
    .local v6, "head":Lextern/okio/Segment;
    iget v0, v6, Lextern/okio/Segment;->limit:I

    iget v1, v6, Lextern/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 74
    .local v7, "toCopy":I
    iget-object v0, p0, Lextern/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    iget-object v1, v6, Lextern/okio/Segment;->data:[B

    iget v4, v6, Lextern/okio/Segment;->pos:I

    invoke-virtual {v0, v1, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 76
    iget v0, v6, Lextern/okio/Segment;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lextern/okio/Segment;->pos:I

    .line 77
    int-to-long v0, v7

    sub-long/2addr p2, v0

    .line 78
    iget-wide v0, p1, Lextern/okio/Buffer;->size:J

    int-to-long v4, v7

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lextern/okio/Buffer;->size:J

    .line 80
    iget v0, v6, Lextern/okio/Segment;->pos:I

    iget v1, v6, Lextern/okio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {v6}, Lextern/okio/Segment;->pop()Lextern/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Lextern/okio/Buffer;->head:Lextern/okio/Segment;

    .line 82
    invoke-static {v6}, Lextern/okio/SegmentPool;->recycle(Lextern/okio/Segment;)V

    goto :goto_0

    .line 85
    .end local v6    # "head":Lextern/okio/Segment;
    .end local v7    # "toCopy":I
    :cond_1
    return-void
.end method
