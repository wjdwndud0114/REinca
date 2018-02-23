.class public final Lorg/apache/commons/net/io/ToNetASCIIOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ToNetASCIIOutputStream.java"


# instance fields
.field private __lastWasCR:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    .line 49
    return-void
.end method


# virtual methods
.method public declared-synchronized write(I)V
    .locals 2
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    .line 80
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_1
    monitor-exit p0

    return-void

    .line 70
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    .line 71
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :pswitch_2
    :try_start_2
    iget-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    monitor-enter p0

    move v0, p3

    .end local p3    # "length":I
    .local v0, "length":I
    move v1, p2

    .end local p2    # "offset":I
    .local v1, "offset":I
    :goto_0
    add-int/lit8 p3, v0, -0x1

    .end local v0    # "length":I
    .restart local p3    # "length":I
    if-lez v0, :cond_0

    .line 116
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    :try_start_0
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p3

    .end local p3    # "length":I
    .restart local v0    # "length":I
    move v1, p2

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_0

    .line 118
    .end local v0    # "length":I
    .restart local p3    # "length":I
    :cond_0
    monitor-exit p0

    return-void

    .line 115
    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
