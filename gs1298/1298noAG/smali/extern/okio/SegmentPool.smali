.class final Lextern/okio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lextern/okio/Segment;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static recycle(Lextern/okio/Segment;)V
    .locals 8
    .param p0, "segment"    # Lextern/okio/Segment;

    .prologue
    const-wide/16 v6, 0x2000

    .line 50
    iget-object v0, p0, Lextern/okio/Segment;->next:Lextern/okio/Segment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lextern/okio/Segment;->prev:Lextern/okio/Segment;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_1
    iget-boolean v0, p0, Lextern/okio/Segment;->shared:Z

    if-eqz v0, :cond_2

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_2
    const-class v1, Lextern/okio/SegmentPool;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-wide v2, Lextern/okio/SegmentPool;->byteCount:J

    add-long/2addr v2, v6

    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    monitor-exit v1

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 54
    :cond_3
    :try_start_1
    sget-wide v2, Lextern/okio/SegmentPool;->byteCount:J

    add-long/2addr v2, v6

    sput-wide v2, Lextern/okio/SegmentPool;->byteCount:J

    .line 55
    sget-object v0, Lextern/okio/SegmentPool;->next:Lextern/okio/Segment;

    iput-object v0, p0, Lextern/okio/Segment;->next:Lextern/okio/Segment;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lextern/okio/Segment;->limit:I

    iput v0, p0, Lextern/okio/Segment;->pos:I

    .line 57
    sput-object p0, Lextern/okio/SegmentPool;->next:Lextern/okio/Segment;

    .line 58
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static take()Lextern/okio/Segment;
    .locals 8

    .prologue
    .line 37
    const-class v2, Lextern/okio/SegmentPool;

    monitor-enter v2

    .line 38
    :try_start_0
    sget-object v1, Lextern/okio/SegmentPool;->next:Lextern/okio/Segment;

    if-eqz v1, :cond_0

    .line 39
    sget-object v0, Lextern/okio/SegmentPool;->next:Lextern/okio/Segment;

    .line 40
    .local v0, "result":Lextern/okio/Segment;
    iget-object v1, v0, Lextern/okio/Segment;->next:Lextern/okio/Segment;

    sput-object v1, Lextern/okio/SegmentPool;->next:Lextern/okio/Segment;

    .line 41
    const/4 v1, 0x0

    iput-object v1, v0, Lextern/okio/Segment;->next:Lextern/okio/Segment;

    .line 42
    sget-wide v4, Lextern/okio/SegmentPool;->byteCount:J

    const-wide/16 v6, 0x2000

    sub-long/2addr v4, v6

    sput-wide v4, Lextern/okio/SegmentPool;->byteCount:J

    .line 43
    monitor-exit v2

    .line 46
    .end local v0    # "result":Lextern/okio/Segment;
    :goto_0
    return-object v0

    .line 45
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    new-instance v0, Lextern/okio/Segment;

    invoke-direct {v0}, Lextern/okio/Segment;-><init>()V

    goto :goto_0

    .line 45
    .restart local v0    # "result":Lextern/okio/Segment;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
