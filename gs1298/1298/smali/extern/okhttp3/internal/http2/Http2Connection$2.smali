.class Lextern/okhttp3/internal/http2/Http2Connection$2;
.super Lextern/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lextern/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$streamId:I

.field final synthetic val$unacknowledgedBytesRead:J


# direct methods
.method varargs constructor <init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 320
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$2;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lextern/okhttp3/internal/http2/Http2Connection$2;->val$streamId:I

    iput-wide p5, p0, Lextern/okhttp3/internal/http2/Http2Connection$2;->val$unacknowledgedBytesRead:J

    invoke-direct {p0, p2, p3}, Lextern/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 323
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$2;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    iget v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$2;->val$streamId:I

    iget-wide v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$2;->val$unacknowledgedBytesRead:J

    invoke-virtual {v0, v1, v2, v3}, Lextern/okhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    goto :goto_0
.end method
