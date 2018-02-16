.class Lextern/okhttp3/internal/cache/DiskLruCache$2;
.super Lextern/okhttp3/internal/cache/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lextern/okio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lextern/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    const-class v0, Lextern/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lextern/okhttp3/internal/cache/DiskLruCache$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lextern/okhttp3/internal/cache/DiskLruCache;Lextern/okio/Sink;)V
    .locals 0
    .param p2, "x0"    # Lextern/okio/Sink;

    .prologue
    .line 312
    iput-object p1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$2;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0, p2}, Lextern/okhttp3/internal/cache/FaultHidingSink;-><init>(Lextern/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 314
    sget-boolean v0, Lextern/okhttp3/internal/cache/DiskLruCache$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$2;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 315
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$2;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x1

    # setter for: Lextern/okhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z
    invoke-static {v0, v1}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$1002(Lextern/okhttp3/internal/cache/DiskLruCache;Z)Z

    .line 316
    return-void
.end method
