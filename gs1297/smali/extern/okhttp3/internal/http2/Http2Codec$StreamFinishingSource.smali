.class Lextern/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
.super Lextern/okio/ForwardingSource;
.source "Http2Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http2/Http2Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field final synthetic this$0:Lextern/okhttp3/internal/http2/Http2Codec;


# direct methods
.method public constructor <init>(Lextern/okhttp3/internal/http2/Http2Codec;Lextern/okio/Source;)V
    .locals 0
    .param p2, "delegate"    # Lextern/okio/Source;

    .prologue
    .line 173
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lextern/okhttp3/internal/http2/Http2Codec;

    .line 174
    invoke-direct {p0, p2}, Lextern/okio/ForwardingSource;-><init>(Lextern/okio/Source;)V

    .line 175
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lextern/okhttp3/internal/http2/Http2Codec;

    # getter for: Lextern/okhttp3/internal/http2/Http2Codec;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Codec;->access$000(Lextern/okhttp3/internal/http2/Http2Codec;)Lextern/okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lextern/okhttp3/internal/http2/Http2Codec;

    invoke-virtual {v0, v1, v2}, Lextern/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLextern/okhttp3/internal/http/HttpCodec;)V

    .line 179
    invoke-super {p0}, Lextern/okio/ForwardingSource;->close()V

    .line 180
    return-void
.end method
