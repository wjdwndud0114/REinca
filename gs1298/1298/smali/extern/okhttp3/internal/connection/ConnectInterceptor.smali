.class public final Lextern/okhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lextern/okhttp3/Interceptor;


# instance fields
.field public final client:Lextern/okhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lextern/okhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "client"    # Lextern/okhttp3/OkHttpClient;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lextern/okhttp3/internal/connection/ConnectInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    .line 34
    return-void
.end method


# virtual methods
.method public intercept(Lextern/okhttp3/Interceptor$Chain;)Lextern/okhttp3/Response;
    .locals 8
    .param p1, "chain"    # Lextern/okhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    move-object v3, p1

    check-cast v3, Lextern/okhttp3/internal/http/RealInterceptorChain;

    .line 38
    .local v3, "realChain":Lextern/okhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v3}, Lextern/okhttp3/internal/http/RealInterceptorChain;->request()Lextern/okhttp3/Request;

    move-result-object v4

    .line 39
    .local v4, "request":Lextern/okhttp3/Request;
    invoke-virtual {v3}, Lextern/okhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lextern/okhttp3/internal/connection/StreamAllocation;

    move-result-object v5

    .line 42
    .local v5, "streamAllocation":Lextern/okhttp3/internal/connection/StreamAllocation;
    invoke-virtual {v4}, Lextern/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .line 43
    .local v1, "doExtensiveHealthChecks":Z
    :goto_0
    iget-object v6, p0, Lextern/okhttp3/internal/connection/ConnectInterceptor;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v5, v6, v1}, Lextern/okhttp3/internal/connection/StreamAllocation;->newStream(Lextern/okhttp3/OkHttpClient;Z)Lextern/okhttp3/internal/http/HttpCodec;

    move-result-object v2

    .line 44
    .local v2, "httpCodec":Lextern/okhttp3/internal/http/HttpCodec;
    invoke-virtual {v5}, Lextern/okhttp3/internal/connection/StreamAllocation;->connection()Lextern/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 46
    .local v0, "connection":Lextern/okhttp3/internal/connection/RealConnection;
    invoke-virtual {v3, v4, v5, v2, v0}, Lextern/okhttp3/internal/http/RealInterceptorChain;->proceed(Lextern/okhttp3/Request;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/Connection;)Lextern/okhttp3/Response;

    move-result-object v6

    return-object v6

    .line 42
    .end local v0    # "connection":Lextern/okhttp3/internal/connection/RealConnection;
    .end local v1    # "doExtensiveHealthChecks":Z
    .end local v2    # "httpCodec":Lextern/okhttp3/internal/http/HttpCodec;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
