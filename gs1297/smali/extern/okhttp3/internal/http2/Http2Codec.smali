.class public final Lextern/okhttp3/internal/http2/Http2Codec;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lextern/okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final CONNECTION:Lextern/okio/ByteString;

.field private static final ENCODING:Lextern/okio/ByteString;

.field private static final HOST:Lextern/okio/ByteString;

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Lextern/okio/ByteString;

.field private static final PROXY_CONNECTION:Lextern/okio/ByteString;

.field private static final TE:Lextern/okio/ByteString;

.field private static final TRANSFER_ENCODING:Lextern/okio/ByteString;

.field private static final UPGRADE:Lextern/okio/ByteString;


# instance fields
.field private final client:Lextern/okhttp3/OkHttpClient;

.field private final connection:Lextern/okhttp3/internal/http2/Http2Connection;

.field private stream:Lextern/okhttp3/internal/http2/Http2Stream;

.field private final streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const-string v0, "connection"

    invoke-static {v0}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Http2Codec;->CONNECTION:Lextern/okio/ByteString;

    .line 54
    const-string v0, "host"

    invoke-static {v0}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Http2Codec;->HOST:Lextern/okio/ByteString;

    .line 55
    const-string v0, "keep-alive"

    invoke-static {v0}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lextern/okio/ByteString;

    .line 56
    const-string v0, "proxy-connection"

    invoke-static {v0}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lextern/okio/ByteString;

    .line 57
    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lextern/okio/ByteString;

    .line 58
    const-string v0, "te"

    invoke-static {v0}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Http2Codec;->TE:Lextern/okio/ByteString;

    .line 59
    const-string v0, "encoding"

    invoke-static {v0}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Http2Codec;->ENCODING:Lextern/okio/ByteString;

    .line 60
    const-string v0, "upgrade"

    invoke-static {v0}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Http2Codec;->UPGRADE:Lextern/okio/ByteString;

    .line 63
    const/16 v0, 0xc

    new-array v0, v0, [Lextern/okio/ByteString;

    sget-object v1, Lextern/okhttp3/internal/http2/Http2Codec;->CONNECTION:Lextern/okio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lextern/okhttp3/internal/http2/Http2Codec;->HOST:Lextern/okio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lextern/okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lextern/okio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lextern/okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lextern/okio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lextern/okhttp3/internal/http2/Http2Codec;->TE:Lextern/okio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lextern/okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lextern/okio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lextern/okhttp3/internal/http2/Http2Codec;->ENCODING:Lextern/okio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lextern/okhttp3/internal/http2/Http2Codec;->UPGRADE:Lextern/okio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lextern/okhttp3/internal/http2/Header;->TARGET_METHOD:Lextern/okio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lextern/okhttp3/internal/http2/Header;->TARGET_PATH:Lextern/okio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lextern/okhttp3/internal/http2/Header;->TARGET_SCHEME:Lextern/okio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lextern/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lextern/okio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lextern/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [Lextern/okio/ByteString;

    sget-object v1, Lextern/okhttp3/internal/http2/Http2Codec;->CONNECTION:Lextern/okio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lextern/okhttp3/internal/http2/Http2Codec;->HOST:Lextern/okio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lextern/okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lextern/okio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lextern/okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lextern/okio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lextern/okhttp3/internal/http2/Http2Codec;->TE:Lextern/okio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lextern/okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lextern/okio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lextern/okhttp3/internal/http2/Http2Codec;->ENCODING:Lextern/okio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lextern/okhttp3/internal/http2/Http2Codec;->UPGRADE:Lextern/okio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lextern/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lextern/okhttp3/OkHttpClient;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http2/Http2Connection;)V
    .locals 0
    .param p1, "client"    # Lextern/okhttp3/OkHttpClient;
    .param p2, "streamAllocation"    # Lextern/okhttp3/internal/connection/StreamAllocation;
    .param p3, "connection"    # Lextern/okhttp3/internal/http2/Http2Connection;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Codec;->client:Lextern/okhttp3/OkHttpClient;

    .line 94
    iput-object p2, p0, Lextern/okhttp3/internal/http2/Http2Codec;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    .line 95
    iput-object p3, p0, Lextern/okhttp3/internal/http2/Http2Codec;->connection:Lextern/okhttp3/internal/http2/Http2Connection;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lextern/okhttp3/internal/http2/Http2Codec;)Lextern/okhttp3/internal/connection/StreamAllocation;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Codec;

    .prologue
    .line 52
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Codec;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method

