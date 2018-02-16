.class Lextern/okhttp3/internal/http2/Http2Connection$1;
.super Lextern/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILextern/okhttp3/internal/http2/ErrorCode;)V
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
    .line 305
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$1;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lextern/okhttp3/internal/http2/Http2Connection$1;->val$streamId:I

    iput-object p5, p0, Lextern/okhttp3/internal/http2/Http2Connection$1;->val$errorCode:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Lextern/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 308
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$1;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$1;->val$streamId:I

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$1;->val$errorCode:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lextern/okhttp3/internal/http2/Http2Connection;->writeSynReset(ILextern/okhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    goto :goto_0
.end method
