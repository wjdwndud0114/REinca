.class final Lextern/okhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lextern/okhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/RealCall$1;,
        Lextern/okhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field private final client:Lextern/okhttp3/OkHttpClient;

.field private executed:Z

.field originalRequest:Lextern/okhttp3/Request;

.field private final retryAndFollowUpInterceptor:Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;


# direct methods
.method protected constructor <init>(Lextern/okhttp3/OkHttpClient;Lextern/okhttp3/Request;)V
    .locals 1
    .param p1, "client"    # Lextern/okhttp3/OkHttpClient;
    .param p2, "originalRequest"    # Lextern/okhttp3/Request;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;

    .line 46
    iput-object p2, p0, Lextern/okhttp3/RealCall;->originalRequest:Lextern/okhttp3/Request;

    .line 47
    new-instance v0, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-direct {v0, p1}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lextern/okhttp3/OkHttpClient;)V

    iput-object v0, p0, Lextern/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lextern/okhttp3/RealCall;)Lextern/okhttp3/Response;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/RealCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lextern/okhttp3/RealCall;->getResponseWithInterceptorChain()Lextern/okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lextern/okhttp3/RealCall;)Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/RealCall;

    .prologue
    .line 34
    iget-object v0, p0, Lextern/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    return-object v0
.end method

.method static synthetic access$300(Lextern/okhttp3/RealCall;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/RealCall;

    .prologue
    .line 34
    invoke-direct {p0}, Lextern/okhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lextern/okhttp3/RealCall;)Lextern/okhttp3/OkHttpClient;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/RealCall;

    .prologue
    .line 34
    iget-object v0, p0, Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;

    return-object v0
.end method

.method private captureCallStackTrace()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v1

    const-string v2, "response.body().close()"

    invoke-virtual {v1, v2}, Lextern/okhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "callStackTrace":Ljava/lang/Object;
    iget-object v1, p0, Lextern/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1, v0}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->setCallStackTrace(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method private getResponseWithInterceptorChain()Lextern/okhttp3/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Interceptor;>;"
    iget-object v3, p0, Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lextern/okhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    iget-object v3, p0, Lextern/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v3, Lextern/okhttp3/internal/http/BridgeInterceptor;

    iget-object v4, p0, Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v4}, Lextern/okhttp3/OkHttpClient;->cookieJar()Lextern/okhttp3/CookieJar;

    move-result-object v4

    invoke-direct {v3, v4}, Lextern/okhttp3/internal/http/BridgeInterceptor;-><init>(Lextern/okhttp3/CookieJar;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v3, Lextern/okhttp3/internal/cache/CacheInterceptor;

    iget-object v4, p0, Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v4}, Lextern/okhttp3/OkHttpClient;->internalCache()Lextern/okhttp3/internal/cache/InternalCache;

    move-result-object v4

    invoke-direct {v3, v4}, Lextern/okhttp3/internal/cache/CacheInterceptor;-><init>(Lextern/okhttp3/internal/cache/InternalCache;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v3, Lextern/okhttp3/internal/connection/ConnectInterceptor;

    iget-object v4, p0, Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;

    invoke-direct {v3, v4}, Lextern/okhttp3/internal/connection/ConnectInterceptor;-><init>(Lextern/okhttp3/OkHttpClient;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v3, p0, Lextern/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v3}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isForWebSocket()Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    iget-object v3, p0, Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lextern/okhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_0
    new-instance v3, Lextern/okhttp3/internal/http/CallServerInterceptor;

    iget-object v4, p0, Lextern/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v4}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isForWebSocket()Z

    move-result v4

    invoke-direct {v3, v4}, Lextern/okhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v0, Lextern/okhttp3/internal/http/RealInterceptorChain;

    const/4 v5, 0x0

    iget-object v6, p0, Lextern/okhttp3/RealCall;->originalRequest:Lextern/okhttp3/Request;

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lextern/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/Connection;ILextern/okhttp3/Request;)V

    .line 183
    .local v0, "chain":Lextern/okhttp3/Interceptor$Chain;
    iget-object v2, p0, Lextern/okhttp3/RealCall;->originalRequest:Lextern/okhttp3/Request;

    invoke-interface {v0, v2}, Lextern/okhttp3/Interceptor$Chain;->proceed(Lextern/okhttp3/Request;)Lextern/okhttp3/Response;

    move-result-object v2

    return-object v2
