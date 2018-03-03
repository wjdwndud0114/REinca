.class public Lcom/tapjoy/internal/hu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field static final a:[C

.field public static final b:Lcom/tapjoy/internal/hu;


# instance fields
.field final c:[B

.field transient d:I

.field transient e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tapjoy/internal/hu;->a:[C

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 3068
    new-instance v1, Lcom/tapjoy/internal/hu;

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/hu;-><init>([B)V

    .line 53
    sput-object v1, Lcom/tapjoy/internal/hu;->b:Lcom/tapjoy/internal/hu;

    return-void

    .line 48
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/tapjoy/internal/hu;->c:[B

    .line 61
    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tapjoy/internal/hu;->c:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public a(II)Lcom/tapjoy/internal/hu;
    .locals 4

    .prologue
    .line 263
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "beginIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v0, v0

    if-le p2, v0, :cond_1

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex > length("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    sub-int v0, p2, p1

    .line 269
    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endIndex < beginIndex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v1, v1

    if-ne p2, v1, :cond_3

    .line 277
    :goto_0
    return-object p0

    .line 275
    :cond_3
    new-array v1, v0, [B

    .line 276
    iget-object v2, p0, Lcom/tapjoy/internal/hu;->c:[B

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    new-instance p0, Lcom/tapjoy/internal/hu;

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/hu;-><init>([B)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tapjoy/internal/hu;->e:Ljava/lang/String;

    .line 96
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/hu;->c:[B

    sget-object v2, Lcom/tapjoy/internal/ie;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hu;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method a(Lcom/tapjoy/internal/hr;)V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/tapjoy/internal/hu;->c:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tapjoy/internal/hr;->a([BII)Lcom/tapjoy/internal/hr;

    .line 320
    return-void
.end method

.method public a(I[BII)Z
    .locals 1

    .prologue
    .line 337
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/hu;->c:[B

    .line 339
    invoke-static {v0, p1, p2, p3, p4}, Lcom/tapjoy/internal/ie;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    .line 153
    iget-object v3, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, v3, v0

    .line 154
    add-int/lit8 v6, v1, 0x1

    sget-object v7, Lcom/tapjoy/internal/hu;->a:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v1

    .line 155
    add-int/lit8 v1, v6, 0x1

    sget-object v7, Lcom/tapjoy/internal/hu;->a:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v2, v6

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v0, v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 47
    check-cast p1, Lcom/tapjoy/internal/hu;

    .line 2415
    invoke-virtual {p0}, Lcom/tapjoy/internal/hu;->c()I

    move-result v4

    .line 2416
    invoke-virtual {p1}, Lcom/tapjoy/internal/hu;->c()I

    move-result v5

    .line 2417
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_3

    .line 2418
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/hu;->a(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 2419
    invoke-virtual {p1, v3}, Lcom/tapjoy/internal/hu;->a(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    .line 2420
    if-eq v7, v8, :cond_2

    .line 2421
    if-ge v7, v8, :cond_1

    .line 2424
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 2421
    goto :goto_1

    .line 2417
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2423
    :cond_3
    if-ne v4, v5, :cond_4

    move v0, v2

    goto :goto_1

    .line 2424
    :cond_4
    if-lt v4, v5, :cond_0

    move v0, v1

    .line 47
    goto :goto_1
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/tapjoy/internal/hu;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 403
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 406
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 404
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/tapjoy/internal/hu;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/tapjoy/internal/hu;

    .line 405
    invoke-virtual {v0}, Lcom/tapjoy/internal/hu;->c()I

    move-result v0

    iget-object v3, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v3, v3

    if-ne v0, v3, :cond_1

    check-cast p1, Lcom/tapjoy/internal/hu;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/tapjoy/internal/hu;->c:[B

    iget-object v3, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v3, v3

    .line 406
    invoke-virtual {p1, v2, v0, v2, v3}, Lcom/tapjoy/internal/hu;->a(I[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/tapjoy/internal/hu;->d:I

    .line 411
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hu;->c:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/hu;->d:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/16 v8, 0x40

    const/4 v3, 0x0

    .line 432
    iget-object v0, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 433
    const-string v0, "[size=0]"

    .line 449
    :goto_0
    return-object v0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/hu;->a()Ljava/lang/String;

    move-result-object v4

    .line 1455
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v3

    move v0, v3

    :goto_1
    if-ge v0, v5, :cond_5

    .line 1456
    if-ne v2, v8, :cond_1

    .line 439
    :goto_2
    if-ne v0, v1, :cond_7

    .line 440
    iget-object v0, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v0, v0

    if-gt v0, v8, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/tapjoy/internal/hu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1459
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 1460
    invoke-static {v6}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    const/16 v7, 0xd

    if-ne v6, v7, :cond_3

    :cond_2
    const v7, 0xfffd

    if-ne v6, v7, :cond_4

    :cond_3
    move v0, v1

    .line 1462
    goto :goto_2

    .line 1464
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 1455
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_1

    .line 1466
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    .line 441
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    invoke-virtual {p0, v3, v8}, Lcom/tapjoy/internal/hu;->a(II)Lcom/tapjoy/internal/hu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/hu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_7
    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, "\\\\"

    .line 446
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\\n"

    .line 447
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v3, "\\r"

    .line 448
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/hu;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[text="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
