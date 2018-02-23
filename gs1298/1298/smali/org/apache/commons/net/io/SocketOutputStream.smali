.class public Lorg/apache/commons/net/io/SocketOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SocketOutputStream.java"


# instance fields
.field private final __socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 51
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/net/io/SocketOutputStream;->__socket:Ljava/net/Socket;

    .line 53
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 86
    iget-object v0, p0, Lorg/apache/commons/net/io/SocketOutputStream;->__socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 87
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/commons/net/io/SocketOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 72
    return-void
.end method