.method public static http2HeadersList(Lextern/okhttp3/Request;)Ljava/util/List;
    .locals 9
    .param p0, "request"    # Lextern/okhttp3/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okhttp3/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lextern/okhttp3/Request;->headers()Lextern/okhttp3/Headers;

    move-result-object v0

    .line 122
    .local v0, "headers":Lextern/okhttp3/Headers;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lextern/okhttp3/Headers;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    new-instance v5, Lextern/okhttp3/internal/http2/Header;

    sget-object v6, Lextern/okhttp3/internal/http2/Header;->TARGET_METHOD:Lextern/okio/ByteString;

    invoke-virtual {p0}, Lextern/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lextern/okhttp3/internal/http2/Header;-><init>(Lextern/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v5, Lextern/okhttp3/internal/http2/Header;

    sget-object v6, Lextern/okhttp3/internal/http2/Header;->TARGET_PATH:Lextern/okio/ByteString;

    invoke-virtual {p0}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v7

    invoke-static {v7}, Lextern/okhttp3/internal/http/RequestLine;->requestPath(Lextern/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lextern/okhttp3/internal/http2/Header;-><init>(Lextern/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v5, Lextern/okhttp3/internal/http2/Header;

    sget-object v6, Lextern/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lextern/okio/ByteString;

    invoke-virtual {p0}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lextern/okhttp3/internal/Util;->hostHeader(Lextern/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lextern/okhttp3/internal/http2/Header;-><init>(Lextern/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v5, Lextern/okhttp3/internal/http2/Header;

    sget-object v6, Lextern/okhttp3/internal/http2/Header;->TARGET_SCHEME:Lextern/okio/ByteString;

    invoke-virtual {p0}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lextern/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lextern/okhttp3/internal/http2/Header;-><init>(Lextern/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Lextern/okhttp3/Headers;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 130
    invoke-virtual {v0, v1}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v2

    .line 131
    .local v2, "name":Lextern/okio/ByteString;
    sget-object v5, Lextern/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    new-instance v5, Lextern/okhttp3/internal/http2/Header;

    invoke-virtual {v0, v1}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lextern/okhttp3/internal/http2/Header;-><init>(Lextern/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v2    # "name":Lextern/okio/ByteString;
    :cond_1
    return-object v3
.end method

.method public static readHttp2HeadersList(Ljava/util/List;)Lextern/okhttp3/Response$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;)",
            "Lextern/okhttp3/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    const/4 v4, 0x0

    .line 142
    .local v4, "status":Ljava/lang/String;
    new-instance v0, Lextern/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lextern/okhttp3/Headers$Builder;-><init>()V

    .line 143
    .local v0, "headersBuilder":Lextern/okhttp3/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 144
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lextern/okhttp3/internal/http2/Header;

    iget-object v2, v7, Lextern/okhttp3/internal/http2/Header;->name:Lextern/okio/ByteString;

    .line 146
    .local v2, "name":Lextern/okio/ByteString;
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lextern/okhttp3/internal/http2/Header;

    iget-object v7, v7, Lextern/okhttp3/internal/http2/Header;->value:Lextern/okio/ByteString;

    invoke-virtual {v7}, Lextern/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "value":Ljava/lang/String;
    sget-object v7, Lextern/okhttp3/internal/http2/Header;->RESPONSE_STATUS:Lextern/okio/ByteString;

    invoke-virtual {v2, v7}, Lextern/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    move-object v4, v6

    .line 143
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    sget-object v7, Lextern/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 150
    sget-object v7, Lextern/okhttp3/internal/Internal;->instance:Lextern/okhttp3/internal/Internal;

    invoke-virtual {v2}, Lextern/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8, v6}, Lextern/okhttp3/internal/Internal;->addLenient(Lextern/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    .end local v2    # "name":Lextern/okio/ByteString;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_3

    new-instance v7, Ljava/net/ProtocolException;

    const-string v8, "Expected \':status\' header not present"

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 155
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lextern/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lextern/okhttp3/internal/http/StatusLine;

    move-result-object v5

    .line 156
    .local v5, "statusLine":Lextern/okhttp3/internal/http/StatusLine;
    new-instance v7, Lextern/okhttp3/Response$Builder;

    invoke-direct {v7}, Lextern/okhttp3/Response$Builder;-><init>()V

    sget-object v8, Lextern/okhttp3/Protocol;->HTTP_2:Lextern/okhttp3/Protocol;

    invoke-virtual {v7, v8}, Lextern/okhttp3/Response$Builder;->protocol(Lextern/okhttp3/Protocol;)Lextern/okhttp3/Response$Builder;

    move-result-object v7

    iget v8, v5, Lextern/okhttp3/internal/http/StatusLine;->code:I

    invoke-virtual {v7, v8}, Lextern/okhttp3/Response$Builder;->code(I)Lextern/okhttp3/Response$Builder;

    move-result-object v7

    iget-object v8, v5, Lextern/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lextern/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lextern/okhttp3/Response$Builder;

    move-result-object v7

    invoke-virtual {v0}, Lextern/okhttp3/Headers$Builder;->build()Lextern/okhttp3/Headers;

    move-result-object v8

    invoke-virtual {v7, v8}, Lextern/okhttp3/Response$Builder;->headers(Lextern/okhttp3/Headers;)Lextern/okhttp3/Response$Builder;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Codec;->stream:Lextern/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Codec;->stream:Lextern/okhttp3/internal/http2/Http2Stream;

    sget-object v1, Lextern/okhttp3/internal/http2/ErrorCode;->CANCEL:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lextern/okhttp3/internal/http2/Http2Stream;->closeLater(Lextern/okhttp3/internal/http2/ErrorCode;)V

    .line 170
    :cond_0
    return-void
.end method

.method public createRequestBody(Lextern/okhttp3/Request;J)Lextern/okio/Sink;
    .locals 1
    .param p1, "request"    # Lextern/okhttp3/Request;
    .param p2, "contentLength"    # J

    .prologue
    .line 99
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Codec;->stream:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->getSink()Lextern/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Codec;->stream:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->getSink()Lextern/okio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lextern/okio/Sink;->close()V

    .line 114
    return-void
.end method

.method public openResponseBody(Lextern/okhttp3/Response;)Lextern/okhttp3/ResponseBody;
    .locals 4
    .param p1, "response"    # Lextern/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lextern/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;

    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Codec;->stream:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lextern/okhttp3/internal/http2/Http2Stream;->getSource()Lextern/okio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lextern/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;-><init>(Lextern/okhttp3/internal/http2/Http2Codec;Lextern/okio/Source;)V

    .line 165
    .local v0, "source":Lextern/okio/Source;
    new-instance v1, Lextern/okhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v2

    invoke-static {v0}, Lextern/okio/Okio;->buffer(Lextern/okio/Source;)Lextern/okio/BufferedSource;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lextern/okhttp3/internal/http/RealResponseBody;-><init>(Lextern/okhttp3/Headers;Lextern/okio/BufferedSource;)V

    return-object v1
.end method

.method public readResponseHeaders()Lextern/okhttp3/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Codec;->stream:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Codec;->readHttp2HeadersList(Ljava/util/List;)Lextern/okhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeRequestHeaders(Lextern/okhttp3/Request;)V
    .locals 6
    .param p1, "request"    # Lextern/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Codec;->stream:Lextern/okhttp3/internal/http2/Http2Stream;

    if-eqz v2, :cond_0

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Lextern/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lextern/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    .line 106
    .local v0, "permitsRequestBody":Z
    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Codec;->http2HeadersList(Lextern/okhttp3/Request;)Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Codec;->connection:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2, v1, v0}, Lextern/okhttp3/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Lextern/okhttp3/internal/http2/Http2Stream;

    move-result-object v2

    iput-object v2, p0, Lextern/okhttp3/internal/http2/Http2Codec;->stream:Lextern/okhttp3/internal/http2/Http2Stream;

    .line 108
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Codec;->stream:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v2}, Lextern/okhttp3/internal/http2/Http2Stream;->readTimeout()Lextern/okio/Timeout;

    move-result-object v2

    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Codec;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lextern/okhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v3

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lextern/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lextern/okio/Timeout;

    .line 109
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Codec;->stream:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v2}, Lextern/okhttp3/internal/http2/Http2Stream;->writeTimeout()Lextern/okio/Timeout;

    move-result-object v2

    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Codec;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lextern/okhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v3

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lextern/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lextern/okio/Timeout;

    goto :goto_0
.end method
