.class Lextern/okhttp3/internal/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lextern/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lextern/okhttp3/internal/cache/DiskLruCache;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$1;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 173
    iget-object v4, p0, Lextern/okhttp3/internal/cache/DiskLruCache$1;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v4

    .line 174
    :try_start_0
    iget-object v5, p0, Lextern/okhttp3/internal/cache/DiskLruCache$1;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->initialized:Z
    invoke-static {v5}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$000(Lextern/okhttp3/internal/cache/DiskLruCache;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    iget-object v3, p0, Lextern/okhttp3/internal/cache/DiskLruCache$1;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->closed:Z
    invoke-static {v3}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$100(Lextern/okhttp3/internal/cache/DiskLruCache;)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 175
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 174
    goto :goto_0

    .line 179
    :cond_1
    :try_start_1
    iget-object v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$1;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # invokes: Lextern/okhttp3/internal/cache/DiskLruCache;->trimToSize()V
    invoke-static {v2}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$200(Lextern/okhttp3/internal/cache/DiskLruCache;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :goto_2
    :try_start_2
    iget-object v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$1;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # invokes: Lextern/okhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v2}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$400(Lextern/okhttp3/internal/cache/DiskLruCache;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    iget-object v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$1;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # invokes: Lextern/okhttp3/internal/cache/DiskLruCache;->rebuildJournal()V
    invoke-static {v2}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$500(Lextern/okhttp3/internal/cache/DiskLruCache;)V

    .line 187
    iget-object v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$1;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    const/4 v3, 0x0

    # setter for: Lextern/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    invoke-static {v2, v3}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$602(Lextern/okhttp3/internal/cache/DiskLruCache;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :cond_2
    :goto_3
    :try_start_3
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "ignored":Ljava/io/IOException;
    :try_start_4
    iget-object v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$1;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    const/4 v3, 0x1

    # setter for: Lextern/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    invoke-static {v2, v3}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$302(Lextern/okhttp3/internal/cache/DiskLruCache;Z)Z

    goto :goto_2

    .line 189
    .end local v1    # "ignored":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$1;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    const/4 v3, 0x1

    # setter for: Lextern/okhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
    invoke-static {v2, v3}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$702(Lextern/okhttp3/internal/cache/DiskLruCache;Z)Z

    .line 191
    iget-object v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$1;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->NULL_SINK:Lextern/okio/Sink;
    invoke-static {}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$900()Lextern/okio/Sink;

    move-result-object v3

    invoke-static {v3}, Lextern/okio/Okio;->buffer(Lextern/okio/Sink;)Lextern/okio/BufferedSink;

    move-result-object v3

    # setter for: Lextern/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lextern/okio/BufferedSink;
    invoke-static {v2, v3}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$802(Lextern/okhttp3/internal/cache/DiskLruCache;Lextern/okio/BufferedSink;)Lextern/okio/BufferedSink;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method
