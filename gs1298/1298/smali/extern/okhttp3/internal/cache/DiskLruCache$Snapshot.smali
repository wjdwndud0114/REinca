.class public final Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field private final sources:[Lextern/okio/Source;

.field final synthetic this$0:Lextern/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lextern/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lextern/okio/Source;[J)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "sources"    # [Lextern/okio/Source;
    .param p6, "lengths"    # [J

    .prologue
    .line 790
    iput-object p1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    iput-object p2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 792
    iput-wide p3, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 793
    iput-object p5, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lextern/okio/Source;

    .line 794
    iput-object p6, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->lengths:[J

    .line 795
    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lextern/okio/Source;[JLextern/okhttp3/internal/cache/DiskLruCache$1;)V
    .locals 1
    .param p1, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Lextern/okio/Source;
    .param p6, "x4"    # [J
    .param p7, "x5"    # Lextern/okhttp3/internal/cache/DiskLruCache$1;

    .prologue
    .line 784
    invoke-direct/range {p0 .. p6}, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;-><init>(Lextern/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lextern/okio/Source;[J)V

    return-void
.end method

.method static synthetic access$2400(Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .prologue
    .line 784
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 820
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lextern/okio/Source;

    .local v0, "arr$":[Lextern/okio/Source;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 821
    .local v2, "in":Lextern/okio/Source;
    invoke-static {v2}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 820
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 823
    .end local v2    # "in":Lextern/okio/Source;
    :cond_0
    return-void
.end method

.method public edit()Lextern/okhttp3/internal/cache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    iget-object v1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    # invokes: Lextern/okhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lextern/okhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$2500(Lextern/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J)Lextern/okhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getLength(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 816
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getSource(I)Lextern/okio/Source;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 811
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lextern/okio/Source;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object v0
.end method
