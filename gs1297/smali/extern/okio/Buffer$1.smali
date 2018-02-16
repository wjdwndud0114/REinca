.class Lextern/okio/Buffer$1;
.super Ljava/io/OutputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okio/Buffer;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lextern/okio/Buffer;


# direct methods
.method constructor <init>(Lextern/okio/Buffer;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lextern/okio/Buffer$1;->this$0:Lextern/okio/Buffer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lextern/okio/Buffer$1;->this$0:Lextern/okio/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lextern/okio/Buffer$1;->this$0:Lextern/okio/Buffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lextern/okio/Buffer;->writeByte(I)Lextern/okio/Buffer;

    .line 71
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lextern/okio/Buffer$1;->this$0:Lextern/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lextern/okio/Buffer;->write([BII)Lextern/okio/Buffer;

    .line 75
    return-void
.end method
