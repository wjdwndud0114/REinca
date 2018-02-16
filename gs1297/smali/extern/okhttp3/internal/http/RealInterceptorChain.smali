.class public final Lextern/okhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lextern/okhttp3/Interceptor$Chain;


# instance fields
.field private calls:I

.field private final connection:Lextern/okhttp3/Connection;

.field private final httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Lextern/okhttp3/Request;

.field private final streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Ljava/util/List;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/Connection;ILextern/okhttp3/Request;)V
    .locals 0
    .param p2, "streamAllocation"    # Lextern/okhttp3/internal/connection/StreamAllocation;
    .param p3, "httpCodec"    # Lextern/okhttp3/internal/http/HttpCodec;
    .param p4, "connection"    # Lextern/okhttp3/Connection;
    .param p5, "index"    # I
    .param p6, "request"    # Lextern/okhttp3/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Interceptor;",
            ">;",
            "Lextern/okhttp3/internal/connection/StreamAllocation;",
            "Lextern/okhttp3/internal/http/HttpCodec;",
            "Lextern/okhttp3/Connection;",
            "I",
            "Lextern/okhttp3/Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Interceptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 44
    iput-object p4, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connection:Lextern/okhttp3/Connection;

    .line 45
    iput-object p2, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    .line 46
    iput-object p3, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

    .line 47
    iput p5, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    .line 48
    iput-object p6, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->request:Lextern/okhttp3/Request;

    .line 49
    return-void
.end method

.method private sameConnection(Lextern/okhttp3/HttpUrl;)Z
    .locals 2
    .param p1, "url"    # Lextern/okhttp3/HttpUrl;

    .prologue
    .line 110
    invoke-virtual {p1}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connection:Lextern/okhttp3/Connection;

    invoke-interface {v1}, Lextern/okhttp3/Connection;->route()Lextern/okhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lextern/okhttp3/HttpUrl;->port()I

    move-result v0

    iget-object v1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connection:Lextern/okhttp3/Connection;

    invoke-interface {v1}, Lextern/okhttp3/Connection;->route()Lextern/okhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connection()Lextern/okhttp3/Connection;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connection:Lextern/okhttp3/Connection;

    return-object v0
.end method

.method public httpStream()Lextern/okhttp3/internal/http/HttpCodec;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

    return-object v0
.end method

.method public proceed(Lextern/okhttp3/Request;)Lextern/okhttp3/Response;
    .locals 3
    .param p1, "request"    # Lextern/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

    iget-object v2, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connection:Lextern/okhttp3/Connection;

    invoke-virtual {p0, p1, v0, v1, v2}, Lextern/okhttp3/internal/http/RealInterceptorChain;->proceed(Lextern/okhttp3/Request;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/Connection;)Lextern/okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public proceed(Lextern/okhttp3/Request;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/Connection;)Lextern/okhttp3/Response;
    .locals 10
    .param p1, "request"    # Lextern/okhttp3/Request;
    .param p2, "streamAllocation"    # Lextern/okhttp3/internal/connection/StreamAllocation;
    .param p3, "httpCodec"    # Lextern/okhttp3/internal/http/HttpCodec;
    .param p4, "connection"    # Lextern/okhttp3/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 73
    iget v1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v2, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 75
    :cond_0
    iget v1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 78
    iget-object v1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v1}, Lextern/okhttp3/internal/http/RealInterceptorChain;->sameConnection(Lextern/okhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v4, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must retain the same host and port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_1
    iget-object v1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

    if-eqz v1, :cond_2

    iget v1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->calls:I

    if-le v1, v9, :cond_2

    .line 85
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v4, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must call proceed() exactly once"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_2
    new-instance v0, Lextern/okhttp3/internal/http/RealInterceptorChain;

    iget-object v1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v2, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lextern/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/Connection;ILextern/okhttp3/Request;)V

    .line 92
    .local v0, "next":Lextern/okhttp3/internal/http/RealInterceptorChain;
    iget-object v1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v2, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lextern/okhttp3/Interceptor;

    .line 93
    .local v7, "interceptor":Lextern/okhttp3/Interceptor;
    invoke-interface {v7, v0}, Lextern/okhttp3/Interceptor;->intercept(Lextern/okhttp3/Interceptor$Chain;)Lextern/okhttp3/Response;

    move-result-object v8

    .line 96
    .local v8, "response":Lextern/okhttp3/Response;
    if-eqz p3, :cond_3

    iget v1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget v1, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->calls:I

    if-eq v1, v9, :cond_3

    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must call proceed() exactly once"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_3
    if-nez v8, :cond_4

    .line 103
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_4
    return-object v8
.end method

.method public request()Lextern/okhttp3/Request;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->request:Lextern/okhttp3/Request;

    return-object v0
.end method

.method public streamAllocation()Lextern/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
