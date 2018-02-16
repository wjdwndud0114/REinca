.class public final Lextern/okhttp3/MultipartBody;
.super Lextern/okhttp3/RequestBody;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/MultipartBody$Builder;,
        Lextern/okhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lextern/okhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lextern/okhttp3/MediaType;

.field public static final FORM:Lextern/okhttp3/MediaType;

.field public static final MIXED:Lextern/okhttp3/MediaType;

.field public static final PARALLEL:Lextern/okhttp3/MediaType;


# instance fields
.field private final boundary:Lextern/okio/ByteString;

.field private contentLength:J

.field private final contentType:Lextern/okhttp3/MediaType;

.field private final originalType:Lextern/okhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 35
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lextern/okhttp3/MediaType;->parse(Ljava/lang/String;)Lextern/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/MultipartBody;->MIXED:Lextern/okhttp3/MediaType;

    .line 42
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lextern/okhttp3/MediaType;->parse(Ljava/lang/String;)Lextern/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/MultipartBody;->ALTERNATIVE:Lextern/okhttp3/MediaType;

    .line 49
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lextern/okhttp3/MediaType;->parse(Ljava/lang/String;)Lextern/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/MultipartBody;->DIGEST:Lextern/okhttp3/MediaType;

    .line 55
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lextern/okhttp3/MediaType;->parse(Ljava/lang/String;)Lextern/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/MultipartBody;->PARALLEL:Lextern/okhttp3/MediaType;

    .line 62
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lextern/okhttp3/MediaType;->parse(Ljava/lang/String;)Lextern/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/MultipartBody;->FORM:Lextern/okhttp3/MediaType;

    .line 64
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lextern/okhttp3/MultipartBody;->COLONSPACE:[B

    .line 65
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lextern/okhttp3/MultipartBody;->CRLF:[B

    .line 66
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lextern/okhttp3/MultipartBody;->DASHDASH:[B

    return-void

    .line 64
    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 65
    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 66
    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lextern/okio/ByteString;Lextern/okhttp3/MediaType;Ljava/util/List;)V
    .locals 2
    .param p1, "boundary"    # Lextern/okio/ByteString;
    .param p2, "type"    # Lextern/okhttp3/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okio/ByteString;",
            "Lextern/okhttp3/MediaType;",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/MultipartBody$Part;>;"
    invoke-direct {p0}, Lextern/okhttp3/RequestBody;-><init>()V

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lextern/okhttp3/MultipartBody;->contentLength:J

    .line 75
    iput-object p1, p0, Lextern/okhttp3/MultipartBody;->boundary:Lextern/okio/ByteString;

    .line 76
    iput-object p2, p0, Lextern/okhttp3/MultipartBody;->originalType:Lextern/okhttp3/MediaType;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lextern/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lextern/okhttp3/MediaType;->parse(Ljava/lang/String;)Lextern/okhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/MultipartBody;->contentType:Lextern/okhttp3/MediaType;

    .line 78
    invoke-static {p3}, Lextern/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/MultipartBody;->parts:Ljava/util/List;

    .line 79
    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "target"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x22

    .line 202
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 205
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 216
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :sswitch_0
    const-string v3, "%0A"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 210
    :sswitch_1
    const-string v3, "%0D"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 213
    :sswitch_2
    const-string v3, "%22"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 220
    .end local v0    # "ch":C
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    return-object p0

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method

.method private writeOrCountBytes(Lextern/okio/BufferedSink;Z)J
    .locals 18
    .param p1, "sink"    # Lextern/okio/BufferedSink;
    .param p2, "countBytes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const-wide/16 v4, 0x0

    .line 126
    .local v4, "byteCount":J
    const/4 v3, 0x0

    .line 127
    .local v3, "byteCountBuffer":Lextern/okio/Buffer;
    if-eqz p2, :cond_0

    .line 128
    new-instance v3, Lextern/okio/Buffer;

    .end local v3    # "byteCountBuffer":Lextern/okio/Buffer;
    invoke-direct {v3}, Lextern/okio/Buffer;-><init>()V

    .restart local v3    # "byteCountBuffer":Lextern/okio/Buffer;
    move-object/from16 p1, v3

    .line 131
    :cond_0
    const/4 v12, 0x0

    .local v12, "p":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lextern/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "partCount":I
    :goto_0
    if-ge v12, v14, :cond_6

    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lextern/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lextern/okhttp3/MultipartBody$Part;

    .line 133
    .local v13, "part":Lextern/okhttp3/MultipartBody$Part;
    # getter for: Lextern/okhttp3/MultipartBody$Part;->headers:Lextern/okhttp3/Headers;
    invoke-static {v13}, Lextern/okhttp3/MultipartBody$Part;->access$000(Lextern/okhttp3/MultipartBody$Part;)Lextern/okhttp3/Headers;

    move-result-object v11

    .line 134
    .local v11, "headers":Lextern/okhttp3/Headers;
    # getter for: Lextern/okhttp3/MultipartBody$Part;->body:Lextern/okhttp3/RequestBody;
    invoke-static {v13}, Lextern/okhttp3/MultipartBody$Part;->access$100(Lextern/okhttp3/MultipartBody$Part;)Lextern/okhttp3/RequestBody;

    move-result-object v2

    .line 136
    .local v2, "body":Lextern/okhttp3/RequestBody;
    sget-object v15, Lextern/okhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lextern/okio/BufferedSink;->write([B)Lextern/okio/BufferedSink;

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lextern/okhttp3/MultipartBody;->boundary:Lextern/okio/ByteString;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lextern/okio/BufferedSink;->write(Lextern/okio/ByteString;)Lextern/okio/BufferedSink;

    .line 138
    sget-object v15, Lextern/okhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lextern/okio/BufferedSink;->write([B)Lextern/okio/BufferedSink;

    .line 140
    if-eqz v11, :cond_1

    .line 141
    const/4 v9, 0x0

    .local v9, "h":I
    invoke-virtual {v11}, Lextern/okhttp3/Headers;->size()I

    move-result v10

    .local v10, "headerCount":I
    :goto_1
    if-ge v9, v10, :cond_1

    .line 142
    invoke-virtual {v11, v9}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v15

    sget-object v16, Lextern/okhttp3/MultipartBody;->COLONSPACE:[B

    invoke-interface/range {v15 .. v16}, Lextern/okio/BufferedSink;->write([B)Lextern/okio/BufferedSink;

    move-result-object v15

    invoke-virtual {v11, v9}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v15

    sget-object v16, Lextern/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface/range {v15 .. v16}, Lextern/okio/BufferedSink;->write([B)Lextern/okio/BufferedSink;

    .line 141
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 149
    .end local v9    # "h":I
    .end local v10    # "headerCount":I
    :cond_1
    invoke-virtual {v2}, Lextern/okhttp3/RequestBody;->contentType()Lextern/okhttp3/MediaType;

    move-result-object v8

    .line 150
    .local v8, "contentType":Lextern/okhttp3/MediaType;
    if-eqz v8, :cond_2

    .line 151
    const-string v15, "Content-Type: "

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v15

    invoke-virtual {v8}, Lextern/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v15

    sget-object v16, Lextern/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface/range {v15 .. v16}, Lextern/okio/BufferedSink;->write([B)Lextern/okio/BufferedSink;

    .line 156
    :cond_2
    invoke-virtual {v2}, Lextern/okhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    .line 157
    .local v6, "contentLength":J
    const-wide/16 v16, -0x1

    cmp-long v15, v6, v16

    if-eqz v15, :cond_4

    .line 158
    const-string v15, "Content-Length: "

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v15

    invoke-interface {v15, v6, v7}, Lextern/okio/BufferedSink;->writeDecimalLong(J)Lextern/okio/BufferedSink;

    move-result-object v15

    sget-object v16, Lextern/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface/range {v15 .. v16}, Lextern/okio/BufferedSink;->write([B)Lextern/okio/BufferedSink;

    .line 167
    :cond_3
    sget-object v15, Lextern/okhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lextern/okio/BufferedSink;->write([B)Lextern/okio/BufferedSink;

    .line 169
    if-eqz p2, :cond_5

    .line 170
    add-long/2addr v4, v6

    .line 175
    :goto_2
    sget-object v15, Lextern/okhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lextern/okio/BufferedSink;->write([B)Lextern/okio/BufferedSink;

    .line 131
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 161
    :cond_4
    if-eqz p2, :cond_3

    .line 163
    invoke-virtual {v3}, Lextern/okio/Buffer;->clear()V

    .line 164
    const-wide/16 v16, -0x1

    .line 188
    .end local v2    # "body":Lextern/okhttp3/RequestBody;
    .end local v6    # "contentLength":J
    .end local v8    # "contentType":Lextern/okhttp3/MediaType;
    .end local v11    # "headers":Lextern/okhttp3/Headers;
    .end local v13    # "part":Lextern/okhttp3/MultipartBody$Part;
    :goto_3
    return-wide v16

    .line 172
    .restart local v2    # "body":Lextern/okhttp3/RequestBody;
    .restart local v6    # "contentLength":J
    .restart local v8    # "contentType":Lextern/okhttp3/MediaType;
    .restart local v11    # "headers":Lextern/okhttp3/Headers;
    .restart local v13    # "part":Lextern/okhttp3/MultipartBody$Part;
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lextern/okhttp3/RequestBody;->writeTo(Lextern/okio/BufferedSink;)V

    goto :goto_2

    .line 178
    .end local v2    # "body":Lextern/okhttp3/RequestBody;
    .end local v6    # "contentLength":J
    .end local v8    # "contentType":Lextern/okhttp3/MediaType;
    .end local v11    # "headers":Lextern/okhttp3/Headers;
    .end local v13    # "part":Lextern/okhttp3/MultipartBody$Part;
    :cond_6
    sget-object v15, Lextern/okhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lextern/okio/BufferedSink;->write([B)Lextern/okio/BufferedSink;

    .line 179
    move-object/from16 v0, p0

    iget-object v15, v0, Lextern/okhttp3/MultipartBody;->boundary:Lextern/okio/ByteString;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lextern/okio/BufferedSink;->write(Lextern/okio/ByteString;)Lextern/okio/BufferedSink;

    .line 180
    sget-object v15, Lextern/okhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lextern/okio/BufferedSink;->write([B)Lextern/okio/BufferedSink;

    .line 181
    sget-object v15, Lextern/okhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lextern/okio/BufferedSink;->write([B)Lextern/okio/BufferedSink;

    .line 183
    if-eqz p2, :cond_7

    .line 184
    invoke-virtual {v3}, Lextern/okio/Buffer;->size()J

    move-result-wide v16

    add-long v4, v4, v16

    .line 185
    invoke-virtual {v3}, Lextern/okio/Buffer;->clear()V

    :cond_7
    move-wide/from16 v16, v4

    .line 188
    goto :goto_3
.end method


# virtual methods
.method public boundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lextern/okhttp3/MultipartBody;->boundary:Lextern/okio/ByteString;

    invoke-virtual {v0}, Lextern/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-wide v0, p0, Lextern/okhttp3/MultipartBody;->contentLength:J

    .line 109
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 110
    .end local v0    # "result":J
    :goto_0
    return-wide v0

    .restart local v0    # "result":J
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lextern/okhttp3/MultipartBody;->writeOrCountBytes(Lextern/okio/BufferedSink;Z)J

    move-result-wide v0

    .end local v0    # "result":J
    iput-wide v0, p0, Lextern/okhttp3/MultipartBody;->contentLength:J

    goto :goto_0
.end method

.method public contentType()Lextern/okhttp3/MediaType;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lextern/okhttp3/MultipartBody;->contentType:Lextern/okhttp3/MediaType;

    return-object v0
.end method

.method public part(I)Lextern/okhttp3/MultipartBody$Part;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lextern/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/MultipartBody$Part;

    return-object v0
.end method

.method public parts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lextern/okhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lextern/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public type()Lextern/okhttp3/MediaType;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lextern/okhttp3/MultipartBody;->originalType:Lextern/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lextern/okio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lextern/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lextern/okhttp3/MultipartBody;->writeOrCountBytes(Lextern/okio/BufferedSink;Z)J

    .line 115
    return-void
.end method
