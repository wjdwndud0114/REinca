.class final Lextern/okhttp3/RealCall$AsyncCall;
.super Lextern/okhttp3/internal/NamedRunnable;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# instance fields
.field private final responseCallback:Lextern/okhttp3/Callback;

.field final synthetic this$0:Lextern/okhttp3/RealCall;


# direct methods
.method private constructor <init>(Lextern/okhttp3/RealCall;Lextern/okhttp3/Callback;)V
    .locals 4
    .param p2, "responseCallback"    # Lextern/okhttp3/Callback;

    .prologue
    .line 113
    iput-object p1, p0, Lextern/okhttp3/RealCall$AsyncCall;->this$0:Lextern/okhttp3/RealCall;

    .line 114
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lextern/okhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lextern/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iput-object p2, p0, Lextern/okhttp3/RealCall$AsyncCall;->responseCallback:Lextern/okhttp3/Callback;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/RealCall;Lextern/okhttp3/Callback;Lextern/okhttp3/RealCall$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/RealCall;
    .param p2, "x1"    # Lextern/okhttp3/Callback;
    .param p3, "x2"    # Lextern/okhttp3/RealCall$1;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lextern/okhttp3/RealCall$AsyncCall;-><init>(Lextern/okhttp3/RealCall;Lextern/okhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 7

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 133
    .local v2, "signalledCallback":Z
    :try_start_0
    iget-object v3, p0, Lextern/okhttp3/RealCall$AsyncCall;->this$0:Lextern/okhttp3/RealCall;

    # invokes: Lextern/okhttp3/RealCall;->getResponseWithInterceptorChain()Lextern/okhttp3/Response;
    invoke-static {v3}, Lextern/okhttp3/RealCall;->access$100(Lextern/okhttp3/RealCall;)Lextern/okhttp3/Response;

    move-result-object v1

    .line 134
    .local v1, "response":Lextern/okhttp3/Response;
    iget-object v3, p0, Lextern/okhttp3/RealCall$AsyncCall;->this$0:Lextern/okhttp3/RealCall;

    # getter for: Lextern/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;
    invoke-static {v3}, Lextern/okhttp3/RealCall;->access$200(Lextern/okhttp3/RealCall;)Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    const/4 v2, 0x1

    .line 136
    iget-object v3, p0, Lextern/okhttp3/RealCall$AsyncCall;->responseCallback:Lextern/okhttp3/Callback;

    iget-object v4, p0, Lextern/okhttp3/RealCall$AsyncCall;->this$0:Lextern/okhttp3/RealCall;

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Canceled"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lextern/okhttp3/Callback;->onFailure(Lextern/okhttp3/Call;Ljava/io/IOException;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    iget-object v3, p0, Lextern/okhttp3/RealCall$AsyncCall;->this$0:Lextern/okhttp3/RealCall;

    # getter for: Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;
    invoke-static {v3}, Lextern/okhttp3/RealCall;->access$400(Lextern/okhttp3/RealCall;)Lextern/okhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okhttp3/OkHttpClient;->dispatcher()Lextern/okhttp3/Dispatcher;

    move-result-object v3

    invoke-virtual {v3, p0}, Lextern/okhttp3/Dispatcher;->finished(Lextern/okhttp3/RealCall$AsyncCall;)V

    .line 151
    .end local v1    # "response":Lextern/okhttp3/Response;
    :goto_1
    return-void

    .line 138
    .restart local v1    # "response":Lextern/okhttp3/Response;
    :cond_0
    const/4 v2, 0x1

    .line 139
    :try_start_1
    iget-object v3, p0, Lextern/okhttp3/RealCall$AsyncCall;->responseCallback:Lextern/okhttp3/Callback;

    iget-object v4, p0, Lextern/okhttp3/RealCall$AsyncCall;->this$0:Lextern/okhttp3/RealCall;

    invoke-interface {v3, v4, v1}, Lextern/okhttp3/Callback;->onResponse(Lextern/okhttp3/Call;Lextern/okhttp3/Response;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    .end local v1    # "response":Lextern/okhttp3/Response;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 144
    :try_start_2
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v3

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callback failure for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lextern/okhttp3/RealCall$AsyncCall;->this$0:Lextern/okhttp3/RealCall;

    # invokes: Lextern/okhttp3/RealCall;->toLoggableString()Ljava/lang/String;
    invoke-static {v6}, Lextern/okhttp3/RealCall;->access$300(Lextern/okhttp3/RealCall;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lextern/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :goto_2
    iget-object v3, p0, Lextern/okhttp3/RealCall$AsyncCall;->this$0:Lextern/okhttp3/RealCall;

    # getter for: Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;
    invoke-static {v3}, Lextern/okhttp3/RealCall;->access$400(Lextern/okhttp3/RealCall;)Lextern/okhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okhttp3/OkHttpClient;->dispatcher()Lextern/okhttp3/Dispatcher;

    move-result-object v3

    invoke-virtual {v3, p0}, Lextern/okhttp3/Dispatcher;->finished(Lextern/okhttp3/RealCall$AsyncCall;)V

    goto :goto_1

    .line 146
    :cond_1
    :try_start_3
    iget-object v3, p0, Lextern/okhttp3/RealCall$AsyncCall;->responseCallback:Lextern/okhttp3/Callback;

    iget-object v4, p0, Lextern/okhttp3/RealCall$AsyncCall;->this$0:Lextern/okhttp3/RealCall;

    invoke-interface {v3, v4, v0}, Lextern/okhttp3/Callback;->onFailure(Lextern/okhttp3/Call;Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lextern/okhttp3/RealCall$AsyncCall;->this$0:Lextern/okhttp3/RealCall;

    # getter for: Lextern/okhttp3/RealCall;->client:Lextern/okhttp3/OkHttpClient;
    invoke-static {v4}, Lextern/okhttp3/RealCall;->access$400(Lextern/okhttp3/RealCall;)Lextern/okhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lextern/okhttp3/OkHttpClient;->dispatcher()Lextern/okhttp3/Dispatcher;

    move-result-object v4

    invoke-virtual {v4, p0}, Lextern/okhttp3/Dispatcher;->finished(Lextern/okhttp3/RealCall$AsyncCall;)V

    throw v3
.end method

.method get()Lextern/okhttp3/RealCall;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lextern/okhttp3/RealCall$AsyncCall;->this$0:Lextern/okhttp3/RealCall;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lextern/okhttp3/RealCall$AsyncCall;->this$0:Lextern/okhttp3/RealCall;

    iget-object v0, v0, Lextern/okhttp3/RealCall;->originalRequest:Lextern/okhttp3/Request;

    invoke-virtual {v0}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lextern/okhttp3/Request;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lextern/okhttp3/RealCall$AsyncCall;->this$0:Lextern/okhttp3/RealCall;

    iget-object v0, v0, Lextern/okhttp3/RealCall;->originalRequest:Lextern/okhttp3/Request;

    return-object v0
.end method
