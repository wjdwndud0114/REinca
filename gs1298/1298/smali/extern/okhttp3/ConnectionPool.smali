.class public final Lextern/okhttp3/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final cleanupRunnable:Ljava/lang/Runnable;

.field cleanupRunning:Z

.field private final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lextern/okhttp3/internal/connection/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field final routeDatabase:Lextern/okhttp3/internal/connection/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 43
    const-class v0, Lextern/okhttp3/ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lextern/okhttp3/ConnectionPool;->$assertionsDisabled:Z

    .line 49
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    invoke-static {v0, v8}, Lextern/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lextern/okhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    return-void

    :cond_0
    move v0, v2

    .line 43
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x5

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v2, v3, v1}, Lextern/okhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 86
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lextern/okhttp3/ConnectionPool$1;

    invoke-direct {v0, p0}, Lextern/okhttp3/ConnectionPool$1;-><init>(Lextern/okhttp3/ConnectionPool;)V

    iput-object v0, p0, Lextern/okhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    .line 76
    new-instance v0, Lextern/okhttp3/internal/connection/RouteDatabase;

    invoke-direct {v0}, Lextern/okhttp3/internal/connection/RouteDatabase;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/ConnectionPool;->routeDatabase:Lextern/okhttp3/internal/connection/RouteDatabase;

    .line 89
    iput p1, p0, Lextern/okhttp3/ConnectionPool;->maxIdleConnections:I

    .line 90
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lextern/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    .line 93
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    return-void
.end method

.method private pruneAndGetAllocationCount(Lextern/okhttp3/internal/connection/RealConnection;J)I
    .locals 8
    .param p1, "connection"    # Lextern/okhttp3/internal/connection/RealConnection;
    .param p2, "now"    # J

    .prologue
    .line 239
    iget-object v3, p1, Lextern/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    .line 240
    .local v3, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/Reference<Lextern/okhttp3/internal/connection/StreamAllocation;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 241
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 243
    .local v2, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lextern/okhttp3/internal/connection/StreamAllocation;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 245
    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 249
    check-cast v4, Lextern/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    .line 251
    .local v4, "streamAllocRef":Lextern/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lextern/okhttp3/internal/connection/RealConnection;->route()Lextern/okhttp3/Route;

    move-result-object v6

    invoke-virtual {v6}, Lextern/okhttp3/Route;->address()Lextern/okhttp3/Address;

    move-result-object v6

    invoke-virtual {v6}, Lextern/okhttp3/Address;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v5

    iget-object v6, v4, Lextern/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;->callStackTrace:Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Lextern/okhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 256
    const/4 v5, 0x1

    iput-boolean v5, p1, Lextern/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 259
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 260
    iget-wide v6, p0, Lextern/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    sub-long v6, p2, v6

    iput-wide v6, p1, Lextern/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 261
    const/4 v5, 0x0

    .line 265
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lextern/okhttp3/internal/connection/StreamAllocation;>;"
    .end local v4    # "streamAllocRef":Lextern/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    :goto_1
    return v5

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1
.end method


