.class Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;
.super Lextern/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->settings(ZLextern/okhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method varargs constructor <init>(Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 675
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p0, p2, p3}, Lextern/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->listener:Lextern/okhttp3/internal/http2/Http2Connection$Listener;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1900(Lextern/okhttp3/internal/http2/Http2Connection;)Lextern/okhttp3/internal/http2/Http2Connection$Listener;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v1, v1, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, v1}, Lextern/okhttp3/internal/http2/Http2Connection$Listener;->onSettings(Lextern/okhttp3/internal/http2/Http2Connection;)V

    .line 678
    return-void
.end method
