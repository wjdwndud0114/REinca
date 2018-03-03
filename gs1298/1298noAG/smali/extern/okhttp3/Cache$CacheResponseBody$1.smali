.class Lextern/okhttp3/Cache$CacheResponseBody$1;
.super Lextern/okio/ForwardingSource;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/Cache$CacheResponseBody;-><init>(Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lextern/okhttp3/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lextern/okhttp3/Cache$CacheResponseBody;Lextern/okio/Source;Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;)V
    .locals 0
    .param p2, "x0"    # Lextern/okio/Source;

    .prologue
    .line 750
    iput-object p1, p0, Lextern/okhttp3/Cache$CacheResponseBody$1;->this$0:Lextern/okhttp3/Cache$CacheResponseBody;

    iput-object p3, p0, Lextern/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lextern/okio/ForwardingSource;-><init>(Lextern/okio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lextern/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 753
    invoke-super {p0}, Lextern/okio/ForwardingSource;->close()V

    .line 754
    return-void
.end method
