.class public final Lcom/tapjoy/internal/fh;
.super Lcom/tapjoy/internal/fg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fh$a;
    }
.end annotation


# instance fields
.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/tapjoy/internal/fy;)V
    .locals 8

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/fg;-><init>(Ljava/io/File;Lcom/tapjoy/internal/fy;)V

    .line 22
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/tapjoy/internal/fh;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/fh;J)V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/tapjoy/internal/fg;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/fh;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 16
    invoke-super/range {p0 .. p5}, Lcom/tapjoy/internal/fg;->a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/tapjoy/internal/fh;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lcom/tapjoy/internal/fg;->a()V

    return-void
.end method

.method static synthetic c(Lcom/tapjoy/internal/fh;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lcom/tapjoy/internal/fg;->a()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 9

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fh;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tapjoy/internal/fh$a;

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/tapjoy/internal/fh$a;-><init>(Lcom/tapjoy/internal/fh;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final a(J)V
    .locals 9

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fh;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tapjoy/internal/fh$a;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/tapjoy/internal/fh$a;-><init>(Lcom/tapjoy/internal/fh;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fh;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tapjoy/internal/fh$a;

    const/4 v3, 0x3

    if-eqz p5, :cond_0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/tapjoy/internal/fh$a;-><init>(Lcom/tapjoy/internal/fh;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    return-void

    .line 95
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected final finalize()V
    .locals 4

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fh;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 30
    iget-object v0, p0, Lcom/tapjoy/internal/fh;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-super {p0}, Lcom/tapjoy/internal/fg;->finalize()V

    .line 33
    return-void

    .line 32
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/tapjoy/internal/fg;->finalize()V

    throw v0
.end method
