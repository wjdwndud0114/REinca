.class Lextern/okhttp3/internal/cache/DiskLruCache$Editor$1;
.super Lextern/okhttp3/internal/cache/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lextern/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lextern/okhttp3/internal/cache/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lextern/okhttp3/internal/cache/DiskLruCache$Editor;Lextern/okio/Sink;)V
    .locals 0
    .param p2, "x0"    # Lextern/okio/Sink;

    .prologue
    .line 915
    iput-object p1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lextern/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lextern/okhttp3/internal/cache/FaultHidingSink;-><init>(Lextern/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 917
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lextern/okhttp3/internal/cache/DiskLruCache$Editor;

    iget-object v1, v0, Lextern/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    .line 918
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lextern/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lextern/okhttp3/internal/cache/DiskLruCache$Editor;->detach()V

    .line 919
    monitor-exit v1

    .line 920
    return-void

    .line 919
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
