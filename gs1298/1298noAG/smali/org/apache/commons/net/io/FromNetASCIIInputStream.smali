.class public final Lorg/apache/commons/net/io/FromNetASCIIInputStream;
.super Ljava/io/PushbackInputStream;
.source "FromNetASCIIInputStream.java"


# static fields
.field static final _lineSeparator:Ljava/lang/String;

.field static final _lineSeparatorBytes:[B

.field static final _noConversionRequired:Z


# instance fields
.field private __length:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    .line 43
    sget-object v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    .line 45
    :try_start_0
    sget-object v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Broken JVM - cannot find US-ASCII charset!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 73
    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    .line 74
    return-void
.end method

.method private __read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xd

    .line 81
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 83
    .local v0, "ch":I
    if-ne v0, v1, :cond_0

    .line 85
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 86
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 88
    sget-object v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->unread([B)V

    .line 89
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 91
    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    :cond_0
    move v1, v0

    .line 102
    :cond_1
    :goto_0
    return v1

    .line 95
    :cond_2
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 96
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->unread(I)V

    goto :goto_0
.end method

.method public static final isConversionRequired()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 165
    sget-boolean v4, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v4, :cond_1

    .line 166
    invoke-super {p0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v3

    .line 198
    :cond_0
    :goto_0
    return v3

    .line 169
    :cond_1
    if-ge p3, v5, :cond_2

    .line 170
    const/4 v3, 0x0

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->available()I

    move-result v0

    .line 177
    .local v0, "ch":I
    if-le p3, v0, :cond_5

    .end local v0    # "ch":I
    :goto_1
    iput v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    .line 180
    iget v4, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    if-ge v4, v5, :cond_3

    .line 181
    iput v5, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    .line 185
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v0

    .restart local v0    # "ch":I
    if-eq v0, v3, :cond_0

    .line 189
    move v1, p2

    .line 193
    .local v1, "off":I
    :goto_2
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    int-to-byte v4, v0

    aput-byte v4, p1, p2

    .line 195
    iget v4, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    if-lez v4, :cond_4

    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 198
    :cond_4
    sub-int v3, v2, v1

    move p2, v2

    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0

    .end local v1    # "off":I
    :cond_5
    move v0, p3

    .line 177
    goto :goto_1

    .end local p2    # "offset":I
    .restart local v1    # "off":I
    .restart local v2    # "offset":I
    :cond_6
    move p2, v2

    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_2
.end method
