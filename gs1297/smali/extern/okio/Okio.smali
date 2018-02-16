.class public final Lextern/okio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lextern/okio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lextern/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Lextern/okio/Sink;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 173
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lextern/okio/Okio;->sink(Ljava/io/OutputStream;)Lextern/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static blackhole()Lextern/okio/Sink;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lextern/okio/Okio$3;

    invoke-direct {v0}, Lextern/okio/Okio$3;-><init>()V

    return-object v0
.end method

.method public static buffer(Lextern/okio/Sink;)Lextern/okio/BufferedSink;
    .locals 1
    .param p0, "sink"    # Lextern/okio/Sink;

    .prologue
    .line 55
    new-instance v0, Lextern/okio/RealBufferedSink;

    invoke-direct {v0, p0}, Lextern/okio/RealBufferedSink;-><init>(Lextern/okio/Sink;)V

    return-object v0
.end method

.method public static buffer(Lextern/okio/Source;)Lextern/okio/BufferedSource;
    .locals 1
    .param p0, "source"    # Lextern/okio/Source;

    .prologue
    .line 46
    new-instance v0, Lextern/okio/RealBufferedSource;

    invoke-direct {v0, p0}, Lextern/okio/RealBufferedSource;-><init>(Lextern/okio/Source;)V

    return-object v0
.end method

.method static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/AssertionError;

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sink(Ljava/io/File;)Lextern/okio/Sink;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lextern/okio/Okio;->sink(Ljava/io/OutputStream;)Lextern/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static sink(Ljava/io/OutputStream;)Lextern/okio/Sink;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 60
    new-instance v0, Lextern/okio/Timeout;

    invoke-direct {v0}, Lextern/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lextern/okio/Okio;->sink(Ljava/io/OutputStream;Lextern/okio/Timeout;)Lextern/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method private static sink(Ljava/io/OutputStream;Lextern/okio/Timeout;)Lextern/okio/Sink;
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "timeout"    # Lextern/okio/Timeout;

    .prologue
    .line 64
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    new-instance v0, Lextern/okio/Okio$1;

    invoke-direct {v0, p1, p0}, Lextern/okio/Okio$1;-><init>(Lextern/okio/Timeout;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static sink(Ljava/net/Socket;)Lextern/okio/Sink;
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "socket == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_0
    invoke-static {p0}, Lextern/okio/Okio;->timeout(Ljava/net/Socket;)Lextern/okio/AsyncTimeout;

    move-result-object v1

    .line 113
    .local v1, "timeout":Lextern/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lextern/okio/Okio;->sink(Ljava/io/OutputStream;Lextern/okio/Timeout;)Lextern/okio/Sink;

    move-result-object v0

    .line 114
    .local v0, "sink":Lextern/okio/Sink;
    invoke-virtual {v1, v0}, Lextern/okio/AsyncTimeout;->sink(Lextern/okio/Sink;)Lextern/okio/Sink;

    move-result-object v2

    return-object v2
.end method

.method public static source(Ljava/io/File;)Lextern/okio/Source;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 161
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lextern/okio/Okio;->source(Ljava/io/InputStream;)Lextern/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/InputStream;)Lextern/okio/Source;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 119
    new-instance v0, Lextern/okio/Timeout;

    invoke-direct {v0}, Lextern/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lextern/okio/Okio;->source(Ljava/io/InputStream;Lextern/okio/Timeout;)Lextern/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method private static source(Ljava/io/InputStream;Lextern/okio/Timeout;)Lextern/okio/Source;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "timeout"    # Lextern/okio/Timeout;

    .prologue
    .line 123
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    new-instance v0, Lextern/okio/Okio$2;

    invoke-direct {v0, p1, p0}, Lextern/okio/Okio$2;-><init>(Lextern/okio/Timeout;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static source(Ljava/net/Socket;)Lextern/okio/Source;
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "socket == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_0
    invoke-static {p0}, Lextern/okio/Okio;->timeout(Ljava/net/Socket;)Lextern/okio/AsyncTimeout;

    move-result-object v1

    .line 202
    .local v1, "timeout":Lextern/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lextern/okio/Okio;->source(Ljava/io/InputStream;Lextern/okio/Timeout;)Lextern/okio/Source;

    move-result-object v0

    .line 203
    .local v0, "source":Lextern/okio/Source;
    invoke-virtual {v1, v0}, Lextern/okio/AsyncTimeout;->source(Lextern/okio/Source;)Lextern/okio/Source;

    move-result-object v2

    return-object v2
.end method

.method private static timeout(Ljava/net/Socket;)Lextern/okio/AsyncTimeout;
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 207
    new-instance v0, Lextern/okio/Okio$4;

    invoke-direct {v0, p0}, Lextern/okio/Okio$4;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
