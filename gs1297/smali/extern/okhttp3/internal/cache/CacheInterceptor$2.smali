.class Lextern/okhttp3/internal/cache/CacheInterceptor$2;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lextern/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lextern/okhttp3/internal/cache/CacheRequest;Lextern/okhttp3/Response;)Lextern/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lextern/okhttp3/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lextern/okio/BufferedSink;

.field final synthetic val$cacheRequest:Lextern/okhttp3/internal/cache/CacheRequest;

.field final synthetic val$source:Lextern/okio/BufferedSource;


# direct methods
.method constructor <init>(Lextern/okhttp3/internal/cache/CacheInterceptor;Lextern/okio/BufferedSource;Lextern/okhttp3/internal/cache/CacheRequest;Lextern/okio/BufferedSink;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->this$0:Lextern/okhttp3/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->val$source:Lextern/okio/BufferedSource;

    iput-object p3, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->val$cacheRequest:Lextern/okhttp3/internal/cache/CacheRequest;

    iput-object p4, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->val$cacheBody:Lextern/okio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 225
    iget-boolean v0, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lextern/okhttp3/internal/Util;->discard(Lextern/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    .line 228
    iget-object v0, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->val$cacheRequest:Lextern/okhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lextern/okhttp3/internal/cache/CacheRequest;->abort()V

    .line 230
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->val$source:Lextern/okio/BufferedSource;

    invoke-interface {v0}, Lextern/okio/BufferedSource;->close()V

    .line 231
    return-void
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
    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    .line 198
    :try_start_0
    iget-object v2, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->val$source:Lextern/okio/BufferedSource;

    invoke-interface {v2, p1, p2, p3}, Lextern/okio/BufferedSource;->read(Lextern/okio/Buffer;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 207
    .local v4, "bytesRead":J
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 208
    iget-boolean v2, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    if-nez v2, :cond_0

    .line 209
    iput-boolean v3, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    .line 210
    iget-object v2, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->val$cacheBody:Lextern/okio/BufferedSink;

    invoke-interface {v2}, Lextern/okio/BufferedSink;->close()V

    :cond_0
    move-wide v4, v0

    .line 217
    .end local v4    # "bytesRead":J
    :goto_0
    return-wide v4

    .line 199
    :catch_0
    move-exception v6

    .line 200
    .local v6, "e":Ljava/io/IOException;
    iget-boolean v0, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    if-nez v0, :cond_1

    .line 201
    iput-boolean v3, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    .line 202
    iget-object v0, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->val$cacheRequest:Lextern/okhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lextern/okhttp3/internal/cache/CacheRequest;->abort()V

    .line 204
    :cond_1
    throw v6

    .line 215
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "bytesRead":J
    :cond_2
    iget-object v0, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->val$cacheBody:Lextern/okio/BufferedSink;

    invoke-interface {v0}, Lextern/okio/BufferedSink;->buffer()Lextern/okio/Buffer;

    move-result-object v1

    invoke-virtual {p1}, Lextern/okio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lextern/okio/Buffer;->copyTo(Lextern/okio/Buffer;JJ)Lextern/okio/Buffer;

    .line 216
    iget-object v0, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->val$cacheBody:Lextern/okio/BufferedSink;

    invoke-interface {v0}, Lextern/okio/BufferedSink;->emitCompleteSegments()Lextern/okio/BufferedSink;

    goto :goto_0
.end method

.method public timeout()Lextern/okio/Timeout;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lextern/okhttp3/internal/cache/CacheInterceptor$2;->val$source:Lextern/okio/BufferedSource;

    invoke-interface {v0}, Lextern/okio/BufferedSource;->timeout()Lextern/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
