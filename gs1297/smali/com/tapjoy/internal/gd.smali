.class public final Lcom/tapjoy/internal/gd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/io/File;

    .line 16
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 23
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd;->b()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1063
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/tapjoy/internal/gd;->a:Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/bl;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd;->b()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1064
    :catch_0
    move-exception v1

    .line 1065
    :try_start_3
    iget-object v2, p0, Lcom/tapjoy/internal/gd;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1066
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    :catch_1
    move-exception v1

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gd;->a:Ljava/io/File;

    .line 2037
    sget-object v1, Lcom/tapjoy/internal/ap;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/bl;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    .line 58
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
