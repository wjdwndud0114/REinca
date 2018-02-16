.class public final Lextern/okhttp3/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/Response$1;,
        Lextern/okhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field private final body:Lextern/okhttp3/ResponseBody;

.field private volatile cacheControl:Lextern/okhttp3/CacheControl;

.field private final cacheResponse:Lextern/okhttp3/Response;

.field private final code:I

.field private final handshake:Lextern/okhttp3/Handshake;

.field private final headers:Lextern/okhttp3/Headers;

.field private final message:Ljava/lang/String;

.field private final networkResponse:Lextern/okhttp3/Response;

.field private final priorResponse:Lextern/okhttp3/Response;

.field private final protocol:Lextern/okhttp3/Protocol;

.field private final receivedResponseAtMillis:J

.field private final request:Lextern/okhttp3/Request;

.field private final sentRequestAtMillis:J


# direct methods
.method private constructor <init>(Lextern/okhttp3/Response$Builder;)V
    .locals 2
    .param p1, "builder"    # Lextern/okhttp3/Response$Builder;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    # getter for: Lextern/okhttp3/Response$Builder;->request:Lextern/okhttp3/Request;
    invoke-static {p1}, Lextern/okhttp3/Response$Builder;->access$000(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response;->request:Lextern/okhttp3/Request;

    .line 61
    # getter for: Lextern/okhttp3/Response$Builder;->protocol:Lextern/okhttp3/Protocol;
    invoke-static {p1}, Lextern/okhttp3/Response$Builder;->access$100(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response;->protocol:Lextern/okhttp3/Protocol;

    .line 62
    # getter for: Lextern/okhttp3/Response$Builder;->code:I
    invoke-static {p1}, Lextern/okhttp3/Response$Builder;->access$200(Lextern/okhttp3/Response$Builder;)I

    move-result v0

    iput v0, p0, Lextern/okhttp3/Response;->code:I

    .line 63
    # getter for: Lextern/okhttp3/Response$Builder;->message:Ljava/lang/String;
    invoke-static {p1}, Lextern/okhttp3/Response$Builder;->access$300(Lextern/okhttp3/Response$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response;->message:Ljava/lang/String;

    .line 64
    # getter for: Lextern/okhttp3/Response$Builder;->handshake:Lextern/okhttp3/Handshake;
    invoke-static {p1}, Lextern/okhttp3/Response$Builder;->access$400(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response;->handshake:Lextern/okhttp3/Handshake;

    .line 65
    # getter for: Lextern/okhttp3/Response$Builder;->headers:Lextern/okhttp3/Headers$Builder;
    invoke-static {p1}, Lextern/okhttp3/Response$Builder;->access$500(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/Headers$Builder;->build()Lextern/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response;->headers:Lextern/okhttp3/Headers;

    .line 66
    # getter for: Lextern/okhttp3/Response$Builder;->body:Lextern/okhttp3/ResponseBody;
    invoke-static {p1}, Lextern/okhttp3/Response$Builder;->access$600(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response;->body:Lextern/okhttp3/ResponseBody;

    .line 67
    # getter for: Lextern/okhttp3/Response$Builder;->networkResponse:Lextern/okhttp3/Response;
    invoke-static {p1}, Lextern/okhttp3/Response$Builder;->access$700(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response;->networkResponse:Lextern/okhttp3/Response;

    .line 68
    # getter for: Lextern/okhttp3/Response$Builder;->cacheResponse:Lextern/okhttp3/Response;
    invoke-static {p1}, Lextern/okhttp3/Response$Builder;->access$800(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response;->cacheResponse:Lextern/okhttp3/Response;

    .line 69
    # getter for: Lextern/okhttp3/Response$Builder;->priorResponse:Lextern/okhttp3/Response;
    invoke-static {p1}, Lextern/okhttp3/Response$Builder;->access$900(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response;->priorResponse:Lextern/okhttp3/Response;

    .line 70
    # getter for: Lextern/okhttp3/Response$Builder;->sentRequestAtMillis:J
    invoke-static {p1}, Lextern/okhttp3/Response$Builder;->access$1000(Lextern/okhttp3/Response$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lextern/okhttp3/Response;->sentRequestAtMillis:J

    .line 71
    # getter for: Lextern/okhttp3/Response$Builder;->receivedResponseAtMillis:J
    invoke-static {p1}, Lextern/okhttp3/Response$Builder;->access$1100(Lextern/okhttp3/Response$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lextern/okhttp3/Response;->receivedResponseAtMillis:J

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/Response$Builder;Lextern/okhttp3/Response$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/Response$Builder;
    .param p2, "x1"    # Lextern/okhttp3/Response$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lextern/okhttp3/Response;-><init>(Lextern/okhttp3/Response$Builder;)V

    return-void
.end method

.method static synthetic access$1300(Lextern/okhttp3/Response;)Lextern/okhttp3/Request;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response;

    .prologue
    .line 43
    iget-object v0, p0, Lextern/okhttp3/Response;->request:Lextern/okhttp3/Request;

    return-object v0
.end method

.method static synthetic access$1400(Lextern/okhttp3/Response;)Lextern/okhttp3/Protocol;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response;

    .prologue
    .line 43
    iget-object v0, p0, Lextern/okhttp3/Response;->protocol:Lextern/okhttp3/Protocol;

    return-object v0
.end method

.method static synthetic access$1500(Lextern/okhttp3/Response;)I
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response;

    .prologue
    .line 43
    iget v0, p0, Lextern/okhttp3/Response;->code:I

    return v0
.end method

.method static synthetic access$1600(Lextern/okhttp3/Response;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response;

    .prologue
    .line 43
    iget-object v0, p0, Lextern/okhttp3/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lextern/okhttp3/Response;)Lextern/okhttp3/Handshake;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response;

    .prologue
    .line 43
    iget-object v0, p0, Lextern/okhttp3/Response;->handshake:Lextern/okhttp3/Handshake;

    return-object v0
.end method

.method static synthetic access$1800(Lextern/okhttp3/Response;)Lextern/okhttp3/Headers;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response;

    .prologue
    .line 43
    iget-object v0, p0, Lextern/okhttp3/Response;->headers:Lextern/okhttp3/Headers;

    return-object v0
.end method

.method static synthetic access$1900(Lextern/okhttp3/Response;)Lextern/okhttp3/ResponseBody;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response;

    .prologue
    .line 43
    iget-object v0, p0, Lextern/okhttp3/Response;->body:Lextern/okhttp3/ResponseBody;

    return-object v0
.end method

.method static synthetic access$2000(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response;

    .prologue
    .line 43
    iget-object v0, p0, Lextern/okhttp3/Response;->networkResponse:Lextern/okhttp3/Response;

    return-object v0
.end method

.method static synthetic access$2100(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response;

    .prologue
    .line 43
    iget-object v0, p0, Lextern/okhttp3/Response;->cacheResponse:Lextern/okhttp3/Response;

    return-object v0
.end method

.method static synthetic access$2200(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response;

    .prologue
    .line 43
    iget-object v0, p0, Lextern/okhttp3/Response;->priorResponse:Lextern/okhttp3/Response;

    return-object v0
.end method

.method static synthetic access$2300(Lextern/okhttp3/Response;)J
    .locals 2
    .param p0, "x0"    # Lextern/okhttp3/Response;

    .prologue
    .line 43
    iget-wide v0, p0, Lextern/okhttp3/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method static synthetic access$2400(Lextern/okhttp3/Response;)J
    .locals 2
    .param p0, "x0"    # Lextern/okhttp3/Response;

    .prologue
    .line 43
    iget-wide v0, p0, Lextern/okhttp3/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method


# virtual methods
.method public body()Lextern/okhttp3/ResponseBody;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lextern/okhttp3/Response;->body:Lextern/okhttp3/ResponseBody;

    return-object v0
.end method

.method public cacheControl()Lextern/okhttp3/CacheControl;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lextern/okhttp3/Response;->cacheControl:Lextern/okhttp3/CacheControl;

    .line 246
    .local v0, "result":Lextern/okhttp3/CacheControl;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lextern/okhttp3/CacheControl;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lextern/okhttp3/CacheControl;
    :cond_0
    iget-object v1, p0, Lextern/okhttp3/Response;->headers:Lextern/okhttp3/Headers;

    invoke-static {v1}, Lextern/okhttp3/CacheControl;->parse(Lextern/okhttp3/Headers;)Lextern/okhttp3/CacheControl;

    move-result-object v0

    .end local v0    # "result":Lextern/okhttp3/CacheControl;
    iput-object v0, p0, Lextern/okhttp3/Response;->cacheControl:Lextern/okhttp3/CacheControl;

    goto :goto_0
.end method

.method public cacheResponse()Lextern/okhttp3/Response;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lextern/okhttp3/Response;->cacheResponse:Lextern/okhttp3/Response;

    return-object v0
.end method

.method public challenges()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget v1, p0, Lextern/okhttp3/Response;->code:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    .line 231
    const-string v0, "WWW-Authenticate"

    .line 237
    .local v0, "responseField":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lextern/okhttp3/internal/http/HttpHeaders;->parseChallenges(Lextern/okhttp3/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .end local v0    # "responseField":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 232
    :cond_0
    iget v1, p0, Lextern/okhttp3/Response;->code:I

    const/16 v2, 0x197

    if-ne v1, v2, :cond_1

    .line 233
    const-string v0, "Proxy-Authenticate"

    .restart local v0    # "responseField":Ljava/lang/String;
    goto :goto_0

    .line 235
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lextern/okhttp3/Response;->body:Lextern/okhttp3/ResponseBody;

    invoke-virtual {v0}, Lextern/okhttp3/ResponseBody;->close()V

    .line 270
    return-void
.end method

.method public code()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lextern/okhttp3/Response;->code:I

    return v0
.end method

.method public handshake()Lextern/okhttp3/Handshake;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lextern/okhttp3/Response;->handshake:Lextern/okhttp3/Handshake;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lextern/okhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v1, p0, Lextern/okhttp3/Response;->headers:Lextern/okhttp3/Headers;

    invoke-virtual {v1, p1}, Lextern/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public headers()Lextern/okhttp3/Headers;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lextern/okhttp3/Response;->headers:Lextern/okhttp3/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lextern/okhttp3/Response;->headers:Lextern/okhttp3/Headers;

    invoke-virtual {v0, p1}, Lextern/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isRedirect()Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lextern/okhttp3/Response;->code:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 188
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isSuccessful()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lextern/okhttp3/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lextern/okhttp3/Response;->code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lextern/okhttp3/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public networkResponse()Lextern/okhttp3/Response;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lextern/okhttp3/Response;->networkResponse:Lextern/okhttp3/Response;

    return-object v0
.end method

.method public newBuilder()Lextern/okhttp3/Response$Builder;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lextern/okhttp3/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lextern/okhttp3/Response$Builder;-><init>(Lextern/okhttp3/Response;Lextern/okhttp3/Response$1;)V

    return-object v0
.end method

.method public peekBody(J)Lextern/okhttp3/ResponseBody;
    .locals 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v3, p0, Lextern/okhttp3/Response;->body:Lextern/okhttp3/ResponseBody;

    invoke-virtual {v3}, Lextern/okhttp3/ResponseBody;->source()Lextern/okio/BufferedSource;

    move-result-object v2

    .line 152
    .local v2, "source":Lextern/okio/BufferedSource;
    invoke-interface {v2, p1, p2}, Lextern/okio/BufferedSource;->request(J)Z

    .line 153
    invoke-interface {v2}, Lextern/okio/BufferedSource;->buffer()Lextern/okio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okio/Buffer;->clone()Lextern/okio/Buffer;

    move-result-object v0

    .line 157
    .local v0, "copy":Lextern/okio/Buffer;
    invoke-virtual {v0}, Lextern/okio/Buffer;->size()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-lez v3, :cond_0

    .line 158
    new-instance v1, Lextern/okio/Buffer;

    invoke-direct {v1}, Lextern/okio/Buffer;-><init>()V

    .line 159
    .local v1, "result":Lextern/okio/Buffer;
    invoke-virtual {v1, v0, p1, p2}, Lextern/okio/Buffer;->write(Lextern/okio/Buffer;J)V

    .line 160
    invoke-virtual {v0}, Lextern/okio/Buffer;->clear()V

    .line 165
    :goto_0
    iget-object v3, p0, Lextern/okhttp3/Response;->body:Lextern/okhttp3/ResponseBody;

    invoke-virtual {v3}, Lextern/okhttp3/ResponseBody;->contentType()Lextern/okhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v1}, Lextern/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v1}, Lextern/okhttp3/ResponseBody;->create(Lextern/okhttp3/MediaType;JLextern/okio/BufferedSource;)Lextern/okhttp3/ResponseBody;

    move-result-object v3

    return-object v3

    .line 162
    .end local v1    # "result":Lextern/okio/Buffer;
    :cond_0
    move-object v1, v0

    .restart local v1    # "result":Lextern/okio/Buffer;
    goto :goto_0
.end method

.method public priorResponse()Lextern/okhttp3/Response;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lextern/okhttp3/Response;->priorResponse:Lextern/okhttp3/Response;

    return-object v0
.end method

.method public protocol()Lextern/okhttp3/Protocol;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lextern/okhttp3/Response;->protocol:Lextern/okhttp3/Protocol;

    return-object v0
.end method

.method public receivedResponseAtMillis()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lextern/okhttp3/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method public request()Lextern/okhttp3/Request;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lextern/okhttp3/Response;->request:Lextern/okhttp3/Request;

    return-object v0
.end method

.method public sentRequestAtMillis()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lextern/okhttp3/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/Response;->protocol:Lextern/okhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lextern/okhttp3/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/Response;->request:Lextern/okhttp3/Request;

    invoke-virtual {v1}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
