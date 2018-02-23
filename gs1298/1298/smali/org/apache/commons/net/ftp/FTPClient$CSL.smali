.class Lorg/apache/commons/net/ftp/FTPClient$CSL;
.super Ljava/lang/Object;
.source "FTPClient.java"

# interfaces
.implements Lorg/apache/commons/net/io/CopyStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/ftp/FTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSL"
.end annotation


# instance fields
.field private final currentSoTimeout:I

.field private final idle:J

.field private notAcked:I

.field private final parent:Lorg/apache/commons/net/ftp/FTPClient;

.field private time:J


# direct methods
.method constructor <init>(Lorg/apache/commons/net/ftp/FTPClient;JI)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/commons/net/ftp/FTPClient;
    .param p2, "idleTime"    # J
    .param p4, "maxWait"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 3667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->time:J

    .line 3668
    iput-wide p2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->idle:J

    .line 3669
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    .line 3670
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->getSoTimeout()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->currentSoTimeout:I

    .line 3671
    invoke-virtual {p1, p4}, Lorg/apache/commons/net/ftp/FTPClient;->setSoTimeout(I)V

    .line 3672
    return-void
.end method


# virtual methods
.method public bytesTransferred(JIJ)V
    .locals 8
    .param p1, "totalBytesTransferred"    # J
    .param p3, "bytesTransferred"    # I
    .param p4, "streamSize"    # J

    .prologue
    .line 3682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3683
    .local v2, "now":J
    iget-wide v4, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->time:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->idle:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 3685
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->__noop()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3690
    :goto_0
    iput-wide v2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->time:J

    .line 3692
    :cond_0
    return-void

    .line 3686
    :catch_0
    move-exception v0

    .line 3687
    .local v0, "e":Ljava/net/SocketTimeoutException;
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    goto :goto_0

    .line 3688
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V
    .locals 6
    .param p1, "event"    # Lorg/apache/commons/net/io/CopyStreamEvent;

    .prologue
    .line 3676
    invoke-virtual {p1}, Lorg/apache/commons/net/io/CopyStreamEvent;->getTotalBytesTransferred()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/apache/commons/net/io/CopyStreamEvent;->getBytesTransferred()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/commons/net/io/CopyStreamEvent;->getStreamSize()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->bytesTransferred(JIJ)V

    .line 3677
    return-void
.end method

.method cleanUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3696
    :goto_0
    :try_start_0
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    if-lez v0, :cond_0

    .line 3697
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->__getReplyNoReport()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3700
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->currentSoTimeout:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setSoTimeout(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->currentSoTimeout:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setSoTimeout(I)V

    .line 3702
    return-void
.end method
