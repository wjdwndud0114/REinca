.class final Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lextern/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FramedDataSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMIT_BUFFER_SIZE:J = 0x4000L


# instance fields
.field private closed:Z

.field private finished:Z

.field private final sendBuffer:Lextern/okio/Buffer;

.field final synthetic this$0:Lextern/okhttp3/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 455
    const-class v0, Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lextern/okhttp3/internal/http2/Http2Stream;)V
    .locals 1

    .prologue
    .line 455
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Lextern/okio/Buffer;

    invoke-direct {v0}, Lextern/okio/Buffer;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lextern/okio/Buffer;

    return-void
.end method

.method static synthetic access$200(Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;)Z
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;

    .prologue
    .line 455
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->finished:Z

    return v0
.end method

.method static synthetic access$202(Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;Z)Z
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;
    .param p1, "x1"    # Z

    .prologue
    .line 455
    iput-boolean p1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->finished:Z

    return p1
.end method

.method static synthetic access$400(Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;)Z
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;

    .prologue
    .line 455
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->closed:Z

    return v0
.end method

.method private emitDataFrame(Z)V
    .locals 8
    .param p1, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    monitor-enter v1

    .line 486
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$1100(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 488
    :goto_0
    :try_start_1
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    iget-wide v2, v0, Lextern/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->finished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->errorCode:Lextern/okhttp3/internal/http2/ErrorCode;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$800(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # invokes: Lextern/okhttp3/internal/http2/Http2Stream;->waitForIo()V
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$900(Lextern/okhttp3/internal/http2/Http2Stream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-static {v2}, Lextern/okhttp3/internal/http2/Http2Stream;->access$1100(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v2

    invoke-virtual {v2}, Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0

    .line 498
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 492
    :cond_0
    :try_start_3
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$1100(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 495
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # invokes: Lextern/okhttp3/internal/http2/Http2Stream;->checkOutNotClosed()V
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$1200(Lextern/okhttp3/internal/http2/Http2Stream;)V

    .line 496
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    iget-wide v2, v0, Lextern/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lextern/okio/Buffer;

    invoke-virtual {v0}, Lextern/okio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 497
    .local v4, "toWrite":J
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    iget-wide v2, v0, Lextern/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lextern/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 498
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 500
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$1100(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V

    .line 502
    :try_start_4
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->connection:Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$500(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->id:I
    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Stream;->access$600(Lextern/okhttp3/internal/http2/Http2Stream;)I

    move-result v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lextern/okio/Buffer;

    invoke-virtual {v2}, Lextern/okio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lextern/okio/Buffer;

    invoke-virtual/range {v0 .. v5}, Lextern/okhttp3/internal/http2/Http2Connection;->writeData(IZLextern/okio/Buffer;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 504
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$1100(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 506
    return-void

    .line 502
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 504
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Stream;->access$1100(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 524
    sget-boolean v0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 525
    :cond_0
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    monitor-enter v1

    .line 526
    :try_start_0
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->closed:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 544
    :goto_0
    return-void

    .line 527
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lextern/okhttp3/internal/http2/Http2Stream;->sink:Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;

    iget-boolean v0, v0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->finished:Z

    if-nez v0, :cond_3

    .line 530
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lextern/okio/Buffer;

    invoke-virtual {v0}, Lextern/okio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 531
    :goto_1
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lextern/okio/Buffer;

    invoke-virtual {v0}, Lextern/okio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 532
    invoke-direct {p0, v2}, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_1

    .line 527
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 536
    :cond_2
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->connection:Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$500(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->id:I
    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Stream;->access$600(Lextern/okhttp3/internal/http2/Http2Stream;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lextern/okhttp3/internal/http2/Http2Connection;->writeData(IZLextern/okio/Buffer;J)V

    .line 539
    :cond_3
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    monitor-enter v1

    .line 540
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->closed:Z

    .line 541
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 542
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->connection:Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$500(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Connection;->flush()V

    .line 543
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # invokes: Lextern/okhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$1000(Lextern/okhttp3/internal/http2/Http2Stream;)V

    goto :goto_0

    .line 541
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    sget-boolean v0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 510
    :cond_0
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    monitor-enter v1

    .line 511
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # invokes: Lextern/okhttp3/internal/http2/Http2Stream;->checkOutNotClosed()V
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$1200(Lextern/okhttp3/internal/http2/Http2Stream;)V

    .line 512
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :goto_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lextern/okio/Buffer;

    invoke-virtual {v0}, Lextern/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 514
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->emitDataFrame(Z)V

    .line 515
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->connection:Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$500(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Connection;->flush()V

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 517
    :cond_1
    return-void
.end method

.method public timeout()Lextern/okio/Timeout;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$1100(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lextern/okio/Buffer;J)V
    .locals 4
    .param p1, "source"    # Lextern/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    sget-boolean v0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 473
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lextern/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lextern/okio/Buffer;->write(Lextern/okio/Buffer;J)V

    .line 474
    :goto_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->sendBuffer:Lextern/okio/Buffer;

    invoke-virtual {v0}, Lextern/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_0

    .line 477
    :cond_1
    return-void
.end method
