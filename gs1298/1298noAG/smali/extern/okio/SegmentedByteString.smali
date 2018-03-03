.class final Lextern/okio/SegmentedByteString;
.super Lextern/okio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field final transient directory:[I

.field final transient segments:[[B


# direct methods
.method constructor <init>(Lextern/okio/Buffer;I)V
    .locals 9
    .param p1, "buffer"    # Lextern/okio/Buffer;
    .param p2, "byteCount"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lextern/okio/ByteString;-><init>([B)V

    .line 57
    iget-wide v0, p1, Lextern/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lextern/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 60
    const/4 v6, 0x0

    .line 61
    .local v6, "offset":I
    const/4 v8, 0x0

    .line 62
    .local v8, "segmentCount":I
    iget-object v7, p1, Lextern/okio/Buffer;->head:Lextern/okio/Segment;

    .local v7, "s":Lextern/okio/Segment;
    :goto_0
    if-ge v6, p2, :cond_1

    .line 63
    iget v0, v7, Lextern/okio/Segment;->limit:I

    iget v1, v7, Lextern/okio/Segment;->pos:I

    if-ne v0, v1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "s.limit == s.pos"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 66
    :cond_0
    iget v0, v7, Lextern/okio/Segment;->limit:I

    iget v1, v7, Lextern/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 67
    add-int/lit8 v8, v8, 0x1

    .line 62
    iget-object v7, v7, Lextern/okio/Segment;->next:Lextern/okio/Segment;

    goto :goto_0

    .line 71
    :cond_1
    new-array v0, v8, [[B

    iput-object v0, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    .line 72
    mul-int/lit8 v0, v8, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lextern/okio/SegmentedByteString;->directory:[I

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    iget-object v7, p1, Lextern/okio/Buffer;->head:Lextern/okio/Segment;

    :goto_1
    if-ge v6, p2, :cond_3

    .line 76
    iget-object v0, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    iget-object v1, v7, Lextern/okio/Segment;->data:[B

    aput-object v1, v0, v8

    .line 77
    iget v0, v7, Lextern/okio/Segment;->limit:I

    iget v1, v7, Lextern/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 78
    if-le v6, p2, :cond_2

    .line 79
    move v6, p2

    .line 81
    :cond_2
    iget-object v0, p0, Lextern/okio/SegmentedByteString;->directory:[I

    aput v6, v0, v8

    .line 82
    iget-object v0, p0, Lextern/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/2addr v1, v8

    iget v2, v7, Lextern/okio/Segment;->pos:I

    aput v2, v0, v1

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, v7, Lextern/okio/Segment;->shared:Z

    .line 84
    add-int/lit8 v8, v8, 0x1

    .line 75
    iget-object v7, v7, Lextern/okio/Segment;->next:Lextern/okio/Segment;

    goto :goto_1

    .line 86
    :cond_3
    return-void
.end method

.method private segment(I)I
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lextern/okio/SegmentedByteString;->directory:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    add-int/lit8 v4, p1, 0x1

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 140
    .local v0, "i":I
    if-ltz v0, :cond_0

    .end local v0    # "i":I
    :goto_0
    return v0

    .restart local v0    # "i":I
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private toByteString()Lextern/okio/ByteString;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lextern/okio/ByteString;

    invoke-virtual {p0}, Lextern/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lextern/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lextern/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    if-ne p1, p0, :cond_0

    .line 249
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lextern/okio/ByteString;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lextern/okio/ByteString;

    invoke-virtual {v0}, Lextern/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0}, Lextern/okio/SegmentedByteString;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    check-cast p1, Lextern/okio/ByteString;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lextern/okio/SegmentedByteString;->size()I

    move-result v0

    invoke-virtual {p0, v2, p1, v2, v0}, Lextern/okio/SegmentedByteString;->rangeEquals(ILextern/okio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public getByte(I)B
    .locals 9
    .param p1, "pos"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lextern/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v0, v0

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v5}, Lextern/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 130
    invoke-direct {p0, p1}, Lextern/okio/SegmentedByteString;->segment(I)I

    move-result v6

    .line 131
    .local v6, "segment":I
    if-nez v6, :cond_0

    const/4 v7, 0x0

    .line 132
    .local v7, "segmentOffset":I
    :goto_0
    iget-object v0, p0, Lextern/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/2addr v1, v6

    aget v8, v0, v1

    .line 133
    .local v8, "segmentPos":I
    iget-object v0, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    aget-object v0, v0, v6

    sub-int v1, p1, v7

    add-int/2addr v1, v8

    aget-byte v0, v0, v1

    return v0

    .line 131
    .end local v7    # "segmentOffset":I
    .end local v8    # "segmentPos":I
    :cond_0
    iget-object v0, p0, Lextern/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v1, v6, -0x1

    aget v7, v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 13

    .prologue
    .line 255
    iget v3, p0, Lextern/okio/SegmentedByteString;->hashCode:I

    .line 256
    .local v3, "result":I
    if-eqz v3, :cond_0

    move v4, v3

    .line 271
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 259
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_0
    const/4 v3, 0x1

    .line 260
    const/4 v8, 0x0

    .line 261
    .local v8, "segmentOffset":I
    const/4 v5, 0x0

    .local v5, "s":I
    iget-object v11, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    array-length v7, v11

    .local v7, "segmentCount":I
    :goto_1
    if-ge v5, v7, :cond_2

    .line 262
    iget-object v11, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v11, v5

    .line 263
    .local v6, "segment":[B
    iget-object v11, p0, Lextern/okio/SegmentedByteString;->directory:[I

    add-int v12, v7, v5

    aget v9, v11, v12

    .line 264
    .local v9, "segmentPos":I
    iget-object v11, p0, Lextern/okio/SegmentedByteString;->directory:[I

    aget v2, v11, v5

    .line 265
    .local v2, "nextSegmentOffset":I
    sub-int v10, v2, v8

    .line 266
    .local v10, "segmentSize":I
    move v0, v9

    .local v0, "i":I
    add-int v1, v9, v10

    .local v1, "limit":I
    :goto_2
    if-ge v0, v1, :cond_1

    .line 267
    mul-int/lit8 v11, v3, 0x1f

    aget-byte v12, v6, v0

    add-int v3, v11, v12

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 269
    :cond_1
    move v8, v2

    .line 261
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 271
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v2    # "nextSegmentOffset":I
    .end local v6    # "segment":[B
    .end local v9    # "segmentPos":I
    .end local v10    # "segmentSize":I
    :cond_2
    iput v3, p0, Lextern/okio/SegmentedByteString;->hashCode:I

    move v4, v3

    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0
.end method

.method public hex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public indexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    .prologue
    .line 231
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lextern/okio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method internalArray()[B
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lextern/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    .prologue
    .line 235
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lextern/okio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public md5()Lextern/okio/ByteString;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okio/ByteString;->md5()Lextern/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILextern/okio/ByteString;II)Z
    .locals 9
    .param p1, "offset"    # I
    .param p2, "other"    # Lextern/okio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 194
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lextern/okio/SegmentedByteString;->size()I

    move-result v7

    sub-int/2addr v7, p4

    if-le p1, v7, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v6

    .line 196
    :cond_1
    invoke-direct {p0, p1}, Lextern/okio/SegmentedByteString;->segment(I)I

    move-result v1

    .local v1, "s":I
    :goto_1
    if-lez p4, :cond_3

    .line 197
    if-nez v1, :cond_2

    move v2, v6

    .line 198
    .local v2, "segmentOffset":I
    :goto_2
    iget-object v7, p0, Lextern/okio/SegmentedByteString;->directory:[I

    aget v7, v7, v1

    sub-int v4, v7, v2

    .line 199
    .local v4, "segmentSize":I
    add-int v7, v2, v4

    sub-int/2addr v7, p1

    invoke-static {p4, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 200
    .local v5, "stepSize":I
    iget-object v7, p0, Lextern/okio/SegmentedByteString;->directory:[I

    iget-object v8, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    array-length v8, v8

    add-int/2addr v8, v1

    aget v3, v7, v8

    .line 201
    .local v3, "segmentPos":I
    sub-int v7, p1, v2

    add-int v0, v7, v3

    .line 202
    .local v0, "arrayOffset":I
    iget-object v7, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    aget-object v7, v7, v1

    invoke-virtual {p2, p3, v7, v0, v5}, Lextern/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 203
    add-int/2addr p1, v5

    .line 204
    add-int/2addr p3, v5

    .line 205
    sub-int/2addr p4, v5

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    .end local v0    # "arrayOffset":I
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentPos":I
    .end local v4    # "segmentSize":I
    .end local v5    # "stepSize":I
    :cond_2
    iget-object v7, p0, Lextern/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v8, v1, -0x1

    aget v2, v7, v8

    goto :goto_2

    .line 207
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public rangeEquals(I[BII)Z
    .locals 9
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 211
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lextern/okio/SegmentedByteString;->size()I

    move-result v7

    sub-int/2addr v7, p4

    if-gt p1, v7, :cond_0

    if-ltz p3, :cond_0

    array-length v7, p2

    sub-int/2addr v7, p4

    if-le p3, v7, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v6

    .line 216
    :cond_1
    invoke-direct {p0, p1}, Lextern/okio/SegmentedByteString;->segment(I)I

    move-result v1

    .local v1, "s":I
    :goto_1
    if-lez p4, :cond_3

    .line 217
    if-nez v1, :cond_2

    move v2, v6

    .line 218
    .local v2, "segmentOffset":I
    :goto_2
    iget-object v7, p0, Lextern/okio/SegmentedByteString;->directory:[I

    aget v7, v7, v1

    sub-int v4, v7, v2

    .line 219
    .local v4, "segmentSize":I
    add-int v7, v2, v4

    sub-int/2addr v7, p1

    invoke-static {p4, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 220
    .local v5, "stepSize":I
    iget-object v7, p0, Lextern/okio/SegmentedByteString;->directory:[I

    iget-object v8, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    array-length v8, v8

    add-int/2addr v8, v1

    aget v3, v7, v8

    .line 221
    .local v3, "segmentPos":I
    sub-int v7, p1, v2

    add-int v0, v7, v3

    .line 222
    .local v0, "arrayOffset":I
    iget-object v7, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    aget-object v7, v7, v1

    invoke-static {v7, v0, p2, p3, v5}, Lextern/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 223
    add-int/2addr p1, v5

    .line 224
    add-int/2addr p3, v5

    .line 225
    sub-int/2addr p4, v5

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    .end local v0    # "arrayOffset":I
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentPos":I
    .end local v4    # "segmentSize":I
    .end local v5    # "stepSize":I
    :cond_2
    iget-object v7, p0, Lextern/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v8, v1, -0x1

    aget v2, v7, v8

    goto :goto_2

    .line 227
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public sha256()Lextern/okio/ByteString;
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okio/ByteString;->sha256()Lextern/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lextern/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public substring(I)Lextern/okio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lextern/okio/ByteString;->substring(I)Lextern/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lextern/okio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lextern/okio/ByteString;->substring(II)Lextern/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiLowercase()Lextern/okio/ByteString;
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okio/ByteString;->toAsciiLowercase()Lextern/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lextern/okio/ByteString;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okio/ByteString;->toAsciiUppercase()Lextern/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 8

    .prologue
    .line 148
    iget-object v6, p0, Lextern/okio/SegmentedByteString;->directory:[I

    iget-object v7, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    new-array v1, v6, [B

    .line 149
    .local v1, "result":[B
    const/4 v4, 0x0

    .line 150
    .local v4, "segmentOffset":I
    const/4 v2, 0x0

    .local v2, "s":I
    iget-object v6, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    array-length v3, v6

    .local v3, "segmentCount":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 151
    iget-object v6, p0, Lextern/okio/SegmentedByteString;->directory:[I

    add-int v7, v3, v2

    aget v5, v6, v7

    .line 152
    .local v5, "segmentPos":I
    iget-object v6, p0, Lextern/okio/SegmentedByteString;->directory:[I

    aget v0, v6, v2

    .line 153
    .local v0, "nextSegmentOffset":I
    iget-object v6, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v2

    sub-int v7, v0, v4

    invoke-static {v6, v5, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    move v4, v0

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "nextSegmentOffset":I
    .end local v5    # "segmentPos":I
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lextern/okio/SegmentedByteString;->toByteString()Lextern/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method write(Lextern/okio/Buffer;)V
    .locals 10
    .param p1, "buffer"    # Lextern/okio/Buffer;

    .prologue
    .line 176
    const/4 v4, 0x0

    .line 177
    .local v4, "segmentOffset":I
    const/4 v1, 0x0

    .local v1, "s":I
    iget-object v6, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    array-length v3, v6

    .local v3, "segmentCount":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 178
    iget-object v6, p0, Lextern/okio/SegmentedByteString;->directory:[I

    add-int v7, v3, v1

    aget v5, v6, v7

    .line 179
    .local v5, "segmentPos":I
    iget-object v6, p0, Lextern/okio/SegmentedByteString;->directory:[I

    aget v0, v6, v1

    .line 180
    .local v0, "nextSegmentOffset":I
    new-instance v2, Lextern/okio/Segment;

    iget-object v6, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    add-int v7, v5, v0

    sub-int/2addr v7, v4

    invoke-direct {v2, v6, v5, v7}, Lextern/okio/Segment;-><init>([BII)V

    .line 182
    .local v2, "segment":Lextern/okio/Segment;
    iget-object v6, p1, Lextern/okio/Buffer;->head:Lextern/okio/Segment;

    if-nez v6, :cond_0

    .line 183
    iput-object v2, v2, Lextern/okio/Segment;->prev:Lextern/okio/Segment;

    iput-object v2, v2, Lextern/okio/Segment;->next:Lextern/okio/Segment;

    iput-object v2, p1, Lextern/okio/Buffer;->head:Lextern/okio/Segment;

    .line 187
    :goto_1
    move v4, v0

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    iget-object v6, p1, Lextern/okio/Buffer;->head:Lextern/okio/Segment;

    iget-object v6, v6, Lextern/okio/Segment;->prev:Lextern/okio/Segment;

    invoke-virtual {v6, v2}, Lextern/okio/Segment;->push(Lextern/okio/Segment;)Lextern/okio/Segment;

    goto :goto_1

    .line 189
    .end local v0    # "nextSegmentOffset":I
    .end local v2    # "segment":Lextern/okio/Segment;
    .end local v5    # "segmentPos":I
    :cond_1
    iget-wide v6, p1, Lextern/okio/Buffer;->size:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p1, Lextern/okio/Buffer;->size:J

    .line 190
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 166
    :cond_0
    const/4 v3, 0x0

    .line 167
    .local v3, "segmentOffset":I
    const/4 v1, 0x0

    .local v1, "s":I
    iget-object v5, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    array-length v2, v5

    .local v2, "segmentCount":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 168
    iget-object v5, p0, Lextern/okio/SegmentedByteString;->directory:[I

    add-int v6, v2, v1

    aget v4, v5, v6

    .line 169
    .local v4, "segmentPos":I
    iget-object v5, p0, Lextern/okio/SegmentedByteString;->directory:[I

    aget v0, v5, v1

    .line 170
    .local v0, "nextSegmentOffset":I
    iget-object v5, p0, Lextern/okio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v1

    sub-int v6, v0, v3

    invoke-virtual {p1, v5, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 171
    move v3, v0

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "nextSegmentOffset":I
    .end local v4    # "segmentPos":I
    :cond_1
    return-void
.end method
