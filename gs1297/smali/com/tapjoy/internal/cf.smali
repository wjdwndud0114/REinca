.class public abstract Lcom/tapjoy/internal/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/concurrent/ExecutorService;

.field public static b:Lcom/tapjoy/internal/ci;


# instance fields
.field private c:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URI;Ljava/io/InputStream;)Ljava/lang/Object;
.end method

.method public a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/tapjoy/internal/ck;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    .line 2051
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/cf;->c:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/cf;->c:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 86
    :goto_0
    const-string v1, "Call has not completed"

    .line 2144
    if-nez v0, :cond_2

    .line 2145
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2051
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_2
    :try_start_1
    new-instance v0, Lcom/tapjoy/internal/ch;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/ch;-><init>(Lcom/tapjoy/internal/cf;Lcom/tapjoy/internal/ck;)V

    .line 88
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/cf;->c:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit p0

    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1100
    sget-object v0, Lcom/tapjoy/internal/cf;->b:Lcom/tapjoy/internal/ci;

    .line 36
    invoke-interface {v0, p0}, Lcom/tapjoy/internal/ci;->a(Lcom/tapjoy/internal/cf;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
