.class public Lcom/inca/security/va;
.super Ljava/lang/Object;
.source "ba"

# interfaces
.implements Lcom/inca/security/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/ma;
    }
.end annotation


# direct methods
.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    return-void
.end method

.method public static IIiIIiIiIi([BII)V
    .locals 1
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 9
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 102
    return-void
.end method

.method public static IiiiIIIIii([B)D
    .locals 2
    .param p0, "arg0"    # [B

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/inca/security/va;->iIiIIiIIIi([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static IiiiIIIIii([BI)D
    .locals 2
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/inca/security/va;->iIiIIiIIIi([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static IiiiIIIIii([B)F
    .locals 1
    .param p0, "arg0"    # [B

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/inca/security/va;->IiiiIIIIii([BI)F

    move-result v0

    return v0
.end method

.method public static IiiiIIIIii([BI)F
    .locals 1
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static IiiiIIIIii(B)I
    .locals 1
    .param p0, "arg0"    # B

    .prologue
    .line 238
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static IiiiIIIIii(Ljava/io/InputStream;)I
    .locals 5
    .param p0, "arg0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/inca/security/ma;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 479
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 336
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 213
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 365
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    .line 371
    new-instance v0, Lcom/inca/security/ma;

    invoke-direct {v0}, Lcom/inca/security/ma;-><init>()V

    throw v0

    .line 217
    :cond_0
    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public static IiiiIIIIii([B)I
    .locals 1
    .param p0, "arg0"    # [B

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/inca/security/va;->IiiiIIIIii([BI)I

    move-result v0

    return v0
.end method

.method public static IiiiIIIIii([BI)I
    .locals 2
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 200
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 184
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 172
    shl-int/lit8 v1, v1, 0x8

    shl-int/lit8 v0, v0, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public static IiiiIIIIii(Ljava/io/InputStream;)J
    .locals 11
    .param p0, "arg0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/inca/security/ma;
        }
    .end annotation

    .prologue
    .line 423
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 369
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 448
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 333
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 456
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 431
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 284
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 327
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 263
    or-int v8, v0, v1

    or-int/2addr v8, v2

    or-int/2addr v8, v3

    or-int/2addr v8, v4

    or-int/2addr v8, v5

    or-int/2addr v8, v6

    or-int/2addr v8, v7

    if-gez v8, :cond_0

    .line 394
    new-instance v0, Lcom/inca/security/ma;

    invoke-direct {v0}, Lcom/inca/security/ma;-><init>()V

    throw v0

    .line 475
    :cond_0
    int-to-long v8, v7

    const/16 v7, 0x38

    shl-long/2addr v8, v7

    int-to-long v6, v6

    const/16 v10, 0x30

    shl-long/2addr v6, v10

    add-long/2addr v6, v8

    int-to-long v8, v5

    const/16 v5, 0x28

    shl-long/2addr v8, v5

    add-long/2addr v6, v8

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    add-long/2addr v4, v6

    int-to-long v6, v3

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    add-long/2addr v4, v6

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v2, v4

    shl-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    add-long/2addr v2, v4

    shl-int/lit8 v0, v0, 0x0

    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static IiiiIIIIii([B)J
    .locals 2
    .param p0, "arg0"    # [B

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/inca/security/va;->IiiiIIIIii([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static IiiiIIIIii([BI)J
    .locals 4
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v0

    int-to-long v0, v0

    .line 93
    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static final IiiiIIIIii(B)Ljava/lang/String;
    .locals 2
    .param p0, "arg0"    # B

    .prologue
    .line 405
    and-int/lit16 v0, p0, 0xff

    add-int/lit16 v0, v0, 0x100

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final IiiiIIIIii([B)Ljava/lang/String;
    .locals 2
    .param p0, "arg0"    # [B

    .prologue
    .line 355
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/inca/security/va;->IiiiIIIIii([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final IiiiIIIIii([BII)Ljava/lang/String;
    .locals 3
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 293
    array-length v0, p0

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 349
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, p1

    .line 474
    .end local p1    # "arg1":I
    :goto_0
    if-ge p1, v1, :cond_0

    .line 444
    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/inca/security/va;->IiiiIIIIii(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, p1

    .line 474
    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IiiiIIIIii(Ljava/io/InputStream;)S
    .locals 1
    .param p0, "arg0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/inca/security/ma;
        }
    .end annotation

    .prologue
    .line 372
    invoke-static {p0}, Lcom/inca/security/va;->iIiIIiIIIi(Ljava/io/InputStream;)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static IiiiIIIIii([B)S
    .locals 1
    .param p0, "arg0"    # [B

    .prologue
    .line 59
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static IiiiIIIIii([BI)S
    .locals 1
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 54
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static IiiiIIIIii(B[B)V
    .locals 1
    .param p0, "arg0"    # B
    .param p1, "arg1"    # [B

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/inca/security/va;->IIiIIiIiIi([BII)V

    .line 354
    return-void
.end method

.method public static IiiiIIIIii(DLjava/io/OutputStream;)V
    .locals 2
    .param p0, "arg0"    # D
    .param p2, "arg1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/inca/security/va;->iIiIIiIIIi(JLjava/io/OutputStream;)V

    .line 191
    return-void
.end method

.method public static IiiiIIIIii(D[B)V
    .locals 2
    .param p0, "arg0"    # D
    .param p2, "arg1"    # [B

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-static {p2, v0, p0, p1}, Lcom/inca/security/va;->IiiiIIIIii([BID)V

    .line 272
    return-void
.end method

.method public static IiiiIIIIii(FLjava/io/OutputStream;)V
    .locals 1
    .param p0, "arg0"    # F
    .param p1, "arg1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0, p1}, Lcom/inca/security/va;->IiiiIIIIii(ILjava/io/OutputStream;)V

    .line 4
    return-void
.end method

.method public static IiiiIIIIii(F[B)V
    .locals 1
    .param p0, "arg0"    # F
    .param p1, "arg1"    # [B

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/inca/security/va;->IiiiIIIIii([BIF)V

    .line 401
    return-void
.end method

.method public static IiiiIIIIii(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "arg0"    # I
    .param p1, "arg1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    ushr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 107
    ushr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 51
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 193
    ushr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 144
    return-void
.end method

.method public static IiiiIIIIii(I[B)V
    .locals 1
    .param p0, "arg0"    # I
    .param p1, "arg1"    # [B

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/inca/security/va;->iIiIIiIIIi([BII)V

    .line 210
    return-void
.end method

.method public static IiiiIIIIii(JLjava/io/OutputStream;)V
    .locals 4
    .param p0, "arg0"    # J
    .param p2, "arg1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0xff

    .line 476
    const/4 v0, 0x0

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 261
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 407
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 328
    const/16 v0, 0x18

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 352
    return-void
.end method

.method public static IiiiIIIIii(J[B)V
    .locals 2
    .param p0, "arg0"    # J
    .param p2, "arg1"    # [B

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-static {p2, v0, p0, p1}, Lcom/inca/security/va;->iIiIIiIIIi([BIJ)V

    .line 290
    return-void
.end method

.method public static IiiiIIIIii(Ljava/io/OutputStream;S)V
    .locals 1
    .param p0, "arg0"    # Ljava/io/OutputStream;
    .param p1, "arg1"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 271
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 361
    return-void
.end method

.method public static IiiiIIIIii(S[B)V
    .locals 1
    .param p0, "arg0"    # S
    .param p1, "arg1"    # [B

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/inca/security/va;->iIiIIiIIIi([BIS)V

    .line 307
    return-void
.end method

.method public static IiiiIIIIii([BID)V
    .locals 2
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # D

    .prologue
    .line 24
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/inca/security/va;->iIiIIiIIIi([BIJ)V

    .line 147
    return-void
.end method

.method public static IiiiIIIIii([BIF)V
    .locals 1
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # F

    .prologue
    .line 38
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/inca/security/va;->iIiIIiIIIi([BII)V

    .line 89
    return-void
.end method

.method public static IiiiIIIIii([BII)V
    .locals 3
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 484
    .line 417
    ushr-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p1, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 294
    ushr-int/lit8 v0, p2, 0x8

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    .line 251
    return-void
.end method

.method public static IiiiIIIIii([BIJ)V
    .locals 6
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 253
    .line 457
    const/4 v0, 0x0

    ushr-long v0, p2, v0

    add-int/lit8 v2, p1, 0x1

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 260
    const/16 v0, 0x8

    ushr-long v0, p2, v0

    add-int/lit8 v3, v2, 0x1

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    .line 477
    const/16 v0, 0x10

    ushr-long v0, p2, v0

    add-int/lit8 v2, v3, 0x1

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, v3

    .line 302
    const/16 v0, 0x18

    ushr-long v0, p2, v0

    add-int/lit8 v3, v2, 0x1

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    .line 281
    return-void
.end method

.method public static IiiiIIIIii([BIS)V
    .locals 1
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # S

    .prologue
    .line 277
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 357
    return-void
.end method

.method public static IiiiIIIIii([BI[S)V
    .locals 4
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # [S

    .prologue
    .line 421
    .line 460
    array-length v3, p2

    const/4 v0, 0x0

    move v1, v0

    .end local p1    # "arg1":I
    :goto_0
    if-ge v0, v3, :cond_0

    aget-short v0, p2, v1

    .line 286
    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, p1, v0}, Lcom/inca/security/va;->iIiIIiIIIi([BIS)V

    .line 460
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p1, v2

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method public static IiiiIIIIii(B)[B
    .locals 2
    .param p0, "arg0"    # B

    .prologue
    .line 449
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 222
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/inca/security/va;->IIiIIiIiIi([BII)V

    .line 214
    return-object v0
.end method

.method public static IiiiIIIIii(D)[B
    .locals 2
    .param p0, "arg0"    # D

    .prologue
    .line 350
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 379
    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/inca/security/va;->IiiiIIIIii([BID)V

    .line 434
    return-object v0
.end method

.method public static IiiiIIIIii(F)[B
    .locals 2
    .param p0, "arg0"    # F

    .prologue
    .line 330
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 212
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/inca/security/va;->IiiiIIIIii([BIF)V

    .line 413
    return-object v0
.end method

.method public static IiiiIIIIii(I)[B
    .locals 2
    .param p0, "arg0"    # I

    .prologue
    .line 268
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 463
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/inca/security/va;->iIiIIiIIIi([BII)V

    .line 219
    return-object v0
.end method

.method public static IiiiIIIIii(J)[B
    .locals 2
    .param p0, "arg0"    # J

    .prologue
    .line 353
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 399
    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/inca/security/va;->iIiIIiIIIi([BIJ)V

    .line 256
    return-object v0
.end method

.method public static IiiiIIIIii(Ljava/lang/String;)[B
    .locals 4
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 332
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 347
    :cond_0
    const/4 v0, 0x0

    .line 426
    :goto_0
    return-object v0

    .line 424
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    .line 478
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 362
    mul-int/lit8 v0, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v3, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, v2, v1

    move v1, v0

    .line 478
    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 426
    goto :goto_0
.end method

.method public static IiiiIIIIii(S)[B
    .locals 2
    .param p0, "arg0"    # S

    .prologue
    .line 489
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 304
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/inca/security/va;->iIiIIiIIIi([BIS)V

    .line 273
    return-object v0
.end method

.method public static IiiiIIIIii([BII)[B
    .locals 2
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 19
    new-array v0, p2, [B

    .line 46
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    return-object v0
.end method

.method public static IiiiIIIIii([BII)[S
    .locals 4
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 178
    div-int/lit8 v0, p2, 0x2

    new-array v2, v0, [S

    .line 68
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 108
    mul-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lcom/inca/security/va;->iIiIIiIIIi([BI)S

    move-result v3

    add-int/lit8 v0, v1, 0x1

    aput-short v3, v2, v1

    move v1, v0

    .line 68
    goto :goto_0

    .line 194
    :cond_0
    return-object v2
.end method

.method public static iIiIIiIIIi(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "arg0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/inca/security/ma;
        }
    .end annotation

    .prologue
    .line 452
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 436
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 491
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 466
    new-instance v0, Lcom/inca/security/ma;

    invoke-direct {v0}, Lcom/inca/security/ma;-><init>()V

    throw v0

    .line 295
    :cond_0
    shl-int/lit8 v1, v1, 0x8

    shl-int/lit8 v0, v0, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public static iIiIIiIIIi([B)I
    .locals 1
    .param p0, "arg0"    # [B

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v0

    return v0
.end method

.method public static iIiIIiIIIi([BI)I
    .locals 5
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 160
    .line 40
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 157
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v1, 0x1

    .line 78
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v1, 0x1

    .line 25
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v1, 0x1

    .line 175
    shl-int/lit8 v1, v4, 0x18

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public static iIiIIiIIIi(Ljava/io/InputStream;)J
    .locals 4
    .param p0, "arg0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/inca/security/ma;
        }
    .end annotation

    .prologue
    .line 389
    invoke-static {p0}, Lcom/inca/security/va;->IiiiIIIIii(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    .line 329
    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static iIiIIiIIIi([B)J
    .locals 2
    .param p0, "arg0"    # [B

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/inca/security/va;->iIiIIiIIIi([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static iIiIIiIIIi([BI)J
    .locals 6
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 199
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    .line 159
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-lt v0, p1, :cond_0

    .line 126
    const/16 v0, 0x8

    shl-long/2addr v2, v0

    .line 12
    aget-byte v0, p0, v1

    and-int/lit16 v4, v0, 0xff

    add-int/lit8 v0, v1, -0x1

    int-to-long v4, v4

    or-long/2addr v2, v4

    move v1, v0

    .line 159
    goto :goto_0

    .line 85
    :cond_0
    return-wide v2
.end method

.method public static iIiIIiIIIi([B)S
    .locals 1
    .param p0, "arg0"    # [B

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/inca/security/va;->iIiIIiIIIi([BI)S

    move-result v0

    return v0
.end method

.method public static iIiIIiIIIi([BI)S
    .locals 2
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 5
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 133
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 170
    shl-int/lit8 v1, v1, 0x8

    shl-int/lit8 v0, v0, 0x0

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static iIiIIiIIIi(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "arg0"    # I
    .param p1, "arg1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    ushr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 242
    ushr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 402
    return-void
.end method

.method public static iIiIIiIIIi(JLjava/io/OutputStream;)V
    .locals 4
    .param p0, "arg0"    # J
    .param p2, "arg1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0xff

    .line 90
    const/4 v0, 0x0

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 74
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 64
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 84
    const/16 v0, 0x18

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 154
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 169
    const/16 v0, 0x28

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 53
    const/16 v0, 0x30

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 43
    const/16 v0, 0x38

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 203
    return-void
.end method

.method public static iIiIIiIIIi([BII)V
    .locals 3
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 101
    .line 27
    ushr-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p1, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 34
    ushr-int/lit8 v0, p2, 0x8

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    .line 2
    ushr-int/lit8 v0, p2, 0x10

    add-int/lit8 v1, v2, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    .line 42
    ushr-int/lit8 v0, p2, 0x18

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    .line 80
    return-void
.end method

.method public static iIiIIiIIIi([BIJ)V
    .locals 6
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 77
    add-int/lit8 v0, p1, 0x0

    const/4 v1, 0x0

    ushr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 36
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x8

    ushr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 129
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x10

    ushr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 95
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x18

    ushr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 122
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x20

    ushr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 177
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x28

    ushr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 140
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x30

    ushr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 137
    add-int/lit8 v0, p1, 0x7

    const/16 v1, 0x38

    ushr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 196
    return-void
.end method

.method public static iIiIIiIIIi([BIS)V
    .locals 3
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # S

    .prologue
    .line 62
    .line 315
    ushr-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p1, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 382
    ushr-int/lit8 v0, p2, 0x8

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    .line 265
    return-void
.end method
