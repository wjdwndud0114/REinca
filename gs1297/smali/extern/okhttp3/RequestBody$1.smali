.class final Lextern/okhttp3/RequestBody$1;
.super Lextern/okhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/RequestBody;->create(Lextern/okhttp3/MediaType;Lextern/okio/ByteString;)Lextern/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lextern/okio/ByteString;

.field final synthetic val$contentType:Lextern/okhttp3/MediaType;


# direct methods
.method constructor <init>(Lextern/okhttp3/MediaType;Lextern/okio/ByteString;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lextern/okhttp3/RequestBody$1;->val$contentType:Lextern/okhttp3/MediaType;

    iput-object p2, p0, Lextern/okhttp3/RequestBody$1;->val$content:Lextern/okio/ByteString;

    invoke-direct {p0}, Lextern/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lextern/okhttp3/RequestBody$1;->val$content:Lextern/okio/ByteString;

    invoke-virtual {v0}, Lextern/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lextern/okhttp3/MediaType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lextern/okhttp3/RequestBody$1;->val$contentType:Lextern/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lextern/okio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lextern/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lextern/okhttp3/RequestBody$1;->val$content:Lextern/okio/ByteString;

    invoke-interface {p1, v0}, Lextern/okio/BufferedSink;->write(Lextern/okio/ByteString;)Lextern/okio/BufferedSink;

    .line 73
    return-void
.end method
