.class final Lextern/okhttp3/internal/cache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private final cleanFiles:[Ljava/io/File;

.field private currentEditor:Lextern/okhttp3/internal/cache/DiskLruCache$Editor;

.field private final dirtyFiles:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lextern/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lextern/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .locals 7
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 986
    iput-object p1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    iput-object p2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 989
    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$2600(Lextern/okhttp3/internal/cache/DiskLruCache;)I

    move-result v3

    new-array v3, v3, [J

    iput-object v3, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    .line 990
    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$2600(Lextern/okhttp3/internal/cache/DiskLruCache;)I

    move-result v3

    new-array v3, v3, [Ljava/io/File;

    iput-object v3, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 991
    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$2600(Lextern/okhttp3/internal/cache/DiskLruCache;)I

    move-result v3

    new-array v3, v3, [Ljava/io/File;

    iput-object v3, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 995
    .local v0, "fileBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 996
    .local v2, "truncateTo":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$2600(Lextern/okhttp3/internal/cache/DiskLruCache;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 997
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 998
    iget-object v3, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$2900(Lextern/okhttp3/internal/cache/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 999
    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    iget-object v3, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$2900(Lextern/okhttp3/internal/cache/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 1001
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 996
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1003
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;Lextern/okhttp3/internal/cache/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lextern/okhttp3/internal/cache/DiskLruCache$1;

    .prologue
    .line 969
    invoke-direct {p0, p1, p2}, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lextern/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lextern/okhttp3/internal/cache/DiskLruCache$Entry;)Z
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache$Entry;

    .prologue
    .line 969
    iget-boolean v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$1202(Lextern/okhttp3/internal/cache/DiskLruCache$Entry;Z)Z
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache$Entry;
    .param p1, "x1"    # Z

    .prologue
    .line 969
    iput-boolean p1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$1300(Lextern/okhttp3/internal/cache/DiskLruCache$Entry;)Lextern/okhttp3/internal/cache/DiskLruCache$Editor;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache$Entry;

    .prologue
    .line 969
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lextern/okhttp3/internal/cache/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$1302(Lextern/okhttp3/internal/cache/DiskLruCache$Entry;Lextern/okhttp3/internal/cache/DiskLruCache$Editor;)Lextern/okhttp3/internal/cache/DiskLruCache$Editor;
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache$Entry;
    .param p1, "x1"    # Lextern/okhttp3/internal/cache/DiskLruCache$Editor;

    .prologue
    .line 969
    iput-object p1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lextern/okhttp3/internal/cache/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$1400(Lextern/okhttp3/internal/cache/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache$Entry;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 969
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lextern/okhttp3/internal/cache/DiskLruCache$Entry;)[J
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache$Entry;

    .prologue
    .line 969
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1700(Lextern/okhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache$Entry;

    .prologue
    .line 969
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1800(Lextern/okhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache$Entry;

    .prologue
    .line 969
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1900(Lextern/okhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache$Entry;

    .prologue
    .line 969
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lextern/okhttp3/internal/cache/DiskLruCache$Entry;)J
    .locals 2
    .param p0, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache$Entry;

    .prologue
    .line 969
    iget-wide v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$2002(Lextern/okhttp3/internal/cache/DiskLruCache$Entry;J)J
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/cache/DiskLruCache$Entry;
    .param p1, "x1"    # J

    .prologue
    .line 969
    iput-wide p1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1028
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 6
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1007
    array-length v2, p1

    iget-object v3, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {v3}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$2600(Lextern/okhttp3/internal/cache/DiskLruCache;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1008
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1012
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1013
    iget-object v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1018
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    return-void
.end method


# virtual methods
.method snapshot()Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1037
    iget-object v1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1039
    :cond_0
    iget-object v1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$2600(Lextern/okhttp3/internal/cache/DiskLruCache;)I

    move-result v1

    new-array v6, v1, [Lextern/okio/Source;

    .line 1040
    .local v6, "sources":[Lextern/okio/Source;
    iget-object v1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    .line 1042
    .local v7, "lengths":[J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$2600(Lextern/okhttp3/internal/cache/DiskLruCache;)I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 1043
    iget-object v1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lextern/okhttp3/internal/io/FileSystem;
    invoke-static {v1}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$2700(Lextern/okhttp3/internal/cache/DiskLruCache;)Lextern/okhttp3/internal/io/FileSystem;

    move-result-object v1

    iget-object v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v9

    invoke-interface {v1, v2}, Lextern/okhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lextern/okio/Source;

    move-result-object v1

    aput-object v1, v6, v9

    .line 1042
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1045
    :cond_1
    new-instance v1, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    iget-object v2, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    iget-object v3, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget-wide v4, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;-><init>(Lextern/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lextern/okio/Source;[JLextern/okhttp3/internal/cache/DiskLruCache$1;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :goto_1
    return-object v1

    .line 1046
    :catch_0
    move-exception v0

    .line 1048
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v9, 0x0

    :goto_2
    iget-object v1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # getter for: Lextern/okhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$2600(Lextern/okhttp3/internal/cache/DiskLruCache;)I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 1049
    aget-object v1, v6, v9

    if-eqz v1, :cond_2

    .line 1050
    aget-object v1, v6, v9

    invoke-static {v1}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1048
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1058
    :cond_2
    :try_start_1
    iget-object v1, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lextern/okhttp3/internal/cache/DiskLruCache;

    # invokes: Lextern/okhttp3/internal/cache/DiskLruCache;->removeEntry(Lextern/okhttp3/internal/cache/DiskLruCache$Entry;)Z
    invoke-static {v1, p0}, Lextern/okhttp3/internal/cache/DiskLruCache;->access$3100(Lextern/okhttp3/internal/cache/DiskLruCache;Lextern/okhttp3/internal/cache/DiskLruCache$Entry;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v1, v10

    .line 1061
    goto :goto_1

    .line 1059
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method writeLengths(Lextern/okio/BufferedSink;)V
    .locals 6
    .param p1, "writer"    # Lextern/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1022
    iget-object v0, p0, Lextern/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v4, v0, v1

    .line 1023
    .local v4, "length":J
    const/16 v3, 0x20

    invoke-interface {p1, v3}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Lextern/okio/BufferedSink;->writeDecimalLong(J)Lextern/okio/BufferedSink;

    .line 1022
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1025
    .end local v4    # "length":J
    :cond_0
    return-void
.end method
