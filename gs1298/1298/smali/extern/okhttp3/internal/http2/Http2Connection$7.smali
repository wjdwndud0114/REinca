.class Lextern/okhttp3/internal/http2/Http2Connection$7;
.super Lextern/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/internal/http2/Http2Connection;->pushResetLater(ILextern/okhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lextern/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$errorCode:Lextern/okhttp3/internal/http2/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 846
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$7;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lextern/okhttp3/internal/http2/Http2Connection$7;->val$streamId:I

    iput-object p5, p0, Lextern/okhttp3/internal/http2/Http2Connection$7;->val$errorCode:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Lextern/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 848
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$7;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->pushObserver:Lextern/okhttp3/internal/http2/PushObserver;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Connection;->access$2600(Lextern/okhttp3/internal/http2/Http2Connection;)Lextern/okhttp3/internal/http2/PushObserver;

    move-result-object v0

    iget v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$7;->val$streamId:I

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$7;->val$errorCode:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-interface {v0, v1, v2}, Lextern/okhttp3/internal/http2/PushObserver;->onReset(ILextern/okhttp3/internal/http2/ErrorCode;)V

    .line 849
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$7;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    monitor-enter v1

    .line 850
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$7;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Connection;->access$2700(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$7;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 851
    monitor-exit v1

    .line 852
    return-void

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
