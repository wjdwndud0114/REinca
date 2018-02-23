.class public Lorg/apache/commons/net/io/SocketInputStream;
.super Ljava/io/FilterInputStream;
.source "SocketInputStream.java"


# instance fields
.field private final __socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 51
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/net/io/SocketInputStream;->__socket:Ljava/net/Socket;

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
    .line 65
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 66
    iget-object v0, p0, Lorg/apache/commons/net/io/SocketInputStream;->__socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 67
    return-void
.end method
