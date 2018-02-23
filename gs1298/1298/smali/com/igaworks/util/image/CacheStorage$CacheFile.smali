.class Lcom/igaworks/util/image/CacheStorage$CacheFile;
.super Ljava/lang/Object;
.source "CacheStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/util/image/CacheStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheFile"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public size:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/igaworks/util/image/CacheStorage$CacheFile;->file:Ljava/io/File;

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/util/image/CacheStorage$CacheFile;->size:J

    .line 220
    return-void
.end method
