.class final Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lextern/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramedDataSource"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closed:Z

.field private finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lextern/okio/Buffer;

.field private final receiveBuffer:Lextern/okio/Buffer;

.field final synthetic this$0:Lextern/okhttp3/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    const-class v0, Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lextern/okhttp3/internal/http2/Http2Stream;J)V
    .locals 2
    .param p2, "maxByteCount"    # J

    .prologue
    .line 319
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Lextern/okio/Buffer;

    invoke-direct {v0}, Lextern/okio/Buffer;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->receiveBuffer:Lextern/okio/Buffer;

    .line 305
    new-instance v0, Lextern/okio/Buffer;

    invoke-direct {v0}, Lextern/okio/Buffer;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lextern/okio/Buffer;

    .line 320
    iput-wide p2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->maxByteCount:J

    .line 321
    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/internal/http2/Http2Stream;JLextern/okhttp3/internal/http2/Http2Stream$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/internal/http2/Http2Stream;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lextern/okhttp3/internal/http2/Http2Stream$1;

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3}, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;-><init>(Lextern/okhttp3/internal/http2/Http2Stream;J)V

    return-void
.end method

.method static synthetic access$100(Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;)Z
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;

    .prologue
    .line 300
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->finished:Z

    return v0
.end method

.method static synthetic access$102(Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;Z)Z
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;
    .param p1, "x1"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->finished:Z

    return p1
.end method

