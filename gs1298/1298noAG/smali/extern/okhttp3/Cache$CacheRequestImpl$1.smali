.class Lextern/okhttp3/Cache$CacheRequestImpl$1;
.super Lextern/okio/ForwardingSink;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/Cache$CacheRequestImpl;-><init>(Lextern/okhttp3/Cache;Lextern/okhttp3/internal/cache/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lextern/okhttp3/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lextern/okhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic val$this$0:Lextern/okhttp3/Cache;


# direct methods
.method constructor <init>(Lextern/okhttp3/Cache$CacheRequestImpl;Lextern/okio/Sink;Lextern/okhttp3/Cache;Lextern/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 0
    .param p2, "x0"    # Lextern/okio/Sink;

    .prologue
    .line 439
    iput-object p1, p0, Lextern/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lextern/okhttp3/Cache$CacheRequestImpl;

    iput-object p3, p0, Lextern/okhttp3/Cache$CacheRequestImpl$1;->val$this$0:Lextern/okhttp3/Cache;

    iput-object p4, p0, Lextern/okhttp3/Cache$CacheRequestImpl$1;->val$editor:Lextern/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lextern/okio/ForwardingSink;-><init>(Lextern/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lextern/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lextern/okhttp3/Cache$CacheRequestImpl;

    iget-object v1, v0, Lextern/okhttp3/Cache$CacheRequestImpl;->this$0:Lextern/okhttp3/Cache;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lextern/okhttp3/Cache$CacheRequestImpl;

    # getter for: Lextern/okhttp3/Cache$CacheRequestImpl;->done:Z
    invoke-static {v0}, Lextern/okhttp3/Cache$CacheRequestImpl;->access$700(Lextern/okhttp3/Cache$CacheRequestImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    monitor-exit v1

    .line 450
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lextern/okhttp3/Cache$CacheRequestImpl;

    const/4 v2, 0x1

    # setter for: Lextern/okhttp3/Cache$CacheRequestImpl;->done:Z
    invoke-static {v0, v2}, Lextern/okhttp3/Cache$CacheRequestImpl;->access$702(Lextern/okhttp3/Cache$CacheRequestImpl;Z)Z

    .line 446
    iget-object v0, p0, Lextern/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lextern/okhttp3/Cache$CacheRequestImpl;

    iget-object v0, v0, Lextern/okhttp3/Cache$CacheRequestImpl;->this$0:Lextern/okhttp3/Cache;

    # operator++ for: Lextern/okhttp3/Cache;->writeSuccessCount:I
    invoke-static {v0}, Lextern/okhttp3/Cache;->access$808(Lextern/okhttp3/Cache;)I

    .line 447
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-super {p0}, Lextern/okio/ForwardingSink;->close()V

    .line 449
    iget-object v0, p0, Lextern/okhttp3/Cache$CacheRequestImpl$1;->val$editor:Lextern/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lextern/okhttp3/internal/cache/DiskLruCache$Editor;->commit()V

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
