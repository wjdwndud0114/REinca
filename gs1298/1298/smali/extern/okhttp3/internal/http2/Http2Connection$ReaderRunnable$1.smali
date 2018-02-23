.class Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;
.super Lextern/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->headers(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field final synthetic val$newStream:Lextern/okhttp3/internal/http2/Http2Stream;


# direct methods
.method varargs constructor <init>(Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lextern/okhttp3/internal/http2/Http2Stream;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 623
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iput-object p4, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0, p2, p3}, Lextern/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 626
    :try_start_0
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v1, v1, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->listener:Lextern/okhttp3/internal/http2/Http2Connection$Listener;
    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1900(Lextern/okhttp3/internal/http2/Http2Connection;)Lextern/okhttp3/internal/http2/Http2Connection$Listener;

    move-result-object v1

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1, v2}, Lextern/okhttp3/internal/http2/Http2Connection$Listener;->onStream(Lextern/okhttp3/internal/http2/Http2Stream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FramedConnection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v4, v4, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    invoke-static {v4}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1000(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lextern/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 630
    :try_start_1
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Lextern/okhttp3/internal/http2/Http2Stream;

    sget-object v2, Lextern/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lextern/okhttp3/internal/http2/Http2Stream;->close(Lextern/okhttp3/internal/http2/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 631
    :catch_1
    move-exception v1

    goto :goto_0
.end method
