.class public final Lcom/tapjoy/internal/gl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Flushable;


# instance fields
.field final a:Ljava/lang/Object;

.field b:Lcom/tapjoy/internal/bc;

.field private final c:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/tapjoy/internal/gl;->c:Ljava/io/File;

    .line 29
    iput-object p0, p0, Lcom/tapjoy/internal/gl;->a:Ljava/lang/Object;

    .line 31
    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/gl$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gl$1;-><init>(Lcom/tapjoy/internal/gl;)V

    .line 43
    new-instance v1, Lcom/tapjoy/internal/i;

    invoke-direct {v1, p1, v0}, Lcom/tapjoy/internal/i;-><init>(Ljava/io/File;Lcom/tapjoy/internal/bi;)V

    .line 44
    invoke-static {v1}, Lcom/tapjoy/internal/az;->a(Lcom/tapjoy/internal/bc;)Lcom/tapjoy/internal/az;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl;->b:Lcom/tapjoy/internal/bc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl;->a()V

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 53
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Lcom/tapjoy/internal/bc;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Lcom/tapjoy/internal/bc;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    new-instance v0, Lcom/tapjoy/internal/ba;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/ba;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gl;->b:Lcom/tapjoy/internal/bc;

    .line 62
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/tapjoy/internal/gl;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Lcom/tapjoy/internal/bc;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bc;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 104
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl;->a()V

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/tapjoy/internal/gl;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Lcom/tapjoy/internal/bc;

    invoke-interface {v0}, Lcom/tapjoy/internal/bc;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    monitor-exit v1

    .line 83
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl;->a()V

    .line 83
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(I)Lcom/tapjoy/internal/dy;
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/tapjoy/internal/gl;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Lcom/tapjoy/internal/bc;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bc;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    .line 116
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl;->a()V

    .line 116
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lcom/tapjoy/internal/gl;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Lcom/tapjoy/internal/bc;

    invoke-interface {v0}, Lcom/tapjoy/internal/bc;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    monitor-exit v1

    .line 94
    :goto_0
    return v0

    .line 93
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl;->a()V

    .line 94
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final flush()V
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/tapjoy/internal/gl;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Lcom/tapjoy/internal/bc;

    instance-of v0, v0, Ljava/io/Flushable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Lcom/tapjoy/internal/bc;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 71
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl;->a()V

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