# virtual methods
.method cleanup(J)J
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "inUseConnectionCount":I
    const/4 v2, 0x0

    .line 184
    .local v2, "idleConnectionCount":I
    const/4 v6, 0x0

    .line 185
    .local v6, "longestIdleConnection":Lextern/okhttp3/internal/connection/RealConnection;
    const-wide/high16 v8, -0x8000000000000000L

    .line 188
    .local v8, "longestIdleDurationNs":J
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v7, p0, Lextern/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lextern/okhttp3/internal/connection/RealConnection;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/internal/connection/RealConnection;

    .line 193
    .local v0, "connection":Lextern/okhttp3/internal/connection/RealConnection;
    invoke-direct {p0, v0, p1, p2}, Lextern/okhttp3/ConnectionPool;->pruneAndGetAllocationCount(Lextern/okhttp3/internal/connection/RealConnection;J)I

    move-result v7

    if-lez v7, :cond_1

    .line 194
    add-int/lit8 v3, v3, 0x1

    .line 195
    goto :goto_0

    .line 198
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 201
    iget-wide v10, v0, Lextern/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    sub-long v4, p1, v10

    .line 202
    .local v4, "idleDurationNs":J
    cmp-long v7, v4, v8

    if-lez v7, :cond_0

    .line 203
    move-wide v8, v4

    .line 204
    move-object v6, v0

    goto :goto_0

    .line 208
    .end local v0    # "connection":Lextern/okhttp3/internal/connection/RealConnection;
    .end local v4    # "idleDurationNs":J
    :cond_2
    iget-wide v10, p0, Lextern/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    iget v7, p0, Lextern/okhttp3/ConnectionPool;->maxIdleConnections:I

    if-le v2, v7, :cond_4

    .line 212
    :cond_3
    iget-object v7, p0, Lextern/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v7, v6}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 224
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-virtual {v6}, Lextern/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-static {v7}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 229
    const-wide/16 v10, 0x0

    :goto_1
    return-wide v10

    .line 213
    :cond_4
    if-lez v2, :cond_5

    .line 215
    :try_start_1
    iget-wide v10, p0, Lextern/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    sub-long/2addr v10, v8

    monitor-exit p0

    goto :goto_1

    .line 224
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lextern/okhttp3/internal/connection/RealConnection;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 216
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lextern/okhttp3/internal/connection/RealConnection;>;"
    :cond_5
    if-lez v3, :cond_6

    .line 218
    :try_start_2
    iget-wide v10, p0, Lextern/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    monitor-exit p0

    goto :goto_1

    .line 221
    :cond_6
    const/4 v7, 0x0

    iput-boolean v7, p0, Lextern/okhttp3/ConnectionPool;->cleanupRunning:Z

    .line 222
    const-wide/16 v10, -0x1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method connectionBecameIdle(Lextern/okhttp3/internal/connection/RealConnection;)Z
    .locals 1
    .param p1, "connection"    # Lextern/okhttp3/internal/connection/RealConnection;

    .prologue
    .line 145
    sget-boolean v0, Lextern/okhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_0
    iget-boolean v0, p1, Lextern/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_1

    iget v0, p0, Lextern/okhttp3/ConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_2

    .line 147
    :cond_1
    iget-object v0, p0, Lextern/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 148
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    .line 150
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 151
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized connectionCount()I
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public evictAll()V
    .locals 5

    .prologue
    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v1, "evictedConnections":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/connection/RealConnection;>;"
    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v4, p0, Lextern/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lextern/okhttp3/internal/connection/RealConnection;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/internal/connection/RealConnection;

    .line 161
    .local v0, "connection":Lextern/okhttp3/internal/connection/RealConnection;
    iget-object v4, v0, Lextern/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    const/4 v4, 0x1

    iput-boolean v4, v0, Lextern/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 163
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 167
    .end local v0    # "connection":Lextern/okhttp3/internal/connection/RealConnection;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lextern/okhttp3/internal/connection/RealConnection;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lextern/okhttp3/internal/connection/RealConnection;>;"
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/internal/connection/RealConnection;

    .line 170
    .restart local v0    # "connection":Lextern/okhttp3/internal/connection/RealConnection;
    invoke-virtual {v0}, Lextern/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-static {v4}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_1

    .line 172
    .end local v0    # "connection":Lextern/okhttp3/internal/connection/RealConnection;
    :cond_2
    return-void
.end method

.method get(Lextern/okhttp3/Address;Lextern/okhttp3/internal/connection/StreamAllocation;)Lextern/okhttp3/internal/connection/RealConnection;
    .locals 4
    .param p1, "address"    # Lextern/okhttp3/Address;
    .param p2, "streamAllocation"    # Lextern/okhttp3/internal/connection/StreamAllocation;

    .prologue
    .line 119
    sget-boolean v2, Lextern/okhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 120
    :cond_0
    iget-object v2, p0, Lextern/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/internal/connection/RealConnection;

    .line 121
    .local v0, "connection":Lextern/okhttp3/internal/connection/RealConnection;
    iget-object v2, v0, Lextern/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lextern/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    if-ge v2, v3, :cond_1

    invoke-virtual {v0}, Lextern/okhttp3/internal/connection/RealConnection;->route()Lextern/okhttp3/Route;

    move-result-object v2

    iget-object v2, v2, Lextern/okhttp3/Route;->address:Lextern/okhttp3/Address;

    invoke-virtual {p1, v2}, Lextern/okhttp3/Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lextern/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v2, :cond_1

    .line 124
    invoke-virtual {p2, v0}, Lextern/okhttp3/internal/connection/StreamAllocation;->acquire(Lextern/okhttp3/internal/connection/RealConnection;)V

    .line 128
    .end local v0    # "connection":Lextern/okhttp3/internal/connection/RealConnection;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized idleConnectionCount()I
    .locals 4

    .prologue
    .line 100
    monitor-enter p0

    const/4 v2, 0x0

    .line 101
    .local v2, "total":I
    :try_start_0
    iget-object v3, p0, Lextern/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/internal/connection/RealConnection;

    .line 102
    .local v0, "connection":Lextern/okhttp3/internal/connection/RealConnection;
    iget-object v3, v0, Lextern/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "connection":Lextern/okhttp3/internal/connection/RealConnection;
    :cond_1
    monitor-exit p0

    return v2

    .line 100
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method put(Lextern/okhttp3/internal/connection/RealConnection;)V
    .locals 2
    .param p1, "connection"    # Lextern/okhttp3/internal/connection/RealConnection;

    .prologue
    .line 132
    sget-boolean v0, Lextern/okhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 133
    :cond_0
    iget-boolean v0, p0, Lextern/okhttp3/ConnectionPool;->cleanupRunning:Z

    if-nez v0, :cond_1

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lextern/okhttp3/ConnectionPool;->cleanupRunning:Z

    .line 135
    sget-object v0, Lextern/okhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lextern/okhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lextern/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method