.end method

.method private toLoggableString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lextern/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "canceled call"

    .line 160
    .local v0, "string":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lextern/okhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 159
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    const-string v0, "call"

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lextern/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->cancel()V

    .line 91
    return-void
.end method

.method public bridge synthetic clone()Lextern/okhttp3/Call;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lextern/okhttp3/RealCall;->clone()Lextern/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lextern/okhttp3/RealCall;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lextern/okhttp3/RealCall;

    iget-object v1, p0, Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;

    iget-object v2, p0, Lextern/okhttp3/RealCall;->originalRequest:Lextern/okhttp3/Request;

    invoke-direct {v0, v1, v2}, Lextern/okhttp3/RealCall;-><init>(Lextern/okhttp3/OkHttpClient;Lextern/okhttp3/Request;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lextern/okhttp3/RealCall;->clone()Lextern/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lextern/okhttp3/Callback;)V
    .locals 3
    .param p1, "responseCallback"    # Lextern/okhttp3/Callback;

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lextern/okhttp3/RealCall;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 83
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lextern/okhttp3/RealCall;->executed:Z

    .line 84
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-direct {p0}, Lextern/okhttp3/RealCall;->captureCallStackTrace()V

    .line 86
    iget-object v0, p0, Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lextern/okhttp3/OkHttpClient;->dispatcher()Lextern/okhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lextern/okhttp3/RealCall$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lextern/okhttp3/RealCall$AsyncCall;-><init>(Lextern/okhttp3/RealCall;Lextern/okhttp3/Callback;Lextern/okhttp3/RealCall$1;)V

    invoke-virtual {v0, v1}, Lextern/okhttp3/Dispatcher;->enqueue(Lextern/okhttp3/RealCall$AsyncCall;)V

    .line 87
    return-void
.end method

.method public execute()Lextern/okhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v1, p0, Lextern/okhttp3/RealCall;->executed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already Executed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lextern/okhttp3/RealCall;->executed:Z

    .line 58
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-direct {p0}, Lextern/okhttp3/RealCall;->captureCallStackTrace()V

    .line 61
    :try_start_2
    iget-object v1, p0, Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lextern/okhttp3/OkHttpClient;->dispatcher()Lextern/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lextern/okhttp3/Dispatcher;->executed(Lextern/okhttp3/RealCall;)V

    .line 62
    invoke-direct {p0}, Lextern/okhttp3/RealCall;->getResponseWithInterceptorChain()Lextern/okhttp3/Response;

    move-result-object v0

    .line 63
    .local v0, "result":Lextern/okhttp3/Response;
    if-nez v0, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    .end local v0    # "result":Lextern/okhttp3/Response;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lextern/okhttp3/OkHttpClient;->dispatcher()Lextern/okhttp3/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lextern/okhttp3/Dispatcher;->finished(Lextern/okhttp3/RealCall;)V

    throw v1

    .restart local v0    # "result":Lextern/okhttp3/Response;
    :cond_1
    iget-object v1, p0, Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lextern/okhttp3/OkHttpClient;->dispatcher()Lextern/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lextern/okhttp3/Dispatcher;->finished(Lextern/okhttp3/RealCall;)V

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lextern/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lextern/okhttp3/RealCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method redactedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lextern/okhttp3/RealCall;->originalRequest:Lextern/okhttp3/Request;

    invoke-virtual {v0}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/HttpUrl;->redact()Lextern/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lextern/okhttp3/Request;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lextern/okhttp3/RealCall;->originalRequest:Lextern/okhttp3/Request;

    return-object v0
.end method

.method declared-synchronized setForWebSocket()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lextern/okhttp3/RealCall;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 77
    :cond_0
    :try_start_1
    iget-object v0, p0, Lextern/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->setForWebSocket(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit p0

    return-void
.end method

.method streamAllocation()Lextern/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lextern/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation()Lextern/okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method
