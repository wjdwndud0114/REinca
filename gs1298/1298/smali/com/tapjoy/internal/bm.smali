.class public final Lcom/tapjoy/internal/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bq;


# instance fields
.field private final a:Ljava/io/StringWriter;

.field private final b:Lcom/tapjoy/internal/by;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/bm;->a:Ljava/io/StringWriter;

    .line 18
    new-instance v0, Lcom/tapjoy/internal/by;

    iget-object v1, p0, Lcom/tapjoy/internal/bm;->a:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/by;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    .line 19
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/tapjoy/internal/bm;

    invoke-direct {v0}, Lcom/tapjoy/internal/bm;-><init>()V

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/Object;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Lcom/tapjoy/internal/bm;
    .locals 1

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/by;->a(Ljava/lang/Object;)Lcom/tapjoy/internal/by;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    return-object p0

    .line 201
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/bm;
    .locals 1

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    invoke-virtual {v0}, Lcom/tapjoy/internal/by;->a()Lcom/tapjoy/internal/by;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-object p0

    .line 57
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final a(J)Lcom/tapjoy/internal/bm;
    .locals 1

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/by;->a(J)Lcom/tapjoy/internal/by;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    return-object p0

    .line 177
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/tapjoy/internal/bq;)Lcom/tapjoy/internal/bm;
    .locals 1

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/by;->a(Lcom/tapjoy/internal/bq;)Lcom/tapjoy/internal/by;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-object p0

    .line 117
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;
    .locals 1

    .prologue
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/by;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/by;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return-object p0

    .line 189
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;
    .locals 1

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/by;->a(Ljava/lang/String;)Lcom/tapjoy/internal/by;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-object p0

    .line 105
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/util/Collection;)Lcom/tapjoy/internal/bm;
    .locals 1

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/by;->a(Ljava/util/Collection;)Lcom/tapjoy/internal/by;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-object p0

    .line 214
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/util/Map;)Lcom/tapjoy/internal/bm;
    .locals 1

    .prologue
    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/by;->a(Ljava/util/Map;)Lcom/tapjoy/internal/by;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    return-object p0

    .line 227
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    .line 2406
    iget-object v0, v0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 35
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->a:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-void

    .line 37
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final b()Lcom/tapjoy/internal/bm;
    .locals 1

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    invoke-virtual {v0}, Lcom/tapjoy/internal/by;->b()Lcom/tapjoy/internal/by;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-object p0

    .line 69
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;
    .locals 1

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/by;->b(Ljava/lang/String;)Lcom/tapjoy/internal/by;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return-object p0

    .line 129
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final c()Lcom/tapjoy/internal/bm;
    .locals 1

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    invoke-virtual {v0}, Lcom/tapjoy/internal/by;->c()Lcom/tapjoy/internal/by;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-object p0

    .line 81
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final d()Lcom/tapjoy/internal/bm;
    .locals 1

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    invoke-virtual {v0}, Lcom/tapjoy/internal/by;->d()Lcom/tapjoy/internal/by;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-object p0

    .line 93
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->b:Lcom/tapjoy/internal/by;

    .line 1406
    iget-object v0, v0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 25
    iget-object v0, p0, Lcom/tapjoy/internal/bm;->a:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 27
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
