.class public final Lextern/okhttp3/internal/http/RealResponseBody;
.super Lextern/okhttp3/ResponseBody;
.source "RealResponseBody.java"


# instance fields
.field private final headers:Lextern/okhttp3/Headers;

.field private final source:Lextern/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lextern/okhttp3/Headers;Lextern/okio/BufferedSource;)V
    .locals 0
    .param p1, "headers"    # Lextern/okhttp3/Headers;
    .param p2, "source"    # Lextern/okio/BufferedSource;

    .prologue
    .line 27
    invoke-direct {p0}, Lextern/okhttp3/ResponseBody;-><init>()V

    .line 28
    iput-object p1, p0, Lextern/okhttp3/internal/http/RealResponseBody;->headers:Lextern/okhttp3/Headers;

    .line 29
    iput-object p2, p0, Lextern/okhttp3/internal/http/RealResponseBody;->source:Lextern/okio/BufferedSource;

    .line 30
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealResponseBody;->headers:Lextern/okhttp3/Headers;

    invoke-static {v0}, Lextern/okhttp3/internal/http/HttpHeaders;->contentLength(Lextern/okhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lextern/okhttp3/MediaType;
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lextern/okhttp3/internal/http/RealResponseBody;->headers:Lextern/okhttp3/Headers;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lextern/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lextern/okhttp3/MediaType;->parse(Ljava/lang/String;)Lextern/okhttp3/MediaType;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public source()Lextern/okio/BufferedSource;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealResponseBody;->source:Lextern/okio/BufferedSource;

    return-object v0
.end method
