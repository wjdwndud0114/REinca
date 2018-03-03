.class public final Lcom/tapjoy/internal/fx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/tapjoy/internal/gl;

.field b:Lcom/tapjoy/internal/ci;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Thread;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/tapjoy/internal/gl;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/gl;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    .line 65
    iget-object v0, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    iput-object v0, p0, Lcom/tapjoy/internal/fx;->c:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gl;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "5Rocks"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fx;->d:Ljava/lang/Thread;

    .line 69
    iget-object v0, p0, Lcom/tapjoy/internal/fx;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fx;->a(Z)V

    .line 196
    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, Lcom/tapjoy/internal/fx;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    iput-boolean p1, p0, Lcom/tapjoy/internal/fx;->e:Z

    .line 172
    iget-object v0, p0, Lcom/tapjoy/internal/fx;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 173
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 13

    .prologue
    const/16 v12, 0x64

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 76
    move v0, v1

    :goto_0
    move-wide v2, v6

    .line 79
    :cond_0
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/ci;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    invoke-virtual {v5}, Lcom/tapjoy/internal/gl;->b()I

    move-result v5

    if-lez v5, :cond_7

    cmp-long v5, v2, v6

    if-gtz v5, :cond_7

    .line 80
    iget-object v5, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    invoke-virtual {v5}, Lcom/tapjoy/internal/gl;->b()I

    move-result v5

    const/16 v8, 0x2710

    if-le v5, v8, :cond_1

    .line 81
    iget-object v5, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    iget-object v8, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    invoke-virtual {v8}, Lcom/tapjoy/internal/gl;->b()I

    move-result v8

    add-int/lit16 v8, v8, -0x2710

    invoke-virtual {v5, v8}, Lcom/tapjoy/internal/gl;->a(I)V

    .line 84
    :cond_1
    iget-object v5, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/tapjoy/internal/gl;->b(I)Lcom/tapjoy/internal/dy;

    move-result-object v5

    .line 85
    if-eqz v5, :cond_7

    .line 89
    iget-object v2, v5, Lcom/tapjoy/internal/dy;->w:Lcom/tapjoy/internal/ek;

    .line 90
    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/tapjoy/internal/ek;->G:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 91
    sget-object v2, Lcom/tapjoy/internal/gn;->c:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v8, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 94
    :cond_2
    invoke-static {}, Lcom/tapjoy/internal/y;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 95
    sget-object v2, Lcom/tapjoy/internal/gn;->b:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v8, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 98
    :cond_3
    iget-boolean v2, p0, Lcom/tapjoy/internal/fx;->e:Z

    if-nez v2, :cond_4

    iget-object v2, v5, Lcom/tapjoy/internal/dy;->n:Lcom/tapjoy/internal/eb;

    sget-object v3, Lcom/tapjoy/internal/eb;->APP:Lcom/tapjoy/internal/eb;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    .line 99
    invoke-virtual {v2}, Lcom/tapjoy/internal/gl;->b()I

    move-result v2

    if-ge v2, v12, :cond_4

    iget-object v2, v5, Lcom/tapjoy/internal/dy;->p:Ljava/lang/Long;

    .line 100
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-lez v2, :cond_5

    :cond_4
    move-wide v2, v6

    .line 109
    :goto_2
    cmp-long v8, v2, v6

    if-gtz v8, :cond_0

    .line 110
    new-instance v8, Lcom/tapjoy/internal/hk;

    invoke-direct {v8}, Lcom/tapjoy/internal/hk;-><init>()V

    .line 111
    invoke-virtual {v8, v5}, Lcom/tapjoy/internal/hk;->a(Lcom/tapjoy/internal/dy;)Z

    .line 112
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move v5, v1

    .line 113
    :goto_3
    if-ge v5, v12, :cond_6

    iget-object v9, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    invoke-virtual {v9}, Lcom/tapjoy/internal/gl;->b()I

    move-result v9

    if-ge v5, v9, :cond_6

    .line 114
    iget-object v9, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    invoke-virtual {v9, v5}, Lcom/tapjoy/internal/gl;->b(I)Lcom/tapjoy/internal/dy;

    move-result-object v9

    .line 115
    if-eqz v9, :cond_6

    invoke-virtual {v8, v9}, Lcom/tapjoy/internal/hk;->a(Lcom/tapjoy/internal/dy;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 118
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    .line 113
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 103
    :cond_5
    iget-object v2, v5, Lcom/tapjoy/internal/dy;->p:Ljava/lang/Long;

    .line 105
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v8, 0xea60

    add-long/2addr v2, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/32 v8, 0xea60

    .line 104
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v2

    goto :goto_2

    .line 122
    :cond_6
    add-int/lit8 v5, v0, 0x1

    .line 123
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v8}, Lcom/tapjoy/internal/hk;->g()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v9

    .line 124
    iget-object v0, p0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/ci;

    invoke-interface {v0, v8}, Lcom/tapjoy/internal/ci;->a(Lcom/tapjoy/internal/cf;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    invoke-virtual {v8}, Lcom/tapjoy/internal/hk;->g()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/tapjoy/internal/gl;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v8}, Lcom/tapjoy/internal/hk;->g()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v4

    .line 131
    goto/16 :goto_1

    .line 128
    :catch_0
    move-exception v0

    move-object v2, v0

    move v0, v5

    .line 129
    :goto_4
    const/4 v3, 0x2

    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v8}, Lcom/tapjoy/internal/hk;->g()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    const/4 v5, 0x1

    aput-object v2, v3, v5

    .line 130
    const-wide/32 v2, 0x493e0

    goto/16 :goto_1

    .line 135
    :cond_7
    iget-object v5, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    invoke-virtual {v5}, Lcom/tapjoy/internal/gl;->flush()V

    .line 1146
    cmp-long v5, v2, v6

    if-lez v5, :cond_8

    .line 1147
    iget-object v5, p0, Lcom/tapjoy/internal/fx;->c:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1148
    const/4 v8, 0x0

    :try_start_4
    iput-boolean v8, p0, Lcom/tapjoy/internal/fx;->e:Z

    .line 1149
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1150
    iget-object v8, p0, Lcom/tapjoy/internal/fx;->c:Ljava/lang/Object;

    invoke-virtual {v8, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1152
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 142
    :catch_1
    move-exception v0

    .line 143
    :goto_5
    return-void

    .line 1154
    :cond_8
    iget-object v2, p0, Lcom/tapjoy/internal/fx;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1155
    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, p0, Lcom/tapjoy/internal/fx;->e:Z

    .line 1156
    iget-object v3, p0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/ci;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl;->c()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1162
    :cond_9
    iget-object v3, p0, Lcom/tapjoy/internal/fx;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 1165
    :cond_a
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 143
    :catch_2
    move-exception v0

    goto :goto_5

    .line 128
    :catch_3
    move-exception v0

    move-object v2, v0

    move v0, v4

    goto :goto_4
.end method
