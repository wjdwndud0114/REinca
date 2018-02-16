.class public abstract Lcom/igaworks/util/image/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 67
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "source"    # Ljava/io/File;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "is":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .end local v0    # "is":Ljava/io/BufferedInputStream;
    .local v1, "is":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1, p1}, Lcom/igaworks/util/image/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    invoke-static {v1}, Lcom/igaworks/util/image/IOUtils;->close(Ljava/io/Closeable;)V

    .line 48
    return-void

    .line 46
    .end local v1    # "is":Ljava/io/BufferedInputStream;
    .restart local v0    # "is":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/igaworks/util/image/IOUtils;->close(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "is":Ljava/io/BufferedInputStream;
    .restart local v1    # "is":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Ljava/io/BufferedInputStream;
    .restart local v0    # "is":Ljava/io/BufferedInputStream;
    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v0    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {p0, v1}, Lcom/igaworks/util/image/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    invoke-static {v1}, Lcom/igaworks/util/image/IOUtils;->close(Ljava/io/Closeable;)V

    .line 58
    return-void

    .line 56
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/igaworks/util/image/IOUtils;->close(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "os":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 34
    .local v0, "buff":[B
    const/4 v1, -0x1

    .line 35
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 36
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 62
    return-void
.end method

.method public static read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    const/4 v3, 0x0

    .line 18
    .local v3, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .local v4, "reader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v5, 0x400

    new-array v2, v5, [C

    .line 21
    .local v2, "readDate":[C
    const/4 v1, -0x1

    .line 22
    .local v1, "len":I
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 23
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 27
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "len":I
    .end local v2    # "readDate":[C
    :catchall_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    :goto_1
    invoke-static {v3}, Lcom/igaworks/util/image/IOUtils;->close(Ljava/io/Closeable;)V

    throw v5

    .line 25
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "len":I
    .restart local v2    # "readDate":[C
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 27
    invoke-static {v4}, Lcom/igaworks/util/image/IOUtils;->close(Ljava/io/Closeable;)V

    .line 25
    return-object v5

    .line 27
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "len":I
    .end local v2    # "readDate":[C
    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v5

    goto :goto_1
.end method
