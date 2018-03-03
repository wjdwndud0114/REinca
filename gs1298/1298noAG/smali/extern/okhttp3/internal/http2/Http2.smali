.class public final Lextern/okhttp3/internal/http2/Http2;
.super Ljava/lang/Object;
.source "Http2.java"


# static fields
.field static final BINARY:[Ljava/lang/String;

.field static final CONNECTION_PREFACE:Lextern/okio/ByteString;

.field static final FLAGS:[Ljava/lang/String;

.field static final FLAG_ACK:B = 0x1t

.field static final FLAG_COMPRESSED:B = 0x20t

.field static final FLAG_END_HEADERS:B = 0x4t

.field static final FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final FLAG_END_STREAM:B = 0x1t

.field static final FLAG_NONE:B = 0x0t

.field static final FLAG_PADDED:B = 0x8t

.field static final FLAG_PRIORITY:B = 0x20t

.field private static final FRAME_NAMES:[Ljava/lang/String;

.field static final INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field static final TYPE_CONTINUATION:B = 0x9t

.field static final TYPE_DATA:B = 0x0t

.field static final TYPE_GOAWAY:B = 0x7t

.field static final TYPE_HEADERS:B = 0x1t

.field static final TYPE_PING:B = 0x6t

.field static final TYPE_PRIORITY:B = 0x2t

.field static final TYPE_PUSH_PROMISE:B = 0x5t

.field static final TYPE_RST_STREAM:B = 0x3t

.field static final TYPE_SETTINGS:B = 0x4t

.field static final TYPE_WINDOW_UPDATE:B = 0x8t


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 24
    const-string v11, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v11}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v11

    sput-object v11, Lextern/okhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lextern/okio/ByteString;

    .line 51
    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "DATA"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "HEADERS"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "PRIORITY"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "RST_STREAM"

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "SETTINGS"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string v13, "PUSH_PROMISE"

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "PING"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    const-string v13, "GOAWAY"

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, "WINDOW_UPDATE"

    aput-object v13, v11, v12

    const/16 v12, 0x9

    const-string v13, "CONTINUATION"

    aput-object v13, v11, v12

    sput-object v11, Lextern/okhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    .line 68
    const/16 v11, 0x40

    new-array v11, v11, [Ljava/lang/String;

    sput-object v11, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 69
    const/16 v11, 0x100

    new-array v11, v11, [Ljava/lang/String;

    sput-object v11, Lextern/okhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 71
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    array-length v11, v11

    if-ge v4, v11, :cond_0

    .line 72
    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    const-string v12, "%8s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lextern/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x20

    const/16 v14, 0x30

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_0
    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, ""

    aput-object v13, v11, v12

    .line 76
    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/4 v12, 0x1

    const-string v13, "END_STREAM"

    aput-object v13, v11, v12

    .line 78
    const/4 v11, 0x1

    new-array v10, v11, [I

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v12, v10, v11

    .line 80
    .local v10, "prefixFlags":[I
    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v12, 0x8

    const-string v13, "PADDED"

    aput-object v13, v11, v12

    .line 81
    move-object v0, v10

    .local v0, "arr$":[I
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_1

    aget v9, v0, v5

    .line 82
    .local v9, "prefixFlag":I
    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    or-int/lit8 v12, v9, 0x8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v14, v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|PADDED"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 85
    .end local v9    # "prefixFlag":I
    :cond_1
    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/4 v12, 0x4

    const-string v13, "END_HEADERS"

    aput-object v13, v11, v12

    .line 86
    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v12, 0x20

    const-string v13, "PRIORITY"

    aput-object v13, v11, v12

    .line 87
    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v12, 0x24

    const-string v13, "END_HEADERS|PRIORITY"

    aput-object v13, v11, v12

    .line 88
    const/4 v11, 0x3

    new-array v3, v11, [I

    fill-array-data v3, :array_0

    .line 92
    .local v3, "frameFlags":[I
    move-object v0, v3

    array-length v7, v0

    const/4 v5, 0x0

    move v6, v5

    .end local v0    # "arr$":[I
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_3

    aget v2, v0, v6

    .line 93
    .local v2, "frameFlag":I
    move-object v1, v10

    .local v1, "arr$":[I
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v8, :cond_2

    aget v9, v1, v5

    .line 94
    .restart local v9    # "prefixFlag":I
    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    or-int v12, v9, v2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v14, v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x7c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v14, v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 95
    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    or-int v12, v9, v2

    or-int/lit8 v12, v12, 0x8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v14, v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x7c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v14, v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|PADDED"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 92
    .end local v9    # "prefixFlag":I
    :cond_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_2

    .line 100
    .end local v1    # "arr$":[I
    .end local v2    # "frameFlag":I
    .end local v8    # "len$":I
    :cond_3
    const/4 v4, 0x0

    :goto_4
    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    array-length v11, v11

    if-ge v4, v11, :cond_5

    .line 101
    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v11, v11, v4

    if-nez v11, :cond_4

    sget-object v11, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    sget-object v12, Lextern/okhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v12, v12, v4

    aput-object v12, v11, v4

    .line 100
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 103
    :cond_5
    return-void

    .line 88
    :array_0
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # B
    .param p1, "flags"    # B

    .prologue
    .line 147
    if-nez p1, :cond_0

    const-string v1, ""

    .line 165
    :goto_0
    return-object v1

    .line 148
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 158
    :pswitch_0
    sget-object v1, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    sget-object v1, Lextern/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 160
    .local v0, "result":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 161
    const-string v1, "HEADERS"

    const-string v2, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 151
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string v1, "ACK"

    goto :goto_0

    :cond_1
    sget-object v1, Lextern/okhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_0

    .line 156
    :pswitch_2
    sget-object v1, Lextern/okhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_0

    .line 158
    :cond_2
    sget-object v1, Lextern/okhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v0, v1, p1

    goto :goto_1

    .line 162
    .restart local v0    # "result":Ljava/lang/String;
    :cond_3
    if-nez p0, :cond_4

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4

    .line 163
    const-string v1, "PRIORITY"

    const-string v2, "COMPRESSED"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v0

    .line 165
    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static frameLog(ZIIBB)Ljava/lang/String;
    .locals 7
    .param p0, "inbound"    # Z
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    sget-object v2, Lextern/okhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge p3, v2, :cond_0

    sget-object v2, Lextern/okhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    aget-object v1, v2, p3

    .line 136
    .local v1, "formattedType":Ljava/lang/String;
    :goto_0
    invoke-static {p3, p4}, Lextern/okhttp3/internal/http2/Http2;->formatFlags(BB)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "formattedFlags":Ljava/lang/String;
    const-string v3, "%s 0x%08x %5d %-13s %s"

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v2, "<<"

    :goto_1
    aput-object v2, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const/4 v2, 0x4

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lextern/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 135
    .end local v0    # "formattedFlags":Ljava/lang/String;
    .end local v1    # "formattedType":Ljava/lang/String;
    :cond_0
    const-string v2, "0x%02x"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lextern/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 137
    .restart local v0    # "formattedFlags":Ljava/lang/String;
    .restart local v1    # "formattedType":Ljava/lang/String;
    :cond_1
    const-string v2, ">>"

    goto :goto_1
.end method

.method static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Lextern/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lextern/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
