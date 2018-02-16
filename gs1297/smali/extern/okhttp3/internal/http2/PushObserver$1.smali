.class final Lextern/okhttp3/internal/http2/PushObserver$1;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lextern/okhttp3/internal/http2/PushObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http2/PushObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(ILextern/okio/BufferedSource;IZ)Z
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "source"    # Lextern/okio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lextern/okio/BufferedSource;->skip(J)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public onHeaders(ILjava/util/List;Z)Z
    .locals 1
    .param p1, "streamId"    # I
    .param p3, "last"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onRequest(ILjava/util/List;)Z
    .locals 1
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onReset(ILextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lextern/okhttp3/internal/http2/ErrorCode;

    .prologue
    .line 94
    return-void
.end method
