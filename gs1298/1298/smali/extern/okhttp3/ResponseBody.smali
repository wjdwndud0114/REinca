.class public abstract Lextern/okhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lextern/okhttp3/ResponseBody;->contentType()Lextern/okhttp3/MediaType;

    move-result-object v0

    .line 171
    .local v0, "contentType":Lextern/okhttp3/MediaType;
    if-eqz v0, :cond_0

    sget-object v1, Lextern/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lextern/okhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lextern/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public static create(Lextern/okhttp3/MediaType;JLextern/okio/BufferedSource;)Lextern/okhttp3/ResponseBody;
    .locals 3
    .param p0, "contentType"    # Lextern/okhttp3/MediaType;
    .param p1, "contentLength"    # J
    .param p3, "content"    # Lextern/okio/BufferedSource;

    .prologue
    .line 204
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    new-instance v0, Lextern/okhttp3/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lextern/okhttp3/ResponseBody$1;-><init>(Lextern/okhttp3/MediaType;JLextern/okio/BufferedSource;)V

    return-object v0
.end method

.method public static create(Lextern/okhttp3/MediaType;Ljava/lang/String;)Lextern/okhttp3/ResponseBody;
    .locals 4
    .param p0, "contentType"    # Lextern/okhttp3/MediaType;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 183
    sget-object v1, Lextern/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 184
    .local v1, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    .line 185
    invoke-virtual {p0}, Lextern/okhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 186
    if-nez v1, :cond_0

    .line 187
    sget-object v1, Lextern/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; charset=utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lextern/okhttp3/MediaType;->parse(Ljava/lang/String;)Lextern/okhttp3/MediaType;

    move-result-object p0

    .line 191
    :cond_0
    new-instance v2, Lextern/okio/Buffer;

    invoke-direct {v2}, Lextern/okio/Buffer;-><init>()V

    invoke-virtual {v2, p1, v1}, Lextern/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lextern/okio/Buffer;

    move-result-object v0

    .line 192
    .local v0, "buffer":Lextern/okio/Buffer;
    invoke-virtual {v0}, Lextern/okio/Buffer;->size()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v0}, Lextern/okhttp3/ResponseBody;->create(Lextern/okhttp3/MediaType;JLextern/okio/BufferedSource;)Lextern/okhttp3/ResponseBody;

    move-result-object v2

    return-object v2
.end method

.method public static create(Lextern/okhttp3/MediaType;[B)Lextern/okhttp3/ResponseBody;
    .locals 4
    .param p0, "contentType"    # Lextern/okhttp3/MediaType;
    .param p1, "content"    # [B

    .prologue
    .line 197
    new-instance v1, Lextern/okio/Buffer;

    invoke-direct {v1}, Lextern/okio/Buffer;-><init>()V

    invoke-virtual {v1, p1}, Lextern/okio/Buffer;->write([B)Lextern/okio/Buffer;

    move-result-object v0

    .line 198
    .local v0, "buffer":Lextern/okio/Buffer;
    array-length v1, p1

    int-to-long v2, v1

    invoke-static {p0, v2, v3, v0}, Lextern/okhttp3/ResponseBody;->create(Lextern/okhttp3/MediaType;JLextern/okio/BufferedSource;)Lextern/okhttp3/ResponseBody;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lextern/okhttp3/ResponseBody;->source()Lextern/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lextern/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lextern/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    .line 129
    .local v2, "contentLength":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 130
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot buffer entire body for content length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_0
    invoke-virtual {p0}, Lextern/okhttp3/ResponseBody;->source()Lextern/okio/BufferedSource;

    move-result-object v1

    .line 136
    .local v1, "source":Lextern/okio/BufferedSource;
    :try_start_0
    invoke-interface {v1}, Lextern/okio/BufferedSource;->readByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 138
    .local v0, "bytes":[B
    invoke-static {v1}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 140
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 141
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Content-Length and stream length disagree"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v4

    invoke-static {v1}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .line 143
    .restart local v0    # "bytes":[B
    :cond_1
    return-object v0
.end method

.method public final charStream()Ljava/io/Reader;
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lextern/okhttp3/ResponseBody;->reader:Ljava/io/Reader;

    .line 153
    .local v0, "r":Ljava/io/Reader;
    if-eqz v0, :cond_0

    .end local v0    # "r":Ljava/io/Reader;
    :goto_0
    return-object v0

    .restart local v0    # "r":Ljava/io/Reader;
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    .end local v0    # "r":Ljava/io/Reader;
    invoke-virtual {p0}, Lextern/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lextern/okhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lextern/okhttp3/ResponseBody;->reader:Ljava/io/Reader;

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lextern/okhttp3/ResponseBody;->source()Lextern/okio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 176
    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lextern/okhttp3/MediaType;
.end method

.method public abstract source()Lextern/okio/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lextern/okhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    invoke-direct {p0}, Lextern/okhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
