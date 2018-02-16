.class Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Lextern/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"

# interfaces
.implements Lextern/okhttp3/internal/http2/Http2Reader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReaderRunnable"
.end annotation


# instance fields
.field final reader:Lextern/okhttp3/internal/http2/Http2Reader;

.field final synthetic this$0:Lextern/okhttp3/internal/http2/Http2Connection;


# direct methods
.method private constructor <init>(Lextern/okhttp3/internal/http2/Http2Connection;Lextern/okhttp3/internal/http2/Http2Reader;)V
    .locals 4
    .param p2, "reader"    # Lextern/okhttp3/internal/http2/Http2Reader;

    .prologue
    .line 552
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    .line 553
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1000(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lextern/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    iput-object p2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lextern/okhttp3/internal/http2/Http2Reader;

    .line 555
    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/internal/http2/Http2Connection;Lextern/okhttp3/internal/http2/Http2Reader;Lextern/okhttp3/internal/http2/Http2Connection$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/internal/http2/Http2Connection;
    .param p2, "x1"    # Lextern/okhttp3/internal/http2/Http2Reader;
    .param p3, "x2"    # Lextern/okhttp3/internal/http2/Http2Connection$1;

    .prologue
    .line 549
    invoke-direct {p0, p1, p2}, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Lextern/okhttp3/internal/http2/Http2Reader;)V

    return-void
.end method

