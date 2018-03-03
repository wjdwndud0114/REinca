.class Lextern/okhttp3/internal/http2/Http2Connection$4;
.super Lextern/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lextern/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 785
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$4;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lextern/okhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    iput-object p5, p0, Lextern/okhttp3/internal/http2/Http2Connection$4;->val$requestHeaders:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lextern/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 787
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$4;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->pushObserver:Lextern/okhttp3/internal/http2/PushObserver;
    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$2600(Lextern/okhttp3/internal/http2/Http2Connection;)Lextern/okhttp3/internal/http2/PushObserver;

    move-result-object v1

    iget v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Connection$4;->val$requestHeaders:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Lextern/okhttp3/internal/http2/PushObserver;->onRequest(ILjava/util/List;)Z

    move-result v0

    .line 789
    .local v0, "cancel":Z
    if-eqz v0, :cond_0

    .line 790
    :try_start_0
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$4;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    iget v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    sget-object v3, Lextern/okhttp3/internal/http2/ErrorCode;->CANCEL:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lextern/okhttp3/internal/http2/Http2Writer;->rstStream(ILextern/okhttp3/internal/http2/ErrorCode;)V

    .line 791
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$4;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    :try_start_1
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$4;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$2700(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/util/Set;

    move-result-object v1

    iget v3, p0, Lextern/okhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 793
    monitor-exit v2

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 793
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 795
    :catch_0
    move-exception v1

    goto :goto_0
.end method
