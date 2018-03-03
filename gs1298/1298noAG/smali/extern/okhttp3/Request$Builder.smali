.class public Lextern/okhttp3/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lextern/okhttp3/RequestBody;

.field private headers:Lextern/okhttp3/Headers$Builder;

.field private method:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private url:Lextern/okhttp3/HttpUrl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string v0, "GET"

    iput-object v0, p0, Lextern/okhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 108
    new-instance v0, Lextern/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lextern/okhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/Request$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    .line 109
    return-void
.end method

.method private constructor <init>(Lextern/okhttp3/Request;)V
    .locals 1
    .param p1, "request"    # Lextern/okhttp3/Request;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    # getter for: Lextern/okhttp3/Request;->url:Lextern/okhttp3/HttpUrl;
    invoke-static {p1}, Lextern/okhttp3/Request;->access$600(Lextern/okhttp3/Request;)Lextern/okhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Request$Builder;->url:Lextern/okhttp3/HttpUrl;

    .line 113
    # getter for: Lextern/okhttp3/Request;->method:Ljava/lang/String;
    invoke-static {p1}, Lextern/okhttp3/Request;->access$700(Lextern/okhttp3/Request;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 114
    # getter for: Lextern/okhttp3/Request;->body:Lextern/okhttp3/RequestBody;
    invoke-static {p1}, Lextern/okhttp3/Request;->access$800(Lextern/okhttp3/Request;)Lextern/okhttp3/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Request$Builder;->body:Lextern/okhttp3/RequestBody;

    .line 115
    # getter for: Lextern/okhttp3/Request;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lextern/okhttp3/Request;->access$900(Lextern/okhttp3/Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Request$Builder;->tag:Ljava/lang/Object;

    .line 116
    # getter for: Lextern/okhttp3/Request;->headers:Lextern/okhttp3/Headers;
    invoke-static {p1}, Lextern/okhttp3/Request;->access$1000(Lextern/okhttp3/Request;)Lextern/okhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/Headers;->newBuilder()Lextern/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Request$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/Request;Lextern/okhttp3/Request$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/Request;
    .param p2, "x1"    # Lextern/okhttp3/Request$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lextern/okhttp3/Request$Builder;-><init>(Lextern/okhttp3/Request;)V

    return-void
.end method

.method static synthetic access$000(Lextern/okhttp3/Request$Builder;)Lextern/okhttp3/HttpUrl;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Request$Builder;

    .prologue
    .line 99
    iget-object v0, p0, Lextern/okhttp3/Request$Builder;->url:Lextern/okhttp3/HttpUrl;

    return-object v0
.end method

.method static synthetic access$100(Lextern/okhttp3/Request$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Request$Builder;

    .prologue
    .line 99
    iget-object v0, p0, Lextern/okhttp3/Request$Builder;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lextern/okhttp3/Request$Builder;)Lextern/okhttp3/Headers$Builder;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Request$Builder;

    .prologue
    .line 99
    iget-object v0, p0, Lextern/okhttp3/Request$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    return-object v0
.end method

.method static synthetic access$300(Lextern/okhttp3/Request$Builder;)Lextern/okhttp3/RequestBody;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Request$Builder;

    .prologue
    .line 99
    iget-object v0, p0, Lextern/okhttp3/Request$Builder;->body:Lextern/okhttp3/RequestBody;

    return-object v0
.end method

.method static synthetic access$400(Lextern/okhttp3/Request$Builder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Request$Builder;

    .prologue
    .line 99
    iget-object v0, p0, Lextern/okhttp3/Request$Builder;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lextern/okhttp3/Request$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lextern/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 177
    return-object p0
.end method

.method public build()Lextern/okhttp3/Request;
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lextern/okhttp3/Request$Builder;->url:Lextern/okhttp3/HttpUrl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    new-instance v0, Lextern/okhttp3/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lextern/okhttp3/Request;-><init>(Lextern/okhttp3/Request$Builder;Lextern/okhttp3/Request$1;)V

    return-object v0
.end method

.method public cacheControl(Lextern/okhttp3/CacheControl;)Lextern/okhttp3/Request$Builder;
    .locals 2
    .param p1, "cacheControl"    # Lextern/okhttp3/CacheControl;

    .prologue
    .line 197
    invoke-virtual {p1}, Lextern/okhttp3/CacheControl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1}, Lextern/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lextern/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    move-result-object v1

    goto :goto_0
.end method

.method public delete()Lextern/okhttp3/Request$Builder;
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lextern/okhttp3/RequestBody;->create(Lextern/okhttp3/MediaType;[B)Lextern/okhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lextern/okhttp3/Request$Builder;->delete(Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;
    .locals 1
    .param p1, "body"    # Lextern/okhttp3/RequestBody;

    .prologue
    .line 215
    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lextern/okhttp3/Request$Builder;->method(Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lextern/okhttp3/Request$Builder;
    .locals 2

    .prologue
    .line 203
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lextern/okhttp3/Request$Builder;->method(Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lextern/okhttp3/Request$Builder;
    .locals 2

    .prologue
    .line 207
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lextern/okhttp3/Request$Builder;->method(Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lextern/okhttp3/Request$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lextern/okhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 165
    return-object p0
.end method

.method public headers(Lextern/okhttp3/Headers;)Lextern/okhttp3/Request$Builder;
    .locals 1
    .param p1, "headers"    # Lextern/okhttp3/Headers;

    .prologue
    .line 187
    invoke-virtual {p1}, Lextern/okhttp3/Headers;->newBuilder()Lextern/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Request$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    .line 188
    return-object p0
.end method

.method public method(Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lextern/okhttp3/RequestBody;

    .prologue
    .line 231
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lextern/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lextern/okhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_3
    iput-object p1, p0, Lextern/okhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lextern/okhttp3/Request$Builder;->body:Lextern/okhttp3/RequestBody;

    .line 241
    return-object p0
.end method

.method public patch(Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;
    .locals 1
    .param p1, "body"    # Lextern/okhttp3/RequestBody;

    .prologue
    .line 227
    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lextern/okhttp3/Request$Builder;->method(Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public post(Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;
    .locals 1
    .param p1, "body"    # Lextern/okhttp3/RequestBody;

    .prologue
    .line 211
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lextern/okhttp3/Request$Builder;->method(Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;
    .locals 1
    .param p1, "body"    # Lextern/okhttp3/RequestBody;

    .prologue
    .line 223
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lextern/okhttp3/Request$Builder;->method(Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lextern/okhttp3/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lextern/okhttp3/Request$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lextern/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 182
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lextern/okhttp3/Request$Builder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 249
    iput-object p1, p0, Lextern/okhttp3/Request$Builder;->tag:Ljava/lang/Object;

    .line 250
    return-object p0
.end method

.method public url(Lextern/okhttp3/HttpUrl;)Lextern/okhttp3/Request$Builder;
    .locals 2
    .param p1, "url"    # Lextern/okhttp3/HttpUrl;

    .prologue
    .line 120
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iput-object p1, p0, Lextern/okhttp3/Request$Builder;->url:Lextern/okhttp3/HttpUrl;

    .line 122
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lextern/okhttp3/Request$Builder;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    const-string v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_1
    :goto_0
    invoke-static {p1}, Lextern/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Lextern/okhttp3/HttpUrl;

    move-result-object v6

    .line 142
    .local v6, "parsed":Lextern/okhttp3/HttpUrl;
    if-nez v6, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    .end local v6    # "parsed":Lextern/okhttp3/HttpUrl;
    :cond_2
    const-string v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 143
    .restart local v6    # "parsed":Lextern/okhttp3/HttpUrl;
    :cond_3
    invoke-virtual {p0, v6}, Lextern/okhttp3/Request$Builder;->url(Lextern/okhttp3/HttpUrl;)Lextern/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/net/URL;)Lextern/okhttp3/Request$Builder;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 153
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "url == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_0
    invoke-static {p1}, Lextern/okhttp3/HttpUrl;->get(Ljava/net/URL;)Lextern/okhttp3/HttpUrl;

    move-result-object v0

    .line 155
    .local v0, "parsed":Lextern/okhttp3/HttpUrl;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_1
    invoke-virtual {p0, v0}, Lextern/okhttp3/Request$Builder;->url(Lextern/okhttp3/HttpUrl;)Lextern/okhttp3/Request$Builder;

    move-result-object v1

    return-object v1
.end method
