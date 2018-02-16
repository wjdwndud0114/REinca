.class public final Lextern/okhttp3/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final UTC:Ljava/util/TimeZone;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    new-array v0, v1, [B

    sput-object v0, Lextern/okhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 47
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lextern/okhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 50
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 53
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    .line 65
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 4
    .param p0, "arrayLength"    # J
    .param p2, "offset"    # J
    .param p4, "count"    # J

    .prologue
    .line 72
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 75
    :cond_1
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 87
    if-eqz p0, :cond_0

    .line 89
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 92
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 2
    .param p0, "serverSocket"    # Ljava/net/ServerSocket;

    .prologue
    .line 119
    if-eqz p0, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 124
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 102
    if-eqz p0, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lextern/okhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v2

    if-nez v2, :cond_0

    throw v0

    .line 107
    .end local v0    # "e":Ljava/lang/AssertionError;
    :catch_1
    move-exception v1

    .line 108
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1

    .line 109
    .end local v1    # "rethrown":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 307
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 308
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 310
    return-object v0
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 5
    .param p0, "hostnameAscii"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 405
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 406
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 410
    .local v0, "c":C
    const/16 v3, 0x1f

    if-le v0, v3, :cond_0

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_1

    .line 420
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v2

    .line 416
    .restart local v0    # "c":C
    :cond_1
    const-string v3, " #%/:?@[\\]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiter"    # C

    .prologue
    .line 376
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 377
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    .line 379
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 376
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 379
    goto :goto_1
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiters"    # Ljava/lang/String;

    .prologue
    .line 365
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 366
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 368
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 365
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 368
    goto :goto_1
.end method

.method public static discard(Lextern/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p0, "source"    # Lextern/okio/Source;
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 136
    :try_start_0
    invoke-static {p0, p1, p2}, Lextern/okhttp3/internal/Util;->skipAll(Lextern/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 390
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 400
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 394
    .restart local v1    # "result":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lextern/okhttp3/internal/Util;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 395
    goto :goto_0

    .line 399
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-object v1, v2

    .line 400
    goto :goto_0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 79
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 430
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hostHeader(Lextern/okhttp3/HttpUrl;Z)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Lextern/okhttp3/HttpUrl;
    .param p1, "includeDefaultPort"    # Z

    .prologue
    .line 265
    invoke-virtual {p0}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "host":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lextern/okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p0}, Lextern/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lextern/okhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lextern/okhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 265
    :cond_2
    invoke-virtual {p0}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 301
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lextern/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 300
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "first":[Ljava/lang/Object;, "[TT;"
    .local p1, "second":[Ljava/lang/Object;, "[TT;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, v1, v5

    .line 254
    .local v0, "a":Ljava/lang/Object;, "TT;"
    move-object v2, p1

    .local v2, "arr$":[Ljava/lang/Object;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v3, v2, v4

    .line 255
    .local v3, "b":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 256
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v3    # "b":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 254
    .end local v5    # "i$":I
    .restart local v3    # "b":Ljava/lang/Object;, "TT;"
    .restart local v4    # "i$":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "a":Ljava/lang/Object;, "TT;"
    .end local v2    # "arr$":[Ljava/lang/Object;
    .end local v3    # "b":Ljava/lang/Object;, "TT;"
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .restart local v5    # "i$":I
    :cond_2
    return-object v8
.end method

.method public static intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "first":[Ljava/lang/Object;, "[TT;"
    .local p2, "second":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2}, Lextern/okhttp3/internal/Util;->intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 244
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/AssertionError;

    .prologue
    .line 295
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

.method public static md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 172
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 173
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 174
    .local v1, "md5bytes":[B
    invoke-static {v1}, Lextern/okio/ByteString;->of([B)Lextern/okio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okio/ByteString;->hex()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 175
    .end local v1    # "md5bytes":[B
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 177
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static sha1(Lextern/okio/ByteString;)Lextern/okio/ByteString;
    .locals 4
    .param p0, "s"    # Lextern/okio/ByteString;

    .prologue
    .line 198
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 199
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Lextern/okio/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 200
    .local v2, "sha1Bytes":[B
    invoke-static {v2}, Lextern/okio/ByteString;->of([B)Lextern/okio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 201
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "sha1Bytes":[B
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static sha256(Lextern/okio/ByteString;)Lextern/okio/ByteString;
    .locals 4
    .param p0, "s"    # Lextern/okio/ByteString;

    .prologue
    .line 209
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 210
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Lextern/okio/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 211
    .local v2, "sha1Bytes":[B
    invoke-static {v2}, Lextern/okio/ByteString;->of([B)Lextern/okio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 212
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "sha1Bytes":[B
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static shaBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 185
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 186
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 187
    .local v2, "sha1Bytes":[B
    invoke-static {v2}, Lextern/okio/ByteString;->of([B)Lextern/okio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okio/ByteString;->base64()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 188
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "sha1Bytes":[B
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 190
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static skipAll(Lextern/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .param p0, "source"    # Lextern/okio/Source;
    .param p1, "duration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    .line 147
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 148
    .local v2, "now":J
    invoke-interface {p0}, Lextern/okio/Source;->timeout()Lextern/okio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lextern/okio/Timeout;->hasDeadline()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {p0}, Lextern/okio/Source;->timeout()Lextern/okio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lextern/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 151
    .local v4, "originalDuration":J
    :goto_0
    invoke-interface {p0}, Lextern/okio/Source;->timeout()Lextern/okio/Timeout;

    move-result-object v8

    int-to-long v10, p1

    invoke-virtual {p2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long/2addr v10, v2

    invoke-virtual {v8, v10, v11}, Lextern/okio/Timeout;->deadlineNanoTime(J)Lextern/okio/Timeout;

    .line 153
    :try_start_0
    new-instance v1, Lextern/okio/Buffer;

    invoke-direct {v1}, Lextern/okio/Buffer;-><init>()V

    .line 154
    .local v1, "skipBuffer":Lextern/okio/Buffer;
    :goto_1
    const-wide/16 v8, 0x2000

    invoke-interface {p0, v1, v8, v9}, Lextern/okio/Source;->read(Lextern/okio/Buffer;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 155
    invoke-virtual {v1}, Lextern/okio/Buffer;->clear()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 158
    .end local v1    # "skipBuffer":Lextern/okio/Buffer;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/InterruptedIOException;
    const/4 v8, 0x0

    .line 161
    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    .line 162
    invoke-interface {p0}, Lextern/okio/Source;->timeout()Lextern/okio/Timeout;

    move-result-object v6

    invoke-virtual {v6}, Lextern/okio/Timeout;->clearDeadline()Lextern/okio/Timeout;

    :goto_2
    move v6, v8

    .line 164
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :goto_3
    return v6

    .end local v4    # "originalDuration":J
    :cond_0
    move-wide v4, v6

    .line 148
    goto :goto_0

    .line 157
    .restart local v1    # "skipBuffer":Lextern/okio/Buffer;
    .restart local v4    # "originalDuration":J
    :cond_1
    const/4 v8, 0x1

    .line 161
    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 162
    invoke-interface {p0}, Lextern/okio/Source;->timeout()Lextern/okio/Timeout;

    move-result-object v6

    invoke-virtual {v6}, Lextern/okio/Timeout;->clearDeadline()Lextern/okio/Timeout;

    :goto_4
    move v6, v8

    .line 164
    goto :goto_3

    :cond_2
    invoke-interface {p0}, Lextern/okio/Source;->timeout()Lextern/okio/Timeout;

    move-result-object v6

    add-long v10, v2, v4

    invoke-virtual {v6, v10, v11}, Lextern/okio/Timeout;->deadlineNanoTime(J)Lextern/okio/Timeout;

    goto :goto_4

    .end local v1    # "skipBuffer":Lextern/okio/Buffer;
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_3
    invoke-interface {p0}, Lextern/okio/Source;->timeout()Lextern/okio/Timeout;

    move-result-object v6

    add-long v10, v2, v4

    invoke-virtual {v6, v10, v11}, Lextern/okio/Timeout;->deadlineNanoTime(J)Lextern/okio/Timeout;

    goto :goto_2

    .line 161
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v8

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    .line 162
    invoke-interface {p0}, Lextern/okio/Source;->timeout()Lextern/okio/Timeout;

    move-result-object v6

    invoke-virtual {v6}, Lextern/okio/Timeout;->clearDeadline()Lextern/okio/Timeout;

    .line 164
    :goto_5
    throw v8

    :cond_4
    invoke-interface {p0}, Lextern/okio/Source;->timeout()Lextern/okio/Timeout;

    move-result-object v6

    add-long v10, v2, v4

    invoke-virtual {v6, v10, v11}, Lextern/okio/Timeout;->deadlineNanoTime(J)Lextern/okio/Timeout;

    goto :goto_5
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 318
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 319
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 330
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 318
    .restart local v0    # "i":I
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 330
    goto :goto_1

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 338
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 339
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 347
    add-int/lit8 p1, v0, 0x1

    .line 350
    .end local p1    # "pos":I
    :cond_0
    return p1

    .line 338
    .restart local p1    # "pos":I
    :sswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 339
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z

    .prologue
    .line 228
    new-instance v0, Lextern/okhttp3/internal/Util$1;

    invoke-direct {v0, p0, p1}, Lextern/okhttp3/internal/Util$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x7f

    const/16 v6, 0x1f

    .line 275
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "length":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 276
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 277
    .local v1, "c":I
    if-le v1, v6, :cond_0

    if-ge v1, v7, :cond_0

    .line 275
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Lextern/okio/Buffer;

    invoke-direct {v0}, Lextern/okio/Buffer;-><init>()V

    .line 280
    .local v0, "buffer":Lextern/okio/Buffer;
    const/4 v5, 0x0

    invoke-virtual {v0, p0, v5, v2}, Lextern/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lextern/okio/Buffer;

    .line 281
    move v3, v2

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 282
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 283
    if-le v1, v6, :cond_1

    if-ge v1, v7, :cond_1

    move v5, v1

    :goto_2
    invoke-virtual {v0, v5}, Lextern/okio/Buffer;->writeUtf8CodePoint(I)Lextern/okio/Buffer;

    .line 281
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1

    .line 283
    :cond_1
    const/16 v5, 0x3f

    goto :goto_2

    .line 285
    :cond_2
    invoke-virtual {v0}, Lextern/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    .line 287
    .end local v0    # "buffer":Lextern/okio/Buffer;
    .end local v1    # "c":I
    .end local v3    # "j":I
    .end local p0    # "s":Ljava/lang/String;
    :cond_3
    return-object p0
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 355
    invoke-static {p0, p1, p2}, Lextern/okhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v1

    .line 356
    .local v1, "start":I
    invoke-static {p0, v1, p2}, Lextern/okhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v0

    .line 357
    .local v0, "end":I
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 425
    sget-object v0, Lextern/okhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
