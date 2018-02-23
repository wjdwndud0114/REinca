.class public Lextern/okio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lextern/okio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lextern/okio/ByteString;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lextern/okio/ByteString;->HEX_DIGITS:[C

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lextern/okio/ByteString;->of([B)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okio/ByteString;->EMPTY:Lextern/okio/ByteString;

    return-void

    .line 48
    nop

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

.method constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lextern/okio/ByteString;->data:[B

    .line 61
    return-void
.end method

.method static codePointIndexToCharIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "codePointCount"    # I

    .prologue
    .line 455
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 456
    if-ne v2, p1, :cond_0

    .line 466
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 459
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 460
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    const/16 v4, 0xd

    if-ne v0, v4, :cond_2

    :cond_1
    const v4, 0xfffd

    if-ne v0, v4, :cond_3

    .line 462
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 464
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 455
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    .line 466
    .end local v0    # "c":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1
.end method

.method public static decodeBase64(Ljava/lang/String;)Lextern/okio/ByteString;
    .locals 3
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 144
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "base64 == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    invoke-static {p0}, Lextern/okio/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 146
    .local v0, "decoded":[B
    if-eqz v0, :cond_1

    new-instance v1, Lextern/okio/ByteString;

    invoke-direct {v1, v0}, Lextern/okio/ByteString;-><init>([B)V

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeHex(Ljava/lang/String;)Lextern/okio/ByteString;
    .locals 7
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 162
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "hex == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 163
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected hex string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 166
    .local v3, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 167
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lextern/okio/ByteString;->decodeHexDigit(C)I

    move-result v4

    shl-int/lit8 v0, v4, 0x4

    .line 168
    .local v0, "d1":I
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lextern/okio/ByteString;->decodeHexDigit(C)I

    move-result v1

    .line 169
    .local v1, "d2":I
    add-int v4, v0, v1

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "d1":I
    .end local v1    # "d2":I
    :cond_2
    invoke-static {v3}, Lextern/okio/ByteString;->of([B)Lextern/okio/ByteString;

    move-result-object v4

    return-object v4
.end method

.method private static decodeHexDigit(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 175
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 177
    :goto_0
    return v0

    .line 176
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 177
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 178
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private digest(Ljava/lang/String;)Lextern/okio/ByteString;
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 125
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v2, p0, Lextern/okio/ByteString;->data:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lextern/okio/ByteString;->of([B)Lextern/okio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "s == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    new-instance v0, Lextern/okio/ByteString;

    sget-object v1, Lextern/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lextern/okio/ByteString;-><init>([B)V

    .line 88
    .local v0, "byteString":Lextern/okio/ByteString;
    iput-object p0, v0, Lextern/okio/ByteString;->utf8:Ljava/lang/String;

    .line 89
    return-object v0
.end method

.method public static varargs of([B)Lextern/okio/ByteString;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 67
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    new-instance v1, Lextern/okio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lextern/okio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static of([BII)Lextern/okio/ByteString;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I

    .prologue
    .line 76
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    array-length v0, p0

    int-to-long v0, v0

    int-to-long v2, p1

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lextern/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 79
    new-array v6, p2, [B

    .line 80
    .local v6, "copy":[B
    const/4 v0, 0x0

    invoke-static {p0, p1, v6, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    new-instance v0, Lextern/okio/ByteString;

    invoke-direct {v0, v6}, Lextern/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;I)Lextern/okio/ByteString;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "in == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    :cond_0
    if-gez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_1
    new-array v2, p1, [B

    .line 192
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 193
    sub-int v3, p1, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 194
    .local v1, "read":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 192
    :cond_2
    add-int/2addr v0, v1

    goto :goto_0

    .line 196
    .end local v1    # "read":I
    :cond_3
    new-instance v3, Lextern/okio/ByteString;

    invoke-direct {v3, v2}, Lextern/okio/ByteString;-><init>([B)V

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 471
    .local v1, "dataLength":I
    invoke-static {p1, v1}, Lextern/okio/ByteString;->read(Ljava/io/InputStream;I)Lextern/okio/ByteString;

    move-result-object v0

    .line 473
    .local v0, "byteString":Lextern/okio/ByteString;
    :try_start_0
    const-class v4, Lextern/okio/ByteString;

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 474
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 475
    iget-object v4, v0, Lextern/okio/ByteString;->data:[B

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    return-void

    .line 476
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 477
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 478
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 479
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 485
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 486
    return-void
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    invoke-static {v0}, Lextern/okio/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    invoke-static {v0}, Lextern/okio/Base64;->encodeUrl([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lextern/okio/ByteString;)I
    .locals 9
    .param p1, "byteString"    # Lextern/okio/ByteString;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 415
    invoke-virtual {p0}, Lextern/okio/ByteString;->size()I

    move-result v4

    .line 416
    .local v4, "sizeA":I
    invoke-virtual {p1}, Lextern/okio/ByteString;->size()I

    move-result v5

    .line 417
    .local v5, "sizeB":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 418
    invoke-virtual {p0, v2}, Lextern/okio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 419
    .local v0, "byteA":I
    invoke-virtual {p1, v2}, Lextern/okio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v1, v8, 0xff

    .line 420
    .local v1, "byteB":I
    if-ne v0, v1, :cond_0

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    :cond_0
    if-ge v0, v1, :cond_2

    .line 424
    .end local v0    # "byteA":I
    .end local v1    # "byteB":I
    :cond_1
    :goto_1
    return v6

    .restart local v0    # "byteA":I
    .restart local v1    # "byteB":I
    :cond_2
    move v6, v7

    .line 421
    goto :goto_1

    .line 423
    .end local v0    # "byteA":I
    .end local v1    # "byteB":I
    :cond_3
    if-ne v4, v5, :cond_4

    const/4 v6, 0x0

    goto :goto_1

    .line 424
    :cond_4
    if-lt v4, v5, :cond_1

    move v6, v7

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lextern/okio/ByteString;

    invoke-virtual {p0, p1}, Lextern/okio/ByteString;->compareTo(Lextern/okio/ByteString;)I

    move-result v0

    return v0
.end method

.method public final endsWith(Lextern/okio/ByteString;)Z
    .locals 3
    .param p1, "prefix"    # Lextern/okio/ByteString;

    .prologue
    .line 351
    invoke-virtual {p0}, Lextern/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lextern/okio/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lextern/okio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lextern/okio/ByteString;->rangeEquals(ILextern/okio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public final endsWith([B)Z
    .locals 3
    .param p1, "prefix"    # [B

    .prologue
    .line 355
    invoke-virtual {p0}, Lextern/okio/ByteString;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lextern/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 403
    if-ne p1, p0, :cond_0

    .line 404
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

    iget-object v3, p0, Lextern/okio/ByteString;->data:[B

    array-length v3, v3

    if-ne v0, v3, :cond_1

    check-cast p1, Lextern/okio/ByteString;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    iget-object v3, p0, Lextern/okio/ByteString;->data:[B

    array-length v3, v3

    invoke-virtual {p1, v2, v0, v2, v3}, Lextern/okio/ByteString;->rangeEquals(I[BII)Z

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
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 410
    iget v0, p0, Lextern/okio/ByteString;->hashCode:I

    .line 411
    .local v0, "result":I
    if-eqz v0, :cond_0

    .end local v0    # "result":I
    :goto_0
    return v0

    .restart local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lextern/okio/ByteString;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .end local v0    # "result":I
    iput v0, p0, Lextern/okio/ByteString;->hashCode:I

    goto :goto_0
.end method

.method public hex()Ljava/lang/String;
    .locals 9

    .prologue
    .line 151
    iget-object v7, p0, Lextern/okio/ByteString;->data:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [C

    .line 152
    .local v6, "result":[C
    const/4 v2, 0x0

    .line 153
    .local v2, "c":I
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v3, v2

    .end local v2    # "c":I
    .local v3, "c":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-byte v1, v0, v4

    .line 154
    .local v1, "b":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "c":I
    .restart local v2    # "c":I
    sget-object v7, Lextern/okio/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v6, v3

    .line 155
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .restart local v3    # "c":I
    sget-object v7, Lextern/okio/ByteString;->HEX_DIGITS:[C

    and-int/lit8 v8, v1, 0xf

    aget-char v7, v7, v8

    aput-char v7, v6, v2

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "b":B
    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V

    return-object v7
.end method

.method public final indexOf(Lextern/okio/ByteString;)I
    .locals 2
    .param p1, "other"    # Lextern/okio/ByteString;

    .prologue
    .line 359
    invoke-virtual {p1}, Lextern/okio/ByteString;->internalArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lextern/okio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public final indexOf(Lextern/okio/ByteString;I)I
    .locals 1
    .param p1, "other"    # Lextern/okio/ByteString;
    .param p2, "fromIndex"    # I

    .prologue
    .line 363
    invoke-virtual {p1}, Lextern/okio/ByteString;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lextern/okio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public final indexOf([B)I
    .locals 1
    .param p1, "other"    # [B

    .prologue
    .line 367
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lextern/okio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public indexOf([BI)I
    .locals 5
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 371
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 372
    move v0, p2

    .local v0, "i":I
    iget-object v2, p0, Lextern/okio/ByteString;->data:[B

    array-length v2, v2

    array-length v3, p1

    sub-int v1, v2, v3

    .local v1, "limit":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 373
    iget-object v2, p0, Lextern/okio/ByteString;->data:[B

    array-length v3, p1

    invoke-static {v2, v0, p1, v4, v3}, Lextern/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 372
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method internalArray()[B
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    return-object v0
.end method

.method public final lastIndexOf(Lextern/okio/ByteString;)I
    .locals 2
    .param p1, "other"    # Lextern/okio/ByteString;

    .prologue
    .line 381
    invoke-virtual {p1}, Lextern/okio/ByteString;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lextern/okio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lextern/okio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public final lastIndexOf(Lextern/okio/ByteString;I)I
    .locals 1
    .param p1, "other"    # Lextern/okio/ByteString;
    .param p2, "fromIndex"    # I

    .prologue
    .line 385
    invoke-virtual {p1}, Lextern/okio/ByteString;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lextern/okio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public final lastIndexOf([B)I
    .locals 1
    .param p1, "other"    # [B

    .prologue
    .line 389
    invoke-virtual {p0}, Lextern/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lextern/okio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf([BI)I
    .locals 4
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    .prologue
    .line 393
    iget-object v1, p0, Lextern/okio/ByteString;->data:[B

    array-length v1, v1

    array-length v2, p1

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 394
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 395
    iget-object v1, p0, Lextern/okio/ByteString;->data:[B

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v1, v0, p1, v2, v3}, Lextern/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 394
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 399
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public md5()Lextern/okio/ByteString;
    .locals 1

    .prologue
    .line 110
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lextern/okio/ByteString;->digest(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILextern/okio/ByteString;II)Z
    .locals 1
    .param p1, "offset"    # I
    .param p2, "other"    # Lextern/okio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lextern/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 1
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 337
    if-ltz p1, :cond_0

    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    invoke-static {v0, p1, p2, p3, p4}, Lextern/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sha1()Lextern/okio/ByteString;
    .locals 1

    .prologue
    .line 115
    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lextern/okio/ByteString;->digest(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lextern/okio/ByteString;
    .locals 1

    .prologue
    .line 120
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lextern/okio/ByteString;->digest(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public final startsWith(Lextern/okio/ByteString;)Z
    .locals 2
    .param p1, "prefix"    # Lextern/okio/ByteString;

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-virtual {p1}, Lextern/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v1, p1, v1, v0}, Lextern/okio/ByteString;->rangeEquals(ILextern/okio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public final startsWith([B)Z
    .locals 2
    .param p1, "prefix"    # [B

    .prologue
    const/4 v1, 0x0

    .line 347
    array-length v0, p1

    invoke-virtual {p0, v1, p1, v1, v0}, Lextern/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public substring(I)Lextern/okio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lextern/okio/ByteString;->substring(II)Lextern/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lextern/okio/ByteString;
    .locals 5
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 263
    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "beginIndex < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :cond_0
    iget-object v2, p0, Lextern/okio/ByteString;->data:[B

    array-length v2, v2

    if-le p2, v2, :cond_1

    .line 265
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endIndex > length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lextern/okio/ByteString;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 268
    :cond_1
    sub-int v1, p2, p1

    .line 269
    .local v1, "subLen":I
    if-gez v1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endIndex < beginIndex"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lextern/okio/ByteString;->data:[B

    array-length v2, v2

    if-ne p2, v2, :cond_3

    .line 277
    .end local p0    # "this":Lextern/okio/ByteString;
    :goto_0
    return-object p0

    .line 275
    .restart local p0    # "this":Lextern/okio/ByteString;
    :cond_3
    new-array v0, v1, [B

    .line 276
    .local v0, "copy":[B
    iget-object v2, p0, Lextern/okio/ByteString;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    new-instance p0, Lextern/okio/ByteString;

    .end local p0    # "this":Lextern/okio/ByteString;
    invoke-direct {p0, v0}, Lextern/okio/ByteString;-><init>([B)V

    goto :goto_0
.end method

.method public toAsciiLowercase()Lextern/okio/ByteString;
    .locals 7

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x41

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lextern/okio/ByteString;->data:[B

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 207
    iget-object v4, p0, Lextern/okio/ByteString;->data:[B

    aget-byte v0, v4, v1

    .line 208
    .local v0, "c":B
    if-lt v0, v5, :cond_0

    if-le v0, v6, :cond_1

    .line 206
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_1
    iget-object v4, p0, Lextern/okio/ByteString;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 213
    .local v3, "lowercase":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    add-int/lit8 v4, v0, 0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    move v1, v2

    .line 214
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 215
    aget-byte v0, v3, v1

    .line 216
    if-lt v0, v5, :cond_2

    if-le v0, v6, :cond_3

    .line 214
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_3
    add-int/lit8 v4, v0, 0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    goto :goto_2

    .line 219
    :cond_4
    new-instance p0, Lextern/okio/ByteString;

    .end local p0    # "this":Lextern/okio/ByteString;
    invoke-direct {p0, v3}, Lextern/okio/ByteString;-><init>([B)V

    .line 221
    .end local v0    # "c":B
    .end local v3    # "lowercase":[B
    :cond_5
    return-object p0
.end method

.method public toAsciiUppercase()Lextern/okio/ByteString;
    .locals 7

    .prologue
    const/16 v6, 0x7a

    const/16 v5, 0x61

    .line 231
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lextern/okio/ByteString;->data:[B

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 232
    iget-object v4, p0, Lextern/okio/ByteString;->data:[B

    aget-byte v0, v4, v1

    .line 233
    .local v0, "c":B
    if-lt v0, v5, :cond_0

    if-le v0, v6, :cond_1

    .line 231
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    :cond_1
    iget-object v4, p0, Lextern/okio/ByteString;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 238
    .local v3, "lowercase":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    add-int/lit8 v4, v0, -0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    move v1, v2

    .line 239
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 240
    aget-byte v0, v3, v1

    .line 241
    if-lt v0, v5, :cond_2

    if-le v0, v6, :cond_3

    .line 239
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_3
    add-int/lit8 v4, v0, -0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    goto :goto_2

    .line 244
    :cond_4
    new-instance p0, Lextern/okio/ByteString;

    .end local p0    # "this":Lextern/okio/ByteString;
    invoke-direct {p0, v3}, Lextern/okio/ByteString;-><init>([B)V

    .line 246
    .end local v0    # "c":B
    .end local v3    # "lowercase":[B
    :cond_5
    return-object p0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x40

    .line 432
    iget-object v3, p0, Lextern/okio/ByteString;->data:[B

    array-length v3, v3

    if-nez v3, :cond_0

    .line 433
    const-string v3, "[size=0]"

    .line 449
    :goto_0
    return-object v3

    .line 436
    :cond_0
    invoke-virtual {p0}, Lextern/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2, v5}, Lextern/okio/ByteString;->codePointIndexToCharIndex(Ljava/lang/String;I)I

    move-result v0

    .line 439
    .local v0, "i":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 440
    iget-object v3, p0, Lextern/okio/ByteString;->data:[B

    array-length v3, v3

    if-gt v3, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lextern/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lextern/okio/ByteString;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6, v5}, Lextern/okio/ByteString;->substring(II)Lextern/okio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lextern/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u2026]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, "\\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r"

    const-string v5, "\\r"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "safeText":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lextern/okio/ByteString;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u2026]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public utf8()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lextern/okio/ByteString;->utf8:Ljava/lang/String;

    .line 96
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/String;

    .end local v0    # "result":Ljava/lang/String;
    iget-object v1, p0, Lextern/okio/ByteString;->data:[B

    sget-object v2, Lextern/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lextern/okio/ByteString;->utf8:Ljava/lang/String;

    goto :goto_0
.end method

.method write(Lextern/okio/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lextern/okio/Buffer;

    .prologue
    .line 319
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lextern/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lextern/okio/Buffer;->write([BII)Lextern/okio/Buffer;

    .line 320
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    iget-object v0, p0, Lextern/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 315
    return-void
.end method