.method private applyAndAckSettings(Lextern/okhttp3/internal/http2/Settings;)V
    .locals 6
    .param p1, "peerSettings"    # Lextern/okhttp3/internal/http2/Settings;

    .prologue
    .line 691
    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lextern/okhttp3/internal/http2/Http2Connection;->access$2000()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    invoke-static {v5}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1000(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lextern/okhttp3/internal/http2/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 699
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lextern/okio/ByteString;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lextern/okio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .prologue
    .line 766
    return-void
.end method

.method public data(ZILextern/okio/BufferedSource;I)V
    .locals 4
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lextern/okio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # invokes: Lextern/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z
    invoke-static {v1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1200(Lextern/okhttp3/internal/http2/Http2Connection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # invokes: Lextern/okhttp3/internal/http2/Http2Connection;->pushDataLater(ILextern/okio/BufferedSource;IZ)V
    invoke-static {v1, p2, p3, p4, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1300(Lextern/okhttp3/internal/http2/Http2Connection;ILextern/okio/BufferedSource;IZ)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->getStream(I)Lextern/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 587
    .local v0, "dataStream":Lextern/okhttp3/internal/http2/Http2Stream;
    if-nez v0, :cond_2

    .line 588
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    sget-object v2, Lextern/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lextern/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILextern/okhttp3/internal/http2/ErrorCode;)V

    .line 589
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lextern/okio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {v0, p3, p4}, Lextern/okhttp3/internal/http2/Http2Stream;->receiveData(Lextern/okio/BufferedSource;I)V

    .line 593
    if-eqz p1, :cond_0

    .line 594
    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->receiveFin()V

    goto :goto_0
.end method

.method protected execute()V
    .locals 5

    .prologue
    .line 558
    sget-object v0, Lextern/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    .line 559
    .local v0, "connectionErrorCode":Lextern/okhttp3/internal/http2/ErrorCode;
    sget-object v2, Lextern/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    .line 561
    .local v2, "streamErrorCode":Lextern/okhttp3/internal/http2/ErrorCode;
    :try_start_0
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-boolean v3, v3, Lextern/okhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v3, :cond_0

    .line 562
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lextern/okhttp3/internal/http2/Http2Reader;

    invoke-virtual {v3}, Lextern/okhttp3/internal/http2/Http2Reader;->readConnectionPreface()V

    .line 564
    :cond_0
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lextern/okhttp3/internal/http2/Http2Reader;

    invoke-virtual {v3, p0}, Lextern/okhttp3/internal/http2/Http2Reader;->nextFrame(Lextern/okhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 566
    sget-object v0, Lextern/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    .line 567
    sget-object v2, Lextern/okhttp3/internal/http2/ErrorCode;->CANCEL:Lextern/okhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :try_start_1
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # invokes: Lextern/okhttp3/internal/http2/Http2Connection;->close(Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V
    invoke-static {v3, v0, v2}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1100(Lextern/okhttp3/internal/http2/Http2Connection;Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 576
    :goto_0
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lextern/okhttp3/internal/http2/Http2Reader;

    invoke-static {v3}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 578
    :goto_1
    return-void

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v0, Lextern/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    .line 570
    sget-object v2, Lextern/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 573
    :try_start_3
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # invokes: Lextern/okhttp3/internal/http2/Http2Connection;->close(Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V
    invoke-static {v3, v0, v2}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1100(Lextern/okhttp3/internal/http2/Http2Connection;Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 576
    :goto_2
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lextern/okhttp3/internal/http2/Http2Reader;

    invoke-static {v3}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 572
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 573
    :try_start_4
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # invokes: Lextern/okhttp3/internal/http2/Http2Connection;->close(Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V
    invoke-static {v4, v0, v2}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1100(Lextern/okhttp3/internal/http2/Http2Connection;Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 576
    :goto_3
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lextern/okhttp3/internal/http2/Http2Reader;

    invoke-static {v4}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 574
    :catch_1
    move-exception v4

    goto :goto_3

    .restart local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public goAway(ILextern/okhttp3/internal/http2/ErrorCode;Lextern/okio/ByteString;)V
    .locals 8
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lextern/okhttp3/internal/http2/ErrorCode;
    .param p3, "debugData"    # Lextern/okio/ByteString;

    .prologue
    .line 718
    invoke-virtual {p3}, Lextern/okio/ByteString;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 723
    :cond_0
    iget-object v6, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    monitor-enter v6

    .line 724
    :try_start_0
    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-static {v5}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1800(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    iget-object v7, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-static {v7}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1800(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    new-array v7, v7, [Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-interface {v5, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lextern/okhttp3/internal/http2/Http2Stream;

    .line 725
    .local v4, "streamsCopy":[Lextern/okhttp3/internal/http2/Http2Stream;
    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    const/4 v7, 0x1

    # setter for: Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z
    invoke-static {v5, v7}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1502(Lextern/okhttp3/internal/http2/Http2Connection;Z)Z

    .line 726
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    move-object v0, v4

    .local v0, "arr$":[Lextern/okhttp3/internal/http2/Http2Stream;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 730
    .local v1, "http2Stream":Lextern/okhttp3/internal/http2/Http2Stream;
    invoke-virtual {v1}, Lextern/okhttp3/internal/http2/Http2Stream;->getId()I

    move-result v5

    if-le v5, p1, :cond_1

    invoke-virtual {v1}, Lextern/okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 731
    sget-object v5, Lextern/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v5}, Lextern/okhttp3/internal/http2/Http2Stream;->receiveRstStream(Lextern/okhttp3/internal/http2/ErrorCode;)V

    .line 732
    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lextern/okhttp3/internal/http2/Http2Stream;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lextern/okhttp3/internal/http2/Http2Connection;->removeStream(I)Lextern/okhttp3/internal/http2/Http2Stream;

    .line 729
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 726
    .end local v0    # "arr$":[Lextern/okhttp3/internal/http2/Http2Stream;
    .end local v1    # "http2Stream":Lextern/okhttp3/internal/http2/Http2Stream;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "streamsCopy":[Lextern/okhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 735
    .restart local v0    # "arr$":[Lextern/okhttp3/internal/http2/Http2Stream;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "streamsCopy":[Lextern/okhttp3/internal/http2/Http2Stream;
    :cond_2
    return-void
.end method

.method public headers(ZIILjava/util/List;)V
    .locals 9
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p4, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # invokes: Lextern/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z
    invoke-static {v1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1200(Lextern/okhttp3/internal/http2/Http2Connection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # invokes: Lextern/okhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V
    invoke-static {v1, p2, p4, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1400(Lextern/okhttp3/internal/http2/Http2Connection;ILjava/util/List;Z)V

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v7, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    monitor-enter v7

    .line 607
    :try_start_0
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z
    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1500(Lextern/okhttp3/internal/http2/Http2Connection;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v7

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 609
    :cond_2
    :try_start_1
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->getStream(I)Lextern/okhttp3/internal/http2/Http2Stream;

    move-result-object v6

    .line 611
    .local v6, "stream":Lextern/okhttp3/internal/http2/Http2Stream;
    if-nez v6, :cond_5

    .line 613
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I
    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1600(Lextern/okhttp3/internal/http2/Http2Connection;)I

    move-result v1

    if-gt p2, v1, :cond_3

    monitor-exit v7

    goto :goto_0

    .line 616
    :cond_3
    rem-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I
    invoke-static {v2}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1700(Lextern/okhttp3/internal/http2/Http2Connection;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_4

    monitor-exit v7

    goto :goto_0

    .line 619
    :cond_4
    new-instance v0, Lextern/okhttp3/internal/http2/Http2Stream;

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    const/4 v3, 0x0

    move v1, p2

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lextern/okhttp3/internal/http2/Http2Stream;-><init>(ILextern/okhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    .line 621
    .local v0, "newStream":Lextern/okhttp3/internal/http2/Http2Stream;
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # setter for: Lextern/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I
    invoke-static {v1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1602(Lextern/okhttp3/internal/http2/Http2Connection;I)I

    .line 622
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1800(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lextern/okhttp3/internal/http2/Http2Connection;->access$2000()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    invoke-static {v8}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1000(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lextern/okhttp3/internal/http2/Http2Stream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 636
    monitor-exit v7

    goto :goto_0

    .line 638
    .end local v0    # "newStream":Lextern/okhttp3/internal/http2/Http2Stream;
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    invoke-virtual {v6, p4}, Lextern/okhttp3/internal/http2/Http2Stream;->receiveHeaders(Ljava/util/List;)V

    .line 642
    if-eqz p1, :cond_0

    invoke-virtual {v6}, Lextern/okhttp3/internal/http2/Http2Stream;->receiveFin()V

    goto :goto_0
.end method

.method public ping(ZII)V
    .locals 4
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .prologue
    .line 706
    if-eqz p1, :cond_1

    .line 707
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # invokes: Lextern/okhttp3/internal/http2/Http2Connection;->removePing(I)Lextern/okhttp3/internal/http2/Ping;
    invoke-static {v1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->access$2300(Lextern/okhttp3/internal/http2/Http2Connection;I)Lextern/okhttp3/internal/http2/Ping;

    move-result-object v0

    .line 708
    .local v0, "ping":Lextern/okhttp3/internal/http2/Ping;
    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Ping;->receive()V

    .line 715
    .end local v0    # "ping":Lextern/okhttp3/internal/http2/Ping;
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lextern/okhttp3/internal/http2/Http2Connection;->writePingLater(ZIILextern/okhttp3/internal/http2/Ping;)V
    invoke-static {v1, v2, p2, p3, v3}, Lextern/okhttp3/internal/http2/Http2Connection;->access$2400(Lextern/okhttp3/internal/http2/Http2Connection;ZIILextern/okhttp3/internal/http2/Ping;)V

    goto :goto_0
.end method

.method public priority(IIIZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .prologue
    .line 756
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 760
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # invokes: Lextern/okhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V
    invoke-static {v0, p2, p3}, Lextern/okhttp3/internal/http2/Http2Connection;->access$2500(Lextern/okhttp3/internal/http2/Http2Connection;ILjava/util/List;)V

    .line 761
    return-void
.end method

.method public rstStream(ILextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lextern/okhttp3/internal/http2/ErrorCode;

    .prologue
    .line 646
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # invokes: Lextern/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z
    invoke-static {v1, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1200(Lextern/okhttp3/internal/http2/Http2Connection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # invokes: Lextern/okhttp3/internal/http2/Http2Connection;->pushResetLater(ILextern/okhttp3/internal/http2/ErrorCode;)V
    invoke-static {v1, p1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->access$2100(Lextern/okhttp3/internal/http2/Http2Connection;ILextern/okhttp3/internal/http2/ErrorCode;)V

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->removeStream(I)Lextern/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 651
    .local v0, "rstStream":Lextern/okhttp3/internal/http2/Http2Stream;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0, p2}, Lextern/okhttp3/internal/http2/Http2Stream;->receiveRstStream(Lextern/okhttp3/internal/http2/ErrorCode;)V

    goto :goto_0
.end method

.method public settings(ZLextern/okhttp3/internal/http2/Settings;)V
    .locals 18
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lextern/okhttp3/internal/http2/Settings;

    .prologue
    .line 657
    const-wide/16 v4, 0x0

    .line 658
    .local v4, "delta":J
    const/4 v10, 0x0

    .line 659
    .local v10, "streamsToNotify":[Lextern/okhttp3/internal/http2/Http2Stream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    monitor-enter v12

    .line 660
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v11, v11, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v11}, Lextern/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v8

    .line 661
    .local v8, "priorWriteWindowSize":I
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v11, v11, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v11}, Lextern/okhttp3/internal/http2/Settings;->clear()V

    .line 662
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v11, v11, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lextern/okhttp3/internal/http2/Settings;->merge(Lextern/okhttp3/internal/http2/Settings;)V

    .line 663
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(Lextern/okhttp3/internal/http2/Settings;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v11, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v11, v11, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v11}, Lextern/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v7

    .line 665
    .local v7, "peerInitialWindowSize":I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_2

    if-eq v7, v8, :cond_2

    .line 666
    sub-int v11, v7, v8

    int-to-long v4, v11

    .line 667
    move-object/from16 v0, p0

    iget-object v11, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z
    invoke-static {v11}, Lextern/okhttp3/internal/http2/Http2Connection;->access$2200(Lextern/okhttp3/internal/http2/Http2Connection;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 668
    move-object/from16 v0, p0

    iget-object v11, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v11, v4, v5}, Lextern/okhttp3/internal/http2/Http2Connection;->addBytesToWriteWindow(J)V

    .line 669
    move-object/from16 v0, p0

    iget-object v11, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    const/4 v13, 0x1

    # setter for: Lextern/okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z
    invoke-static {v11, v13}, Lextern/okhttp3/internal/http2/Http2Connection;->access$2202(Lextern/okhttp3/internal/http2/Http2Connection;Z)Z

    .line 671
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-static {v11}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1800(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 672
    move-object/from16 v0, p0

    iget-object v11, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-static {v11}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1800(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-static {v13}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1800(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    new-array v13, v13, [Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-interface {v11, v13}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, [Lextern/okhttp3/internal/http2/Http2Stream;

    move-object v10, v0

    .line 675
    :cond_2
    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lextern/okhttp3/internal/http2/Http2Connection;->access$2000()Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    new-instance v13, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;

    const-string v14, "OkHttp %s settings"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    move-object/from16 v17, v0

    # getter for: Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lextern/okhttp3/internal/http2/Http2Connection;->access$1000(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14, v15}, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v11, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 680
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    if-eqz v10, :cond_3

    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-eqz v11, :cond_3

    .line 682
    move-object v2, v10

    .local v2, "arr$":[Lextern/okhttp3/internal/http2/Http2Stream;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v9, v2, v3

    .line 683
    .local v9, "stream":Lextern/okhttp3/internal/http2/Http2Stream;
    monitor-enter v9

    .line 684
    :try_start_1
    invoke-virtual {v9, v4, v5}, Lextern/okhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 685
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 682
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 680
    .end local v2    # "arr$":[Lextern/okhttp3/internal/http2/Http2Stream;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "peerInitialWindowSize":I
    .end local v8    # "priorWriteWindowSize":I
    .end local v9    # "stream":Lextern/okhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 685
    .restart local v2    # "arr$":[Lextern/okhttp3/internal/http2/Http2Stream;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "peerInitialWindowSize":I
    .restart local v8    # "priorWriteWindowSize":I
    .restart local v9    # "stream":Lextern/okhttp3/internal/http2/Http2Stream;
    :catchall_1
    move-exception v11

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    .line 688
    .end local v2    # "arr$":[Lextern/okhttp3/internal/http2/Http2Stream;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "stream":Lextern/okhttp3/internal/http2/Http2Stream;
    :cond_3
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .prologue
    .line 738
    if-nez p1, :cond_1

    .line 739
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    monitor-enter v2

    .line 740
    :try_start_0
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-wide v4, v1, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v4, p2

    iput-wide v4, v1, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 741
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 742
    monitor-exit v2

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 742
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 744
    :cond_1
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->getStream(I)Lextern/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 745
    .local v0, "stream":Lextern/okhttp3/internal/http2/Http2Stream;
    if-eqz v0, :cond_0

    .line 746
    monitor-enter v0

    .line 747
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lextern/okhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 748
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
