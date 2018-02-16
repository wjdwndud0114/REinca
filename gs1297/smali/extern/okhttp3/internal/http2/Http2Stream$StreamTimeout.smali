.class Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;
.super Lextern/okio/AsyncTimeout;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamTimeout"
.end annotation


# instance fields
.field final synthetic this$0:Lextern/okhttp3/internal/http2/Http2Stream;


# direct methods
.method constructor <init>(Lextern/okhttp3/internal/http2/Http2Stream;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Lextern/okio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public exitAndThrowIfTimedOut()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    invoke-virtual {p0}, Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 596
    :cond_0
    return-void
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 587
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 588
    .local v0, "socketTimeoutException":Ljava/net/SocketTimeoutException;
    if-eqz p1, :cond_0

    .line 589
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 591
    :cond_0
    return-object v0
.end method

.method protected timedOut()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    sget-object v1, Lextern/okhttp3/internal/http2/ErrorCode;->CANCEL:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lextern/okhttp3/internal/http2/Http2Stream;->closeLater(Lextern/okhttp3/internal/http2/ErrorCode;)V

    .line 584
    return-void
.end method
