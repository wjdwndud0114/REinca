.class Lextern/okhttp3/internal/cache/DiskLruCache$3;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lextern/okhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field nextSnapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

.field removeSnapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

.field final synthetic this$0:Lextern/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lextern/okhttp3/internal/cache/DiskLruCache;)V
    .locals 2

    .prologue
    .line 733
    iput-object p1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-static {v1}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$2300(Lextern/okhttp3/internal/cache/DiskLruCache;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 744
    iget-object v4, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    if-eqz v4, :cond_0

    .line 759
    :goto_0
    return v2

    .line 746
    :cond_0
    iget-object v4, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v4

    .line 748
    :try_start_0
    iget-object v5, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->closed:Z
    invoke-static {v5}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$100(Lextern/okhttp3/internal/cache/DiskLruCache;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 750
    :cond_1
    iget-object v5, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 751
    iget-object v5, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 752
    .local v0, "entry":Lextern/okhttp3/internal/cache/DiskLruCache$Entry;
    invoke-virtual {v0}, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v1

    .line 753
    .local v1, "snapshot":Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;
    if-eqz v1, :cond_1

    .line 754
    iput-object v1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 755
    monitor-exit v4

    goto :goto_0

    .line 757
    .end local v0    # "entry":Lextern/okhttp3/internal/cache/DiskLruCache$Entry;
    .end local v1    # "snapshot":Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 759
    goto :goto_0
.end method

.method public next()Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;
    .locals 1

    .prologue
    .line 763
    invoke-virtual {p0}, Lextern/okhttp3/internal/cache/DiskLruCache$3;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 764
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    iput-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 765
    const/4 v0, 0x0

    iput-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 766
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 733
    invoke-virtual {p0}, Lextern/okhttp3/internal/cache/DiskLruCache$3;->next()Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 770
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_0
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    iget-object v1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;
    invoke-static {v1}, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->access$2400(Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lextern/okhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    iput-object v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 779
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v0

    .line 777
    iput-object v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    throw v0
.end method
