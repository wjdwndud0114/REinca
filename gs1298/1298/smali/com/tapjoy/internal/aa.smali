.class public final Lcom/tapjoy/internal/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/tapjoy/internal/bl;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/ct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    :goto_0
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-static {p1}, Lcom/tapjoy/internal/bl;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/tapjoy/internal/ct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 31
    if-nez v1, :cond_4

    .line 32
    if-nez v0, :cond_1

    .line 34
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    if-eqz p1, :cond_1

    .line 1128
    :try_start_0
    invoke-static {p1, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2128
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {p0, v0}, Lcom/tapjoy/internal/bl;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 43
    :goto_2
    invoke-static {p0}, Lcom/tapjoy/internal/bl;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    :cond_2
    :goto_3
    return-object v0

    :cond_3
    move-object v1, v0

    .line 25
    goto :goto_0

    .line 46
    :cond_4
    if-nez v0, :cond_5

    .line 48
    if-eqz p1, :cond_5

    .line 3128
    :try_start_2
    invoke-static {p1, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 3131
    goto :goto_3

    :catch_0
    move-exception v0

    :cond_5
    move-object v0, v1

    goto :goto_3

    .line 36
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method
