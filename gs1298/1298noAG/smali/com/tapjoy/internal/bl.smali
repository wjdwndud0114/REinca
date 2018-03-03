.class public final Lcom/tapjoy/internal/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    .line 2037
    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/ap;->c:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1054
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1058
    invoke-static {v0}, Lcom/tapjoy/internal/db;->a(Ljava/lang/Readable;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 45
    invoke-static {v1}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 114
    :try_start_0
    invoke-static {v0, p1}, Lcom/tapjoy/internal/bl;->a(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-static {v0}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Lcom/tapjoy/internal/ap;->c:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 122
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 124
    return-void
.end method
