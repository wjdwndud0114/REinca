.class final Lextern/okhttp3/internal/cache/DiskLruCache$4;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Lextern/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    return-void
.end method

.method public timeout()Lextern/okio/Timeout;
    .locals 1

    .prologue
    .line 835
    sget-object v0, Lextern/okio/Timeout;->NONE:Lextern/okio/Timeout;

    return-object v0
.end method

.method public write(Lextern/okio/Buffer;J)V
    .locals 0
    .param p1, "source"    # Lextern/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-virtual {p1, p2, p3}, Lextern/okio/Buffer;->skip(J)V

    .line 829
    return-void
.end method
