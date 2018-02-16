.class final Lcom/tapjoy/internal/gm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gm;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gm;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tapjoy/internal/gm$1;->a:Lcom/tapjoy/internal/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tapjoy/internal/gm$1;->a:Lcom/tapjoy/internal/gm;

    .line 1015
    iget-object v0, v0, Lcom/tapjoy/internal/gm;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "The session ended"

    invoke-static {v0}, Lcom/tapjoy/internal/fw;->a(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/tapjoy/internal/gm$1;->a:Lcom/tapjoy/internal/gm;

    .line 2015
    iget-object v0, v0, Lcom/tapjoy/internal/gm;->a:Lcom/tapjoy/internal/fy;

    .line 2102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/tapjoy/internal/fy;->c:J

    sub-long/2addr v2, v4

    .line 2103
    iget-object v1, v0, Lcom/tapjoy/internal/fy;->a:Lcom/tapjoy/internal/gc;

    .line 2440
    monitor-enter v1

    .line 2441
    :try_start_0
    iget-object v4, v1, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v4, v4, Lcom/tapjoy/internal/gj;->i:Lcom/tapjoy/internal/n;

    invoke-virtual {v4}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 2442
    iget-object v6, v1, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v6, v6, Lcom/tapjoy/internal/gj;->i:Lcom/tapjoy/internal/n;

    invoke-virtual {v6, v4, v5}, Lcom/tapjoy/internal/n;->a(J)V

    .line 2443
    iget-object v6, v1, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v6, Lcom/tapjoy/internal/ek$a;->i:Ljava/lang/Long;

    .line 2444
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2104
    sget-object v1, Lcom/tapjoy/internal/eb;->APP:Lcom/tapjoy/internal/eb;

    const-string v4, "session"

    invoke-virtual {v0, v1, v4}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;

    move-result-object v1

    .line 2105
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/tapjoy/internal/dy$a;->i:Ljava/lang/Long;

    .line 2106
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/dy$a;)V

    .line 2108
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/tapjoy/internal/fy;->c:J

    .line 2109
    iget-object v4, v0, Lcom/tapjoy/internal/fy;->a:Lcom/tapjoy/internal/gc;

    iget-object v1, v1, Lcom/tapjoy/internal/dy$a;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2448
    monitor-enter v4

    .line 2449
    :try_start_1
    iget-object v1, v4, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gj;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2450
    iget-object v5, v4, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v5, v5, Lcom/tapjoy/internal/gj;->j:Lcom/tapjoy/internal/n;

    invoke-virtual {v5, v1, v6, v7}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 2451
    iget-object v5, v4, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v5, v5, Lcom/tapjoy/internal/gj;->k:Lcom/tapjoy/internal/n;

    invoke-virtual {v5, v1, v2, v3}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 2452
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2454
    iget-object v1, v4, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v1, Lcom/tapjoy/internal/ek$a;->j:Ljava/lang/Long;

    .line 2455
    iget-object v1, v4, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/ek$a;->k:Ljava/lang/Long;

    .line 2456
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2110
    iget-object v0, v0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/fx;

    .line 3199
    iget-object v1, v0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/ci;

    if-eqz v1, :cond_0

    .line 3200
    invoke-virtual {v0}, Lcom/tapjoy/internal/fx;->a()V

    .line 3201
    new-instance v1, Lcom/tapjoy/internal/fx$1;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/fx$1;-><init>(Lcom/tapjoy/internal/fx;)V

    .line 3206
    invoke-virtual {v1}, Lcom/tapjoy/internal/fx$1;->run()V

    .line 3209
    :cond_0
    iget-object v0, v0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl;->flush()V

    .line 74
    sget-object v0, Lcom/tapjoy/internal/et;->d:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/et$a;->notifyObservers()V

    .line 76
    :cond_1
    return-void

    .line 2444
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2456
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
