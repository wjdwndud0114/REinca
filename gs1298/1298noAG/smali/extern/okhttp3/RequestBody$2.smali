.class final Lextern/okhttp3/RequestBody$2;
.super Lextern/okhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/RequestBody;->create(Lextern/okhttp3/MediaType;[BII)Lextern/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Lextern/okhttp3/MediaType;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lextern/okhttp3/MediaType;I[BI)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lextern/okhttp3/RequestBody$2;->val$contentType:Lextern/okhttp3/MediaType;

    iput p2, p0, Lextern/okhttp3/RequestBody$2;->val$byteCount:I

    iput-object p3, p0, Lextern/okhttp3/RequestBody$2;->val$content:[B

    iput p4, p0, Lextern/okhttp3/RequestBody$2;->val$offset:I

    invoke-direct {p0}, Lextern/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lextern/okhttp3/RequestBody$2;->val$byteCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lextern/okhttp3/MediaType;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lextern/okhttp3/RequestBody$2;->val$contentType:Lextern/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lextern/okio/BufferedSink;)V
    .locals 3
    .param p1, "sink"    # Lextern/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lextern/okhttp3/RequestBody$2;->val$content:[B

    iget v1, p0, Lextern/okhttp3/RequestBody$2;->val$offset:I

    iget v2, p0, Lextern/okhttp3/RequestBody$2;->val$byteCount:I

    invoke-interface {p1, v0, v1, v2}, Lextern/okio/BufferedSink;->write([BII)Lextern/okio/BufferedSink;

    .line 98
    return-void
.end method
