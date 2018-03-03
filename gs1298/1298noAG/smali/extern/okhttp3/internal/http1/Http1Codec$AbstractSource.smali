.class abstract Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lextern/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected closed:Z

.field final synthetic this$0:Lextern/okhttp3/internal/http1/Http1Codec;

.field protected final timeout:Lextern/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lextern/okhttp3/internal/http1/Http1Codec;)V
    .locals 2

    .prologue
    .line 342
    iput-object p1, p0, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Lextern/okio/ForwardingTimeout;

    iget-object v1, p0, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->source:Lextern/okio/BufferedSource;
    invoke-static {v1}, Lextern/okhttp3/internal/http1/Http1Codec;->access$600(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSource;

    move-result-object v1

    invoke-interface {v1}, Lextern/okio/BufferedSource;->timeout()Lextern/okio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lextern/okio/ForwardingTimeout;-><init>(Lextern/okio/Timeout;)V

    iput-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lextern/okio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/internal/http1/Http1Codec;Lextern/okhttp3/internal/http1/Http1Codec$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/internal/http1/Http1Codec;
    .param p2, "x1"    # Lextern/okhttp3/internal/http1/Http1Codec$1;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lextern/okhttp3/internal/http1/Http1Codec;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput(Z)V
    .locals 3
    .param p1, "reuseConnection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 355
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->state:I
    invoke-static {v0}, Lextern/okhttp3/internal/http1/Http1Codec;->access$500(Lextern/okhttp3/internal/http1/Http1Codec;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->state:I
    invoke-static {v0}, Lextern/okhttp3/internal/http1/Http1Codec;->access$500(Lextern/okhttp3/internal/http1/Http1Codec;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->state:I
    invoke-static {v2}, Lextern/okhttp3/internal/http1/Http1Codec;->access$500(Lextern/okhttp3/internal/http1/Http1Codec;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_2
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lextern/okio/ForwardingTimeout;

    # invokes: Lextern/okhttp3/internal/http1/Http1Codec;->detachTimeout(Lextern/okio/ForwardingTimeout;)V
    invoke-static {v0, v1}, Lextern/okhttp3/internal/http1/Http1Codec;->access$400(Lextern/okhttp3/internal/http1/Http1Codec;Lextern/okio/ForwardingTimeout;)V

    .line 360
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # setter for: Lextern/okhttp3/internal/http1/Http1Codec;->state:I
    invoke-static {v0, v2}, Lextern/okhttp3/internal/http1/Http1Codec;->access$502(Lextern/okhttp3/internal/http1/Http1Codec;I)I

    .line 361
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;
    invoke-static {v0}, Lextern/okhttp3/internal/http1/Http1Codec;->access$700(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;
    invoke-static {v0}, Lextern/okhttp3/internal/http1/Http1Codec;->access$700(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okhttp3/internal/connection/StreamAllocation;

    move-result-object v1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    invoke-virtual {v1, v0, v2}, Lextern/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLextern/okhttp3/internal/http/HttpCodec;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public timeout()Lextern/okio/Timeout;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lextern/okio/ForwardingTimeout;

    return-object v0
.end method