.method static synthetic access$300(Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;)Z
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;

    .prologue
    .line 300
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->closed:Z

    return v0
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->closed:Z

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->errorCode:Lextern/okhttp3/internal/http2/ErrorCode;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$800(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    new-instance v0, Lextern/okhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->errorCode:Lextern/okhttp3/internal/http2/ErrorCode;
    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Stream;->access$800(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1}, Lextern/okhttp3/internal/http2/StreamResetException;-><init>(Lextern/okhttp3/internal/http2/ErrorCode;)V

    throw v0

    .line 430
    :cond_1
    return-void
.end method

.method private waitUntilReadable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->readTimeout:Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$700(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V

    .line 362
    :goto_0
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lextern/okio/Buffer;

    invoke-virtual {v0}, Lextern/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->finished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->errorCode:Lextern/okhttp3/internal/http2/ErrorCode;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$800(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # invokes: Lextern/okhttp3/internal/http2/Http2Stream;->waitForIo()V
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$900(Lextern/okhttp3/internal/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->readTimeout:Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Stream;->access$700(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0

    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->readTimeout:Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$700(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 368
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    monitor-enter v1

    .line 416
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->closed:Z

    .line 417
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lextern/okio/Buffer;

    invoke-virtual {v0}, Lextern/okio/Buffer;->clear()V

    .line 418
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 419
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # invokes: Lextern/okhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$1000(Lextern/okhttp3/internal/http2/Http2Stream;)V

    .line 421
    return-void

    .line 419
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read(Lextern/okio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lextern/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 325
    cmp-long v2, p2, v6

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_0
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    monitor-enter v3

    .line 329
    :try_start_0
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->waitUntilReadable()V

    .line 330
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->checkNotClosed()V

    .line 331
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lextern/okio/Buffer;

    invoke-virtual {v2}, Lextern/okio/Buffer;->size()J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    const-wide/16 v0, -0x1

    monitor-exit v3

    .line 355
    :goto_0
    return-wide v0

    .line 334
    :cond_1
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lextern/okio/Buffer;

    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lextern/okio/Buffer;

    invoke-virtual {v4}, Lextern/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, p1, v4, v5}, Lextern/okio/Buffer;->read(Lextern/okio/Buffer;J)J

    move-result-wide v0

    .line 337
    .local v0, "read":J
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    iget-wide v4, v2, Lextern/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lextern/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 338
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    iget-wide v4, v2, Lextern/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->connection:Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-static {v2}, Lextern/okhttp3/internal/http2/Http2Stream;->access$500(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v2

    iget-object v2, v2, Lextern/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v2}, Lextern/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    .line 340
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->connection:Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-static {v2}, Lextern/okhttp3/internal/http2/Http2Stream;->access$500(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v2

    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->id:I
    invoke-static {v4}, Lextern/okhttp3/internal/http2/Http2Stream;->access$600(Lextern/okhttp3/internal/http2/Http2Stream;)I

    move-result v4

    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    iget-wide v6, v5, Lextern/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    invoke-virtual {v2, v4, v6, v7}, Lextern/okhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    .line 341
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lextern/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 343
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 346
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->connection:Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-static {v2}, Lextern/okhttp3/internal/http2/Http2Stream;->access$500(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v3

    monitor-enter v3

    .line 347
    :try_start_1
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->connection:Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-static {v2}, Lextern/okhttp3/internal/http2/Http2Stream;->access$500(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v2

    iget-wide v4, v2, Lextern/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lextern/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 348
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->connection:Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-static {v2}, Lextern/okhttp3/internal/http2/Http2Stream;->access$500(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v2

    iget-wide v4, v2, Lextern/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->connection:Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-static {v2}, Lextern/okhttp3/internal/http2/Http2Stream;->access$500(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v2

    iget-object v2, v2, Lextern/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v2}, Lextern/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    .line 350
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->connection:Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-static {v2}, Lextern/okhttp3/internal/http2/Http2Stream;->access$500(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->connection:Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-static {v5}, Lextern/okhttp3/internal/http2/Http2Stream;->access$500(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v5

    iget-wide v6, v5, Lextern/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    invoke-virtual {v2, v4, v6, v7}, Lextern/okhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    .line 351
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->connection:Lextern/okhttp3/internal/http2/Http2Connection;
    invoke-static {v2}, Lextern/okhttp3/internal/http2/Http2Stream;->access$500(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Connection;

    move-result-object v2

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lextern/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 353
    :cond_3
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 343
    .end local v0    # "read":J
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method receive(Lextern/okio/BufferedSource;J)V
    .locals 12
    .param p1, "in"    # Lextern/okio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    sget-boolean v5, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 397
    .local v0, "finished":Z
    .local v1, "flowControlError":Z
    .local v2, "read":J
    :cond_0
    sub-long/2addr p2, v2

    .line 400
    iget-object v6, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    monitor-enter v6

    .line 401
    :try_start_0
    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lextern/okio/Buffer;

    invoke-virtual {v5}, Lextern/okio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_7

    const/4 v4, 0x1

    .line 402
    .local v4, "wasEmpty":Z
    :goto_0
    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lextern/okio/Buffer;

    iget-object v7, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->receiveBuffer:Lextern/okio/Buffer;

    invoke-virtual {v5, v7}, Lextern/okio/Buffer;->writeAll(Lextern/okio/Source;)J

    .line 403
    if-eqz v4, :cond_1

    .line 404
    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 406
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 373
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    .end local v2    # "read":J
    .end local v4    # "wasEmpty":Z
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-lez v5, :cond_3

    .line 376
    iget-object v6, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    monitor-enter v6

    .line 377
    :try_start_1
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->finished:Z

    .line 378
    .restart local v0    # "finished":Z
    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->readBuffer:Lextern/okio/Buffer;

    invoke-virtual {v5}, Lextern/okio/Buffer;->size()J

    move-result-wide v8

    add-long/2addr v8, p2

    iget-wide v10, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->maxByteCount:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_4

    const/4 v1, 0x1

    .line 379
    .restart local v1    # "flowControlError":Z
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    if-eqz v1, :cond_5

    .line 383
    invoke-interface {p1, p2, p3}, Lextern/okio/BufferedSource;->skip(J)V

    .line 384
    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    sget-object v6, Lextern/okhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v5, v6}, Lextern/okhttp3/internal/http2/Http2Stream;->closeLater(Lextern/okhttp3/internal/http2/ErrorCode;)V

    .line 408
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    :cond_3
    :goto_2
    return-void

    .line 378
    .restart local v0    # "finished":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 379
    .end local v0    # "finished":Z
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 389
    .restart local v0    # "finished":Z
    .restart local v1    # "flowControlError":Z
    :cond_5
    if-eqz v0, :cond_6

    .line 390
    invoke-interface {p1, p2, p3}, Lextern/okio/BufferedSource;->skip(J)V

    goto :goto_2

    .line 395
    :cond_6
    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->receiveBuffer:Lextern/okio/Buffer;

    invoke-interface {p1, v5, p2, p3}, Lextern/okio/BufferedSource;->read(Lextern/okio/Buffer;J)J

    move-result-wide v2

    .line 396
    .restart local v2    # "read":J
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 401
    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    .line 406
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method public timeout()Lextern/okio/Timeout;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Stream$FramedDataSource;->this$0:Lextern/okhttp3/internal/http2/Http2Stream;

    # getter for: Lextern/okhttp3/internal/http2/Http2Stream;->readTimeout:Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->access$700(Lextern/okhttp3/internal/http2/Http2Stream;)Lextern/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method
